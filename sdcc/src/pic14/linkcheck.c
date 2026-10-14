/*-------------------------------------------------------------------------

  linkcheck.c - whole-program checks before gplink runs

  pic14 has no data stack: locals and parameters are static, registers
  are shared along the call tree, and return addresses go on an 8- or
  16-level hardware stack. A program that recurses, nests calls too
  deeply, or calls a function from both the interrupt handler and main
  code assembles and links without complaint, then fails at run time.
  This pass reads the COFF objects and the library members they pull in,
  builds the call graph and reports such programs as errors, together
  with functions and variables that cannot fit a code page or RAM bank.

   This program is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
-------------------------------------------------------------------------*/

#include "common.h"
#include "dbuf_string.h"
#include "device.h"
#include "linkcheck.h"

/* Microchip COFF, as written by gpasm */
#define COFF_MAGIC_V1   0x1234
#define COFF_MAGIC_V2   0x1240
#define FILHSZ          20
#define SCNHSZ          40
#define RELSZ           12

#define STYP_TEXT       0x0020
#define STYP_DATA       0x0040
#define STYP_BSS        0x0080
#define STYP_ABS        0x1000
#define STYP_OVERLAY    0x4000

#define C_EXT           2
#define C_STAT          3
#define C_LABEL         6

#define RELOC_CALL      1
#define RELOC_GOTO      2
#define RELOC_HIGH      3
#define RELOC_LOW       4
#define RELOC_ALL       8
#define RELOC_UPPER     21

#define OP_MOVWF_PCL    0x0082  /* the jump of an indirect call */

#define AR_MAGIC        "!<arch>\n"
#define AR_HDRSZ        280     /* gplib: name[256], date[12], size[10], fmag[2] */

typedef struct lcObj lcObj;
typedef struct lcSect lcSect;

typedef struct lcSym
{
  char *name;
  unsigned value;               /* word address within its section */
  int scn;                      /* 1-based section, 0 undefined */
  int sclass;
  lcObj *obj;
} lcSym;

typedef struct lcEdge
{
  lcSect *to;
  int call;                     /* 1: CALL (one stack level), 0: GOTO */
} lcEdge;

struct lcSect
{
  char *name;
  unsigned size;                /* bytes */
  unsigned flags;
  unsigned char *data;
  unsigned relptr;
  unsigned nreloc;
  lcObj *obj;

  lcEdge *edges;
  int nedges, maxedges;
  lcSym **ram;                  /* compiler-private RAM it uses (locals, parameters) */
  int nram, maxram;
  int addrTaken;
  int localCalls;

  /* traversal */
  int color;
  int depth;
  int depthKnown;
  lcEdge *deepest;
  lcSect *parent;
  int fromMain, fromIsr;
  int mark;
};

struct lcObj
{
  char *name;
  unsigned char *image;
  unsigned size;
  int nsects;
  lcSect *sects;
  int nsyms;
  lcSym *syms;                  /* aux entries have a NULL name */
  int included;
  lcObj *next;
};

/* string -> pointer map */
typedef struct
{
  char **keys;
  void **vals;
  unsigned cap, n;
} lcMap;

static unsigned
lcHash (const char *s)
{
  unsigned h = 5381;
  while (*s)
    h = h * 33 + (unsigned char) *s++;
  return h;
}

static void *
mapGet (lcMap *m, const char *key)
{
  unsigned i;
  if (!m->cap)
    return NULL;
  for (i = lcHash (key) & (m->cap - 1); m->keys[i]; i = (i + 1) & (m->cap - 1))
    if (!strcmp (m->keys[i], key))
      return m->vals[i];
  return NULL;
}

static void
mapPut (lcMap *m, char *key, void *val)
{
  unsigned i;
  if (2 * (m->n + 1) > m->cap)
    {
      lcMap old = *m;
      unsigned j;
      m->cap = old.cap ? 2 * old.cap : 256;
      m->keys = Safe_calloc (m->cap, sizeof (char *));
      m->vals = Safe_calloc (m->cap, sizeof (void *));
      m->n = 0;
      for (j = 0; j < old.cap; j++)
        if (old.keys[j])
          mapPut (m, old.keys[j], old.vals[j]);
      Safe_free (old.keys);
      Safe_free (old.vals);
    }
  for (i = lcHash (key) & (m->cap - 1); m->keys[i]; i = (i + 1) & (m->cap - 1))
    if (!strcmp (m->keys[i], key))
      return;                   /* first definition wins */
  m->keys[i] = key;
  m->vals[i] = val;
  m->n++;
}

static void
mapFree (lcMap *m)
{
  Safe_free (m->keys);
  Safe_free (m->vals);
  memset (m, 0, sizeof *m);
}

static lcObj *allObjs;
static lcObj **lastObj = &allObjs;
static lcMap globals;           /* defined external symbol -> lcSym, included objects */
static lcSect indirect;         /* stands for every function whose address is taken */

static unsigned
rd16 (const unsigned char *p)
{
  return p[0] | (p[1] << 8);
}

static unsigned
rd32 (const unsigned char *p)
{
  return p[0] | (p[1] << 8) | (p[2] << 16) | ((unsigned) p[3] << 24);
}

static char *
coffName (const unsigned char *raw, const unsigned char *image, unsigned size, unsigned strtab)
{
  if (!rd32 (raw))
    {
      unsigned off = strtab + rd32 (raw + 4);
      if (off >= size)
        return Safe_strdup ("?");
      return Safe_strndup ((const char *) image + off, strnlen ((const char *) image + off, size - off));
    }
  return Safe_strndup ((const char *) raw, strnlen ((const char *) raw, 8));
}

/* Parse one COFF image; returns NULL if it is not one. */
static lcObj *
readCoff (const char *name, unsigned char *image, unsigned size)
{
  unsigned magic, nscns, symptr, nsyms, opthdr, symsz, strtab;
  lcObj *obj;
  unsigned i;

  if (size < FILHSZ)
    return NULL;
  magic = rd16 (image);
  if (magic != COFF_MAGIC_V1 && magic != COFF_MAGIC_V2)
    return NULL;
  nscns = rd16 (image + 2);
  symptr = rd32 (image + 8);
  nsyms = rd32 (image + 12);
  opthdr = rd16 (image + 16);
  symsz = magic == COFF_MAGIC_V2 ? 20 : 18;
  strtab = symptr + nsyms * symsz;
  if (strtab > size || FILHSZ + opthdr + nscns * SCNHSZ > size)
    return NULL;

  obj = Safe_alloc (sizeof (lcObj));
  obj->name = Safe_strdup (name);
  obj->image = image;
  obj->size = size;
  obj->nsects = nscns;
  obj->sects = Safe_calloc (nscns ? nscns : 1, sizeof (lcSect));
  for (i = 0; i < nscns; i++)
    {
      const unsigned char *h = image + FILHSZ + opthdr + i * SCNHSZ;
      lcSect *s = &obj->sects[i];
      unsigned scnptr = rd32 (h + 20);

      s->name = coffName (h, image, size, strtab);
      s->size = rd32 (h + 16);
      s->relptr = rd32 (h + 24);
      s->nreloc = rd16 (h + 32);
      s->flags = rd32 (h + 36);
      s->data = (scnptr && scnptr + s->size <= size) ? image + scnptr : NULL;
      if (s->relptr + s->nreloc * RELSZ > size)
        s->nreloc = 0;
      s->obj = obj;
    }

  obj->nsyms = nsyms;
  obj->syms = Safe_calloc (nsyms ? nsyms : 1, sizeof (lcSym));
  for (i = 0; i < nsyms; i++)
    {
      const unsigned char *e = image + symptr + i * symsz;
      lcSym *sym = &obj->syms[i];
      int naux;

      sym->name = coffName (e, image, size, strtab);
      sym->value = rd32 (e + 8);
      sym->scn = (short) rd16 (e + 12);
      if (magic == COFF_MAGIC_V2)
        {
          sym->sclass = (signed char) e[18];
          naux = (signed char) e[19];
        }
      else
        {
          sym->sclass = (signed char) e[16];
          naux = (signed char) e[17];
        }
      sym->obj = obj;
      if (sym->scn > (int) nscns)
        sym->scn = 0;
      for (; naux > 0 && i + 1 < nsyms; naux--)
        i++;                    /* aux entries stay zeroed */
    }

  *lastObj = obj;
  lastObj = &obj->next;
  return obj;
}

static unsigned char *
readFile (const char *path, unsigned *size)
{
  FILE *f = fopen (path, "rb");
  unsigned char *buf;
  long len;

  if (!f)
    return NULL;
  if (fseek (f, 0, SEEK_END) || (len = ftell (f)) < 0 || fseek (f, 0, SEEK_SET))
    {
      fclose (f);
      return NULL;
    }
  buf = Safe_alloc (len + 1);
  if (fread (buf, 1, len, f) != (size_t) len)
    {
      fclose (f);
      Safe_free (buf);
      return NULL;
    }
  fclose (f);
  *size = len;
  return buf;
}

/* Library members: every COFF member of a gplib archive. */
static void
readArchive (const char *path, unsigned char *image, unsigned size)
{
  unsigned off = strlen (AR_MAGIC);

  while (off + AR_HDRSZ <= size)
    {
      const unsigned char *h = image + off;
      unsigned msize = 0;
      int i;

      for (i = 268; i < 278 && h[i] >= '0' && h[i] <= '9'; i++)
        msize = msize * 10 + (h[i] - '0');
      off += AR_HDRSZ;
      if (off + msize > size)
        break;
      if (h[0] != '/')
        {
          struct dbuf_s dbuf;
          char *member = Safe_strndup ((const char *) h, strnlen ((const char *) h, 256));
          char *p = member + strlen (member);

          while (p > member && (p[-1] == ' ' || p[-1] == '/'))
            *--p = '\0';
          dbuf_init (&dbuf, 64);
          dbuf_printf (&dbuf, "%s(%s)", path, member);
          readCoff (dbuf_c_str (&dbuf), image + off, msize);
          dbuf_destroy (&dbuf);
          Safe_free (member);
        }
      off += msize;
    }
}

static void
include (lcObj *obj)
{
  int i;

  obj->included = 1;
  for (i = 0; i < obj->nsyms; i++)
    {
      lcSym *sym = &obj->syms[i];
      if (sym->name && sym->sclass == C_EXT && sym->scn > 0)
        mapPut (&globals, sym->name, sym);
    }
}

/* Pull in the library members that define symbols still undefined,
   as gplink does, until nothing changes. */
static void
resolveLibraries (lcMap *libdefs)
{
  int changed;

  do
    {
      lcObj *obj;
      changed = 0;
      for (obj = allObjs; obj; obj = obj->next)
        {
          int i;
          if (!obj->included)
            continue;
          for (i = 0; i < obj->nsyms; i++)
            {
              lcSym *sym = &obj->syms[i];
              lcObj *member;
              if (!sym->name || sym->sclass != C_EXT || sym->scn != 0 || mapGet (&globals, sym->name))
                continue;
              member = mapGet (libdefs, sym->name);
              if (member && !member->included)
                {
                  include (member);
                  changed = 1;
                }
            }
        }
    }
  while (changed);
}

static lcSym *
resolve (lcObj *obj, lcSym *sym)
{
  if (sym->scn > 0)
    return sym;
  return sym->name ? mapGet (&globals, sym->name) : NULL;
}

static lcSect *
symSect (lcSym *sym)
{
  return (sym && sym->scn > 0) ? &sym->obj->sects[sym->scn - 1] : NULL;
}

static int
isCode (const lcSect *s)
{
  return (s->flags & STYP_TEXT) != 0;
}

static int
isRam (const lcSect *s)
{
  return (s->flags & (STYP_DATA | STYP_BSS)) != 0;
}

static int
isConstData (const lcSect *s)
{
  return !strncmp (s->name, "IDC_", 4);
}

static void
addEdge (lcSect *from, lcSect *to, int call)
{
  int i;
  for (i = 0; i < from->nedges; i++)
    if (from->edges[i].to == to)
      {
        from->edges[i].call |= call;
        return;
      }
  if (from->nedges == from->maxedges)
    {
      from->maxedges = from->maxedges ? 2 * from->maxedges : 8;
      from->edges = Safe_realloc (from->edges, from->maxedges * sizeof (lcEdge));
    }
  from->edges[from->nedges].to = to;
  from->edges[from->nedges].call = call;
  from->nedges++;
}

static void
addRam (lcSect *s, lcSym *sym)
{
  int i;
  for (i = 0; i < s->nram; i++)
    if (s->ram[i] == sym)
      return;
  if (s->nram == s->maxram)
    {
      s->maxram = s->maxram ? 2 * s->maxram : 8;
      s->ram = Safe_realloc (s->ram, s->maxram * sizeof (lcSym *));
    }
  s->ram[s->nram++] = sym;
}

/* Storage the compiler gives a function for itself: locals and
   temporaries (UDL_ sections), parameters passed in memory, and the
   variable-argument area. */
static int
isPrivateRam (const lcSym *sym)
{
  const lcSect *s = symSect ((lcSym *) sym);
  return s && isRam (s)
         && (!strncmp (s->name, "UDL_", 4) || !strncmp (s->name, "VA", 2) || strstr (sym->name, "_PARM_"));
}

/* Is <sym> an entry point of function section <s>?  Global and static
   symbols are; so is a static function's own label, which is the
   symbol the section is named after ("S_<module>_" + symbol), with or
   without its "_ind" suffix. */
static int
isEntry (const lcSect *s, const lcSym *sym)
{
  size_t slen, nlen;

  if (sym->sclass == C_EXT || sym->sclass == C_STAT)
    return 1;
  if (sym->sclass != C_LABEL || strncmp (s->name, "S_", 2))
    return 0;
  slen = strlen (s->name);
  nlen = strlen (sym->name);
  if (nlen > 4 && !strcmp (sym->name + nlen - 4, "_ind"))
    nlen -= 4;
  return slen > nlen && s->name[slen - nlen - 1] == '_' && !strncmp (s->name + slen - nlen, sym->name, nlen);
}

static int
isLocal (const lcSym *sym)
{
  const lcSect *s = symSect ((lcSym *) sym);
  return s && !strncmp (s->name, "UDL_", 4);
}

/* Does the code at word <w> of <s> end in the jump of an indirect call? */
static int
isIndirectTrampoline (const lcSect *s, unsigned w)
{
  unsigned i;
  if (!s->data)
    return 0;
  for (i = 0; i < 16 && 2 * (w + i) + 1 < s->size; i++)
    if (rd16 (s->data + 2 * (w + i)) == OP_MOVWF_PCL)
      return 1;
  return 0;
}

static void
buildGraph (void)
{
  lcObj *obj;

  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        {
          lcSect *s = &obj->sects[i];
          unsigned r;
          for (r = 0; r < s->nreloc; r++)
            {
              const unsigned char *rel = obj->image + s->relptr + r * RELSZ;
              unsigned symndx = rd32 (rel + 4);
              unsigned type = rd16 (rel + 10);
              lcSym *sym, *def;
              lcSect *t;

              if (symndx >= (unsigned) obj->nsyms || !obj->syms[symndx].name)
                continue;
              sym = &obj->syms[symndx];
              def = resolve (obj, sym);
              t = symSect (def);
              if (!t)
                continue;

              if (isCode (s) && (type == RELOC_CALL || type == RELOC_GOTO) && isCode (t))
                {
                  if (t == s && !isEntry (t, def))
                    {
                      /* a call to a label of this function: an indirect
                         call's trampoline, or a local subroutine */
                      if (type == RELOC_CALL)
                        {
                          if (isIndirectTrampoline (s, def->value))
                            addEdge (s, &indirect, 1);
                          else
                            s->localCalls = 1;
                        }
                    }
                  else if (t != s || type == RELOC_CALL)
                    addEdge (s, t, type == RELOC_CALL);
                }
              else if ((type == RELOC_HIGH || type == RELOC_LOW || type == RELOC_ALL || type == RELOC_UPPER)
                       && isCode (t) && !isConstData (t) && isEntry (t, def))
                t->addrTaken = 1;
              else if (isCode (s) && isPrivateRam (def))
                addRam (s, def);
            }
        }
    }

  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        if (obj->sects[i].addrTaken)
          addEdge (&indirect, &obj->sects[i], 0);
    }
}

/* The name a user knows a section by: its function, without the
   leading underscore C names get. */
static const char *
sectName (const lcSect *s)
{
  const lcSym *best = NULL;
  int i;

  if (s == &indirect)
    return "(call through a function pointer)";
  if (!strcmp (s->name, "STARTUP"))
    return "(reset)";
  if (!strcmp (s->name, "c_interrupt"))
    return "(interrupt)";
  for (i = 0; i < s->obj->nsyms; i++)
    {
      const lcSym *sym = &s->obj->syms[i];
      size_t len;
      if (!sym->name || sym->scn <= 0 || &s->obj->sects[sym->scn - 1] != s || !isEntry (s, sym))
        continue;
      len = strlen (sym->name);
      if (len > 4 && !strcmp (sym->name + len - 4, "_ind"))
        continue;
      if (!best || sym->value < best->value)
        best = sym;
    }
  if (!best)
    return s->name;
  return best->name[0] == '_' ? best->name + 1 : best->name;
}

static void
appendPath (struct dbuf_s *dbuf, lcSect *from, lcSect *to)
{
  /* from->parent ... chain built by a search ending at <to> */
  lcSect *chain[256];
  int n = 0, i;
  lcSect *p;

  for (p = to; p && n < 256; p = p->parent)
    {
      chain[n++] = p;
      if (p == from)
        break;
    }
  for (i = n - 1; i >= 0; i--)
    {
      dbuf_append_str (dbuf, sectName (chain[i]));
      if (i)
        dbuf_append_str (dbuf, " -> ");
    }
}

static int nerrors;

/* Recursion: any cycle in the call graph. */
static void
findCycles (lcSect *s, lcSect **stack, int depth)
{
  int i;

  s->color = 1;
  stack[depth] = s;
  for (i = 0; i < s->nedges; i++)
    {
      lcSect *t = s->edges[i].to;
      if (t->color == 1)
        {
          struct dbuf_s dbuf;
          int k, j;
          for (k = 0; stack[k] != t; k++)
            ;
          dbuf_init (&dbuf, 128);
          for (j = k; j <= depth; j++)
            {
              dbuf_append_str (&dbuf, sectName (stack[j]));
              dbuf_append_str (&dbuf, " -> ");
            }
          dbuf_append_str (&dbuf, sectName (t));
          werrorfl (NULL, 0, E_RECURSION_UNSUPPORTED, dbuf_c_str (&dbuf));
          dbuf_destroy (&dbuf);
          nerrors++;
        }
      else if (t->color == 0 && depth < 4095)
        findCycles (t, stack, depth + 1);
    }
  s->color = 2;
}

/* Return-stack levels used below <s> (its own call not counted). */
static int
stackDepth (lcSect *s)
{
  int i, best = 0;

  if (s->depthKnown)
    return s->depth;
  s->depthKnown = 1;            /* only run when there are no cycles */
  s->deepest = NULL;
  for (i = 0; i < s->nedges; i++)
    {
      int d = s->edges[i].call + stackDepth (s->edges[i].to);
      if (!s->deepest || d > best)
        {
          s->deepest = &s->edges[i];
          best = d;
        }
    }
  s->depth = best + s->localCalls;
  return s->depth;
}

static void
appendDeepest (struct dbuf_s *dbuf, lcSect *s)
{
  int n = 0;
  for (; s && n < 64; s = s->deepest ? s->deepest->to : NULL, n++)
    {
      if (n)
        dbuf_append_str (dbuf, " -> ");
      dbuf_append_str (dbuf, sectName (s));
    }
}

static void
clearSearch (void)
{
  lcObj *obj;
  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      for (i = 0; i < obj->nsects; i++)
        {
          obj->sects[i].mark = 0;
          obj->sects[i].parent = NULL;
        }
    }
  indirect.mark = 0;
  indirect.parent = NULL;
}

/* Breadth-first marking from <root>; sets parent links for paths. */
static void
reach (lcSect *root, int which)
{
  lcSect **queue;
  int head = 0, tail = 0, cap = 1024;

  queue = Safe_alloc (cap * sizeof (lcSect *));
  root->mark = 1;
  queue[tail++] = root;
  while (head < tail)
    {
      lcSect *s = queue[head++];
      int i;
      if (which == 1)
        s->fromMain = 1;
      else if (which == 2)
        s->fromIsr = 1;
      for (i = 0; i < s->nedges; i++)
        {
          lcSect *t = s->edges[i].to;
          if (t->mark)
            continue;
          t->mark = 1;
          t->parent = s;
          if (tail == cap)
            {
              cap *= 2;
              queue = Safe_realloc (queue, cap * sizeof (lcSect *));
            }
          queue[tail++] = t;
        }
    }
  Safe_free (queue);
}

static lcSect *
findSection (const char *name)
{
  lcObj *obj;
  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        if (!strcmp (obj->sects[i].name, name))
          return &obj->sects[i];
    }
  return NULL;
}

static void
checkCallDepth (lcSect *reset, lcSect *isr)
{
  int levels = pic14_getPIC ()->isEnhancedCore ? 16 : 8;
  int mainDepth = stackDepth (reset);
  int isrDepth = isr ? 1 + stackDepth (isr) : 0;

  if (mainDepth + isrDepth > levels)
    {
      struct dbuf_s dbuf;
      dbuf_init (&dbuf, 256);
      appendDeepest (&dbuf, reset);
      if (isr)
        {
          dbuf_printf (&dbuf, ", plus %d for the interrupt: ", isrDepth);
          appendDeepest (&dbuf, isr);
        }
      werrorfl (NULL, 0, E_CALL_DEPTH_EXCEEDED, mainDepth + isrDepth, levels, dbuf_c_str (&dbuf));
      dbuf_destroy (&dbuf);
      nerrors++;
    }
}

/* A key naming one symbol of one object (statics of different
   modules share names). */
static char *
symKey (const lcSym *sym)
{
  struct dbuf_s dbuf;
  dbuf_init (&dbuf, 32);
  dbuf_printf (&dbuf, "%p", (const void *) sym);
  return dbuf_detach_c_str (&dbuf);
}

static void
checkIsrSharing (lcSect *reset, lcSect *isr)
{
  lcObj *obj;
  lcMap isrRam = { 0 };
  int k;

  clearSearch ();
  reach (reset, 1);
  clearSearch ();
  reach (isr, 2);               /* parent links now lead back to the ISR */

  /* the local storage interrupt-handler code uses ... */
  for (obj = allObjs; obj; obj = obj->next)
    {
      int i, k;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        if (obj->sects[i].fromIsr)
          for (k = 0; k < obj->sects[i].nram; k++)
            mapPut (&isrRam, symKey (obj->sects[i].ram[k]), &obj->sects[i]);
    }
  /* ... must not be used by code that only main reaches */
  for (obj = allObjs; obj; obj = obj->next)
    {
      int i, k;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        {
          lcSect *s = &obj->sects[i];
          if (!s->fromMain || s->fromIsr)
            continue;
          for (k = 0; k < s->nram; k++)
            {
              char *key = symKey (s->ram[k]);
              lcSect *other = mapGet (&isrRam, key);
              Safe_free (key);
              if (other)
                {
                  const char *base = strrchr (obj->name, '/');
                  base = base ? base + 1 : obj->name;
                  werrorfl (NULL, 0, E_ISR_SHARED_LOCALS, sectName (other), sectName (s), base);
                  nerrors++;
                  break;
                }
            }
        }
    }
  for (k = 0; k < (int) isrRam.cap; k++)
    Safe_free (isrRam.keys[k]);
  mapFree (&isrRam);

  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        {
          lcSect *s = &obj->sects[i];
          if (s->fromMain && s->fromIsr && s != isr && s->nram)
            {
              struct dbuf_s fromIsr, fromMain;
              dbuf_init (&fromIsr, 128);
              appendPath (&fromIsr, isr, s);
              clearSearch ();
              reach (reset, 0);
              dbuf_init (&fromMain, 128);
              appendPath (&fromMain, reset, s);
              werrorfl (NULL, 0, E_ISR_SHARED_FUNC, sectName (s), dbuf_c_str (&fromIsr), dbuf_c_str (&fromMain));
              dbuf_destroy (&fromIsr);
              dbuf_destroy (&fromMain);
              nerrors++;
              clearSearch ();
              reach (isr, 0);
            }
        }
    }
}

/* Within one module the register allocator keeps a function's locals
   apart from those of every function it calls, as far as the module's
   own call tree shows. A chain through another module (f -> g in
   another module -> h back in this one) is invisible to it. */
static void
checkSharedLocals (void)
{
  lcObj *obj;

  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        {
          lcSect *a = &obj->sects[i];
          int j;
          if (!a->nram || !isCode (a))
            continue;
          clearSearch ();
          reach (a, 0);
          for (j = 0; j < obj->nsects; j++)
            {
              lcSect *b = &obj->sects[j];
              int x, y, shared = 0;
              if (b == a || !b->mark || !b->nram)
                continue;
              /* only locals and temporaries: a caller writes its
                 callee's parameter and variable-argument areas */
              for (x = 0; x < a->nram && !shared; x++)
                if (isLocal (a->ram[x]))
                  for (y = 0; y < b->nram && !shared; y++)
                    shared = a->ram[x] == b->ram[y];
              if (shared)
                {
                  struct dbuf_s path;
                  const char *base = strrchr (obj->name, '/');
                  base = base ? base + 1 : obj->name;
                  dbuf_init (&path, 128);
                  appendPath (&path, a, b);
                  werrorfl (NULL, 0, E_SHARED_LOCALS, sectName (a), sectName (b), base, dbuf_c_str (&path), base);
                  dbuf_destroy (&path);
                  nerrors++;
                }
            }
        }
    }
}

/* Code pages and RAM banks, from gplink's default linker script. */
typedef struct
{
  int maxPage, totalCode;
  int maxBank, totalRam;
} lcMemory;

static int
readLinkerScript (const char *path, lcMemory *mem)
{
  FILE *f = fopen (path, "r");
  char line[512];

  if (!f)
    return 0;
  memset (mem, 0, sizeof *mem);
  while (fgets (line, sizeof line, f))
    {
      char *p = line, *q;
      unsigned start, end, len;
      int isPage, isBank, isShare;

      while (*p == ' ' || *p == '\t')
        p++;
      isPage = !strncmp (p, "CODEPAGE", 8);
      isBank = !strncmp (p, "DATABANK", 8);
      isShare = !strncmp (p, "SHAREBANK", 9);
      if ((!isPage && !isBank && !isShare) || strstr (p, "PROTECTED"))
        continue;
      if (!(q = strstr (p, "START=")) || sscanf (q + 6, "%x", &start) != 1)
        continue;
      if (!(q = strstr (p, "END=")) || sscanf (q + 4, "%x", &end) != 1 || end < start)
        continue;
      len = end - start + 1;
      if (isPage)
        {
          mem->totalCode += len;
          if ((int) len > mem->maxPage)
            mem->maxPage = len;
        }
      else
        {
          mem->totalRam += len;
          if (isBank && (int) len > mem->maxBank)
            mem->maxBank = len;
        }
    }
  fclose (f);
  return mem->maxPage && mem->maxBank;
}

static int
findLinkerScript (lcMemory *mem)
{
  const char *dirs[] = { NULL, "/usr/share/gputils/lkr", "/usr/local/share/gputils/lkr" };
  const char *proc = processor_base_name ();
  int i;

  if (!proc)
    return 0;
  dirs[0] = getenv ("GPUTILS_LKR_PATH");
  for (i = 0; i < (int) (sizeof dirs / sizeof dirs[0]); i++)
    {
      struct dbuf_s path;
      int ok;
      if (!dirs[i])
        continue;
      dbuf_init (&path, 128);
      dbuf_printf (&path, "%s/%s_g.lkr", dirs[i], proc);
      ok = readLinkerScript (dbuf_c_str (&path), mem);
      dbuf_destroy (&path);
      if (ok)
        return 1;
    }
  return 0;
}

/* A RAM symbol's size: up to the next symbol of its section, or the
   section's end. */
static int
symSize (const lcSym *sym)
{
  const lcSect *s = symSect ((lcSym *) sym);
  unsigned end;
  int i;

  if (!s)
    return 0;
  end = s->size;
  for (i = 0; i < sym->obj->nsyms; i++)
    {
      const lcSym *o = &sym->obj->syms[i];
      if (o->name && o->scn == sym->scn && o->value > sym->value && o->value < end)
        end = o->value;
    }
  return end - sym->value;
}

/* The variables of a RAM section, for a message. */
static void
describeSection (struct dbuf_s *dbuf, lcSect *s, int locals)
{
  lcObj *obj;
  int shown = 0;

  if (locals)
    {
      /* each function's share of the module's local storage */
      for (obj = allObjs; obj && shown < 4; obj = obj->next)
        {
          int i;
          if (obj != s->obj)
            continue;
          for (i = 0; i < obj->nsects && shown < 4; i++)
            {
              lcSect *f = &obj->sects[i];
              int k, n = 0;
              for (k = 0; k < f->nram; k++)
                if (symSect (f->ram[k]) == s)
                  n += symSize (f->ram[k]);
              if (n)
                {
                  dbuf_printf (dbuf, "%s%s: %d", shown ? ", " : "", sectName (f), n);
                  shown++;
                }
            }
        }
      if (shown)
        dbuf_append_str (dbuf, " bytes");
    }
  else
    {
      int i;
      for (i = 0; i < s->obj->nsyms && shown < 4; i++)
        {
          const lcSym *sym = &s->obj->syms[i];
          if (sym->name && sym->scn > 0 && &s->obj->sects[sym->scn - 1] == s
              && (sym->sclass == C_EXT || sym->sclass == C_STAT))
            {
              dbuf_printf (dbuf, "%s%s", shown ? ", " : "", sym->name[0] == '_' ? sym->name + 1 : sym->name);
              shown++;
            }
        }
    }
  if (!shown)
    dbuf_append_str (dbuf, s->name);
}

static void
checkSizes (void)
{
  lcMemory mem;
  lcObj *obj;
  lcMap overlays = { 0 };
  int code = 0, ram = 0;

  if (!findLinkerScript (&mem))
    return;

  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        {
          lcSect *s = &obj->sects[i];
          if (isCode (s))
            {
              int words = s->size / 2;
              if (!(s->flags & STYP_ABS))
                code += words;
              if (words > mem.maxPage)
                {
                  if (isConstData (s))
                    {
                      struct dbuf_s what;
                      dbuf_init (&what, 64);
                      describeSection (&what, s, 0);
                      werrorfl (NULL, 0, E_CONST_TOO_BIG, dbuf_c_str (&what), words, mem.maxPage);
                      dbuf_destroy (&what);
                    }
                  else
                    werrorfl (NULL, 0, E_FUNC_TOO_BIG, sectName (s), words, mem.maxPage);
                  nerrors++;
                }
            }
          else if (isRam (s) && !(s->flags & STYP_ABS))
            {
              if (s->flags & STYP_OVERLAY)
                {
                  /* same-named overlay sections share one place */
                  lcSect *prev = mapGet (&overlays, s->name);
                  if (prev && prev->size >= s->size)
                    continue;
                  ram += s->size - (prev ? prev->size : 0);
                  if (prev)
                    {
                      /* replace the smaller one */
                      unsigned k;
                      for (k = 0; k < overlays.cap; k++)
                        if (overlays.keys[k] && !strcmp (overlays.keys[k], s->name))
                          overlays.vals[k] = s;
                    }
                  else
                    mapPut (&overlays, s->name, s);
                }
              else
                ram += s->size;
              if ((int) s->size > mem.maxBank)
                {
                  struct dbuf_s what;
                  const char *base = strrchr (obj->name, '/');
                  base = base ? base + 1 : obj->name;
                  dbuf_init (&what, 64);
                  if (!strncmp (s->name, "UDL_", 4))
                    {
                      describeSection (&what, s, 1);
                      werrorfl (NULL, 0, E_LOCALS_TOO_BIG, base, (int) s->size, mem.maxBank, dbuf_c_str (&what));
                    }
                  else
                    {
                      describeSection (&what, s, 0);
                      werrorfl (NULL, 0, E_DATA_TOO_BIG, base, (int) s->size, mem.maxBank, dbuf_c_str (&what));
                    }
                  dbuf_destroy (&what);
                  nerrors++;
                }
            }
        }
    }
  mapFree (&overlays);

  if (code > mem.totalCode)
    {
      werrorfl (NULL, 0, E_PROGRAM_TOO_BIG, code, mem.totalCode);
      nerrors++;
    }
  if (ram > mem.totalRam)
    {
      werrorfl (NULL, 0, E_RAM_TOO_BIG, ram, mem.totalRam);
      nerrors++;
    }
}

static void
loadFile (const char *path, int isLibrary, lcMap *libdefs)
{
  unsigned size;
  unsigned char *image = readFile (path, &size);

  if (!image)
    return;
  if (size >= strlen (AR_MAGIC) && !memcmp (image, AR_MAGIC, strlen (AR_MAGIC)))
    {
      lcObj **mark = lastObj;
      readArchive (path, image, size);
      for (; *mark; mark = &(*mark)->next)
        {
          int i;
          for (i = 0; i < (*mark)->nsyms; i++)
            {
              lcSym *sym = &(*mark)->syms[i];
              if (sym->name && sym->sclass == C_EXT && sym->scn > 0)
                mapPut (libdefs, sym->name, *mark);
            }
        }
    }
  else
    {
      lcObj *obj = readCoff (path, image, size);
      if (obj && !isLibrary)
        include (obj);
    }
}

static char *
findInDirs (const char *name, set *dirs)
{
  const char *dir;
  FILE *f;

  if ((f = fopen (name, "rb")))
    {
      fclose (f);
      return Safe_strdup (name);
    }
  for (dir = setFirstItem (dirs); dir; dir = setNextItem (dirs))
    {
      struct dbuf_s path;
      dbuf_init (&path, 128);
      dbuf_printf (&path, "%s/%s", dir, name);
      if ((f = fopen (dbuf_c_str (&path), "rb")))
        {
          fclose (f);
          return dbuf_detach_c_str (&path);
        }
      dbuf_destroy (&path);
    }
  return NULL;
}

int
pic14_linkCheck (set *objects, set *libraries, set *libDirs)
{
  lcMap libdefs = { 0 };
  const char *name;
  lcSect *reset, *isr;
  lcObj *obj;
  lcSect **stack;
  int nsects = 1;

  nerrors = 0;
  memset (&indirect, 0, sizeof indirect);
  indirect.name = "(indirect)";

  for (name = setFirstItem (objects); name; name = setNextItem (objects))
    loadFile (name, 0, &libdefs);
  for (name = setFirstItem (libraries); name; name = setNextItem (libraries))
    {
      char *path = findInDirs (name, libDirs);
      if (path)
        {
          loadFile (path, 1, &libdefs);
          Safe_free (path);
        }
    }
  resolveLibraries (&libdefs);
  mapFree (&libdefs);

  buildGraph ();

  for (obj = allObjs; obj; obj = obj->next)
    nsects += obj->nsects;
  stack = Safe_alloc ((nsects + 1) * sizeof (lcSect *));
  for (obj = allObjs; obj; obj = obj->next)
    {
      int i;
      if (!obj->included)
        continue;
      for (i = 0; i < obj->nsects; i++)
        if (isCode (&obj->sects[i]) && obj->sects[i].color == 0)
          findCycles (&obj->sects[i], stack, 0);
    }
  Safe_free (stack);

  reset = findSection ("STARTUP");
  isr = findSection ("c_interrupt");
  if (reset && !nerrors)
    checkCallDepth (reset, isr);
  if (reset && isr)
    checkIsrSharing (reset, isr);
  checkSharedLocals ();
  checkSizes ();

  /* the images stay for the rest of the run: sdcc exits after linking */
  return nerrors;
}
