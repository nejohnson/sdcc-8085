/*-------------------------------------------------------------------------
  main.c - Z80 specific definitions.

  Michael Hope <michaelh@juju.net.nz> 2001
  Copyright (C) 2021, Sebastian 'basxto' Riedel <sdcc@basxto.de>
  Copyright (v) 2025, Philipp Klaus Krause philipp@colecovision.eu

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

   In other words, you are welcome to use, share and improve this program.
   You are forbidden to forbid anyone else to use, share and improve
   what you give them.   Help stamp out software-hoarding!
-------------------------------------------------------------------------*/

#include <sys/stat.h>
#include "z80.h"
#include "SDCCsystem.h"
#include "SDCCutil.h"
#include "SDCCargs.h"
#include "dbuf_string.h"

#define OPTION_BO               "-bo"
#define OPTION_BA               "-ba"
#define OPTION_CODE_SEG         "--codeseg"
#define OPTION_CONST_SEG        "--constseg"
#define OPTION_DATA_SEG         "--dataseg"
#define OPTION_CALLEE_SAVES_BC  "--callee-saves-bc"
#define OPTION_PORTMODE         "--portmode="
#define OPTION_ASM              "--asm="
#define OPTION_NO_STD_CRT0      "--no-std-crt0"
#define OPTION_RESERVE_IY       "--reserve-regs-iy"
#define OPTION_FRAMEPOINTER     "--fno-omit-frame-pointer"
#define OPTION_EMIT_EXTERNS     "--emit-externs"
#define OPTION_LEGACY_BANKING   "--legacy-banking"
#define OPTION_NMOS_Z80         "--nmos-z80"
#define OPTION_SDCCCALL         "--sdcccall"
#define OPTION_ALLOW_UNDOC_INST "--allow-undocumented-instructions"
#define OPTION_SMALL_MODEL      "--model-small"
#define OPTION_MEDIUM_MODEL     "--model-medium"

/* Only the plain z80 peephole ruleset is used by i8080/i8085; the
   sm83/r2k/tlcs90/ez80/z80n variants from the shared z80/main.c are not
   reachable here since only i8080_port/i8085_port exist in this file. */
static char _z80_defaultRules[] = {
#include "peeph.rul"
#include "peeph-z80.rul"
};

/* i8085_opts is this port's own copy of the option state (see z80.h) -
   defined once here, no longer shared with src/z80/main.c's z80_opts. */
I8085_OPTS i8085_opts;

static OPTION _i8080_options[] = {
  {0, OPTION_CALLEE_SAVES_BC, &i8085_opts.calleeSavesBC, "Force a called function to always save BC"},
  {0, OPTION_ASM,             NULL, "Define assembler name (asxxxx)"},
  {0, OPTION_CODE_SEG,        &options.code_seg, "<name> use this name for the code segment", CLAT_STRING},
  {0, OPTION_CONST_SEG,       &options.const_seg, "<name> use this name for the const segment", CLAT_STRING},
  {0, OPTION_DATA_SEG,        &options.data_seg, "<name> use this name for the data segment", CLAT_STRING},
  {0, OPTION_NO_STD_CRT0,     &options.no_std_crt0, "Do not link default crt0.rel"},
  {0, OPTION_FRAMEPOINTER,    &i8085_opts.noOmitFramePtr, "Do not omit frame pointer"},
  {0, OPTION_EMIT_EXTERNS,    NULL, "Emit externs list in generated asm"},
  {0, OPTION_SDCCCALL,        &options.sdcccall, "Set ABI version for default calling convention", CLAT_INTEGER},
  {0, NULL}
};

static OPTION _i8085_options[] = {
  {0, OPTION_CALLEE_SAVES_BC, &i8085_opts.calleeSavesBC, "Force a called function to always save BC"},
  {0, OPTION_ASM,             NULL, "Define assembler name (asxxxx)"},
  {0, OPTION_CODE_SEG,        &options.code_seg, "<name> use this name for the code segment", CLAT_STRING},
  {0, OPTION_CONST_SEG,       &options.const_seg, "<name> use this name for the const segment", CLAT_STRING},
  {0, OPTION_DATA_SEG,        &options.data_seg, "<name> use this name for the data segment", CLAT_STRING},
  {0, OPTION_NO_STD_CRT0,     &options.no_std_crt0, "Do not link default crt0.rel"},
  {0, OPTION_FRAMEPOINTER,    &i8085_opts.noOmitFramePtr, "Do not omit frame pointer"},
  {0, OPTION_EMIT_EXTERNS,    NULL, "Emit externs list in generated asm"},
  {0, OPTION_SDCCCALL,        &options.sdcccall, "Set ABI version for default calling convention", CLAT_INTEGER},
  {0, OPTION_ALLOW_UNDOC_INST,&options.allow_undoc_inst, "Allow use of undocumented 8085 instructions and flags"},
  {0, NULL}
};

typedef enum
{
  /* Must be first */
  ASM_TYPE_ASXXXX,
  ASM_TYPE_RGBDS,
  ASM_TYPE_ISAS,
  ASM_TYPE_Z80ASM,
  ASM_TYPE_GAS
}
ASM_TYPE;

static struct
{
  ASM_TYPE asmType;
  // Determine if we can put parameters in registers
  struct
  {
    int n;
    struct sym_link *ftype;
  } regparam;
}
_G;

static char *_keywords[] = {
  "sfr",
  "nonbanked",
  "banked",
  "at",
  "_naked",
  "critical",
  "interrupt",
  "z88dk_fastcall",
  "z88dk_callee",
  "smallc",
  "dynamicc",
  "z88dk_shortcall",
  "z88dk_params_offset",
  NULL
};

/* "extern PORT sm83_port;" removed: it was only used by the "rgbds"/"isas"
   --asm= branches in _parseOptions, both removed below as unreachable
   (Game Boy/SM83-specific, and i8080_port/i8085_port are the only ports
   this file ever runs as). */

/* The _asxxxx_z80 ASM_MAPPINGS table is defined once in src/z80/main.c
   (which #includes mappings.i); i8080/i8085 share it via extern rather
   than re-including the file, to avoid duplicate definitions when both
   port.a archives link into the same sdcc binary. The other four tables
   here (_isas_gb, _rgbds_gb, _z80asm_z80, _gas_z80) are Game Boy/SM83-
   specific and are no longer referenced now that the corresponding
   --asm= branches have been removed from _parseOptions as unreachable. */
extern const ASM_MAPPINGS _asxxxx_z80;

// Dont have size_t here, so we just use unsigned int, which is size_t for these ports.
static const char z80_builtins[] =
  "extern void *__builtin_memcpy (void *restrict dest, const void *restrict src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strcpy (char dest[restrict static 1], const char src[restrict static 1]) __builtin__;\n"
  "extern char *__builtin_strncpy (char *restrict dest, const char *restrict src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strchr (const char s[static 1], int c) __builtin__;\n"
  "extern void *__builtin_memset (void *s, int c, unsigned int n) __builtin__;\n";

static const char z80_builtins_c90[] =
  "extern void *__builtin_memcpy (void *dest, const void *src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strcpy (char *dest, const char *src) __builtin__;\n"
  "extern char *__builtin_strncpy (char *dest, const char *src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strchr (const char *s, char c) __builtin__;\n"
  "extern void *__builtin_memset (void *s, int c, unsigned int n) __builtin__;\n";

extern reg_info i8085_gpr_regs[];
extern void i8085_init_asmops (void);
extern reg_info *i8085_regsZ80;

static void
_i8080_init (void)
{
  i8085_opts.sub = SUB_8080;
  asm_addTree (&_asxxxx_z80);

  i8085_regsZ80 = i8085_gpr_regs;
  i8085_init_asmops ();
}

static void
_i8085_init (void)
{
  i8085_opts.sub = SUB_8085;
  asm_addTree (&_asxxxx_z80);

  i8085_regsZ80 = i8085_gpr_regs;
  i8085_init_asmops ();
}

static void
_reset_regparm (struct sym_link *ftype)
{
  _G.regparam.n = 0;
  _G.regparam.ftype = ftype;
  if (IFFUNC_ISZ88DK_FASTCALL (ftype) && IFFUNC_HASVARARGS (ftype))
    werror (E_Z88DK_FASTCALL_PARAMETERS);
  /* The Dynamic C calling convention has the caller save IX as the frame
     pointer; the i8080/i8085 have no index register, so the convention cannot
     be honoured ABI-compatibly (it was a Rabbit/Z180-only convention). Reject
     it rather than silently emitting a subtly-incompatible variant.
     IS_8080LIKE is unconditionally true in this file (only i8080_port/
     i8085_port run this code), so the check always fires for __dynamicc. */
  if (IFFUNC_ISDYNAMICC (ftype))
    werror (E_DYNAMICC_UNSUPPORTED);
}

static int
_reg_parm (sym_link *l, bool reentrant)
{
  if (IFFUNC_ISZ88DK_FASTCALL (_G.regparam.ftype))
    {
      if (_G.regparam.n)
        werror (E_Z88DK_FASTCALL_PARAMETERS);
      if (getSize (l) > 4)
        werror (E_Z88DK_FASTCALL_PARAMETER);
    }

  bool is_regarg = i8085_IsRegArg (_G.regparam.ftype, ++_G.regparam.n, 0);

  return (is_regarg ? _G.regparam.n : 0);
}

enum
{
  P_BANK = 1,
  P_PORTMODE,
  P_CODESEG,
  P_CONSTSEG,
};

static int
do_pragma (int id, const char *name, const char *cp)
{
  struct pragma_token_s token;
  int err = 0;
  int processed = 1;

  init_pragma_token (&token);

  switch (id)
    {
    case P_BANK:
      {
        struct dbuf_s buffer;

        dbuf_init (&buffer, 128);

        cp = get_pragma_token (cp, &token);

        switch (token.type)
          {
          case TOKEN_EOL:
            err = 1;
            break;

          case TOKEN_INT:
            // "switch (_G.asmType) { case ASM_TYPE_ASXXXX: ...; case
            // ASM_TYPE_RGBDS: ...; case ASM_TYPE_ISAS: ...; case
            // ASM_TYPE_GAS: ...; default: wassert (0); }" collapsed to just
            // the ASM_TYPE_ASXXXX arm: _G.asmType is only ever assigned
            // ASM_TYPE_ASXXXX now (the "rgbds"/"isas"/"z80asm"/"gas" --asm=
            // branches that used to set it to the other values were removed
            // from _parseOptions as unreachable), and it is otherwise
            // zero-initialized (ASM_TYPE_ASXXXX is the first/0 enumerator),
            // so this switch can never take any other case.
            dbuf_printf (&buffer, "CODE_%d", token.val.int_val);
            break;

          default:
            {
              const char *str = get_pragma_string (&token);

              dbuf_append_str (&buffer, (0 == strcmp ("BASE", str)) ? "HOME" : str);
            }
            break;
          }

        cp = get_pragma_token (cp, &token);
        if (TOKEN_EOL != token.type)
          {
            err = 1;
            break;
          }

        dbuf_c_str (&buffer);
        options.code_seg = (char *) dbuf_detach (&buffer);
      }
      break;

    case P_PORTMODE:
      {                         /*.p.t.20030716 - adding pragma to manipulate z80 i/o port addressing modes */
        const char *str;

        cp = get_pragma_token (cp, &token);

        if (TOKEN_EOL == token.type)
          {
            err = 1;
            break;
          }

        str = get_pragma_string (&token);

        cp = get_pragma_token (cp, &token);
        if (TOKEN_EOL != token.type)
          {
            err = 1;
            break;
          }

        if (!strcmp (str, "z80"))
          {
            i8085_opts.port_mode = 80;
          }
        else if (!strcmp (str, "z180"))
          {
            i8085_opts.port_mode = 180;
          }
        else if (!strcmp (str, "save"))
          {
            i8085_opts.port_back = i8085_opts.port_mode;
          }
        else if (!strcmp (str, "restore"))
          {
            i8085_opts.port_mode = i8085_opts.port_back;
          }
        else
          err = 1;
      }
      break;

    case P_CODESEG:
    case P_CONSTSEG:
      {
        char *segname;

        cp = get_pragma_token (cp, &token);
        if (token.type == TOKEN_EOL)
          {
            err = 1;
            break;
          }

        segname = Safe_strdup (get_pragma_string (&token));

        cp = get_pragma_token (cp, &token);
        if (token.type != TOKEN_EOL)
          {
            Safe_free (segname);
            err = 1;
            break;
          }

        if (id == P_CODESEG)
          {
            if (options.code_seg)
              Safe_free (options.code_seg);
            options.code_seg = segname;
          }
        else
          {
            if (options.const_seg)
              Safe_free (options.const_seg);
            options.const_seg = segname;
          }
      }
      break;

    default:
      processed = 0;
      break;
    }

  get_pragma_token (cp, &token);

  if (1 == err)
    werror (W_BAD_PRAGMA_ARGUMENTS, name);

  free_pragma_token (&token);
  return processed;
}

static struct pragma_s pragma_tbl[] = {
  {"bank", P_BANK, 0, do_pragma},
  {"portmode", P_PORTMODE, 0, do_pragma},
  {"codeseg", P_CODESEG, 0, do_pragma},
  {"constseg", P_CONSTSEG, 0, do_pragma},
  {NULL, 0, 0, NULL},
};

static int
_process_pragma (const char *s)
{
  return process_pragma_tbl (pragma_tbl, s);
}

/* _sm83_rgbasmCmd/_sm83_rgblinkCmd/_sm83_rgblink() removed: they existed
   solely to support the "rgbds" --asm= branch in _parseOptions, removed
   below as unreachable (Game Boy/SM83-specific; i8080_port/i8085_port are
   the only ports this file ever runs as). */

static bool
_parseOptions (int *pargc, char **argv, int *i)
{
  if (argv[*i][0] == '-')
    {
      /* OPTION_BO/OPTION_BA (ROM/RAM bank selection) are z80/sm83-only
         options, not present in _i8080_options/_i8085_options, so the
         IS_SM83/IS_Z80 branch that handled them (both always false on
         i8080/i8085) is unreachable here and has been removed. */

      if (!strncmp (argv[*i], OPTION_ASM, sizeof (OPTION_ASM) - 1))
        {
          char *asmblr = getStringArg (OPTION_ASM, argv, i, *pargc);

          // Dropped: "rgbds"/"isas"/"z80asm"/"gas" branches (Game Boy/
          // SM83-specific assemblers, unreachable for i8080/i8085 -
          // i8080_port/i8085_port are the only ports defined in this file,
          // so this parser can never run while any other port is active;
          // the removed "rgbds" branch even mutated sm83_port's fields
          // directly regardless of which port is actually running, a clear
          // tell it was never reachable here).
          if (!strcmp (asmblr, "asxxxx"))
            {
              _G.asmType = ASM_TYPE_ASXXXX;
              return TRUE;
            }
        }
      else if (!strncmp (argv[*i], OPTION_PORTMODE, sizeof (OPTION_PORTMODE) - 1))
        {
          char *portmode = getStringArg (OPTION_ASM, argv, i, *pargc);

          if (!strcmp (portmode, "z80"))
            {
              i8085_opts.port_mode = 80;
              return TRUE;
            }
          else if (!strcmp (portmode, "z180"))
            {
              i8085_opts.port_mode = 180;
              return TRUE;
            }
        }
      else if (!strncmp (argv[*i], OPTION_EMIT_EXTERNS, sizeof (OPTION_EMIT_EXTERNS) - 1))
        {
          port->assembler.externGlobal = 1;
          return true;
        }
    }
  return FALSE;
}

static void
_setValues (void)
{
  const char *s;
  struct dbuf_s dbuf;

  if (options.nostdlib == FALSE)
    {
      const char *s;
      char *path;
      struct dbuf_s dbuf;

      dbuf_init (&dbuf, PATH_MAX);

      for (s = setFirstItem (libDirsSet); s != NULL; s = setNextItem (libDirsSet))
        {
          path = buildCmdLine2 ("-k\"%s" DIR_SEPARATOR_STRING "{port}\" ", s);
          dbuf_append_str (&dbuf, path);
          Safe_free (path);
        }
      path = buildCmdLine2 ("-l\"{port}.lib\"", s);
      dbuf_append_str (&dbuf, path);
      Safe_free (path);

      setMainValue ("z80libspec", dbuf_c_str (&dbuf));
      dbuf_destroy (&dbuf);

      for (s = setFirstItem (libDirsSet); s != NULL; s = setNextItem (libDirsSet))
        {
          struct stat stat_buf;

          path = buildCmdLine2 ("%s" DIR_SEPARATOR_STRING "{port}" DIR_SEPARATOR_STRING "crt0{objext}", s);
          if (stat (path, &stat_buf) == 0)
            {
              Safe_free (path);
              break;
            }
          else
            Safe_free (path);
        }

      if (s == NULL)
        setMainValue ("z80crt0", "\"crt0{objext}\"");
      else
        {
          struct dbuf_s dbuf;

          dbuf_init (&dbuf, 128);
          dbuf_printf (&dbuf, "\"%s\"", path);
          setMainValue ("z80crt0", dbuf_c_str (&dbuf));
          dbuf_destroy (&dbuf);
        }
    }
  else
    {
      setMainValue ("z80libspec", "");
      setMainValue ("z80crt0", "");
    }

  setMainValue ("z80extralibfiles", (s = joinStrSet (libFilesSet)));
  Safe_free ((void *) s);
  setMainValue ("z80extralibpaths", (s = joinStrSet (libPathsSet)));
  Safe_free ((void *) s);

  setMainValue ("z80outputtypeflag", "-i");
  setMainValue ("z80outext", ".ihx");

  setMainValue ("stdobjdstfilename", "{dstfilename}{objext}");
  setMainValue ("stdlinkdstfilename", "{dstfilename}{z80outext}");

  setMainValue ("z80extraobj", (s = joinStrSet (relFilesSet)));
  Safe_free ((void *) s);

  dbuf_init (&dbuf, 128);
  /* z80bases is unused by both i8080 and i8085: both link via the "$1.lk"
     script SDCCmain.c writes (port->linker.needLinkerScript), which gets
     its area bases from WRITE_SEG_LOC directly, not from this macro. Kept
     as "-b..." (SDAS's own meaning) for parity with the still-unused
     upstream z80/main.c version of this function. */
  dbuf_printf (&dbuf, "-b_CODE=0x%04X -b_DATA=0x%04X", options.code_loc, options.data_loc);
  setMainValue ("z80bases", dbuf_c_str (&dbuf));
  dbuf_destroy (&dbuf);
}

static void
_finaliseOptions (void)
{
  
  if (!options.std_c99 && port->c_preamble)
    port->c_preamble = z80_builtins_c90;

  port->mem.default_local_map = data;
  port->mem.default_globl_map = data;

  /* IY_RESERVED is unconditionally true on i8080/i8085 (there is no IY). */
  port->num_regs -= 2;

  _setValues ();
}

static void
_setDefaultOptions (void)
{
  /* Peephole optimisation disabled by default (stopgap, not a permanent
     policy): src/i8085/peeph.def's replacement templates are still
     written in Zilog syntax (e.g. "ld hl, #%1" / "add hl, sp"), left over
     from before the Intel mnemonic migration (see
     intel-mnemonic-migration-plan.md). A rule's *match* side can key off
     operand shapes that still look the same in both dialects (or, once
     the migration is complete, off Intel-syntax text) while its
     *replacement* side unconditionally emits the old Zilog text -
     confirmed actually firing and corrupting real output (bug-3013.c:
     a run of "inc sp" got rewritten to "ld hl,#5 / add hl,sp /
     ld sp,hl" mid-migration). This is not a transitional-only hazard:
     any rule whose match side happens to still be dialect-ambiguous even
     after the migration is complete is a permanent landmine as long as
     its replacement side is unaudited Zilog text. Auditing/rewriting all
     3193 lines of peeph.def under Intel semantics is real, separate,
     tracked follow-up work (intel-mnemonic-migration-plan.md), not part
     of this migration - until that happens, disabling peephole here is
     the safe default for both i8085_port and i8080_port (this function
     is shared by both - see their PORT struct entries below - so both
     get the fix; they'd be equally broken by the same rules). A user can
     still opt back in for their own audited rules via --peep-file
     (readRules()/initPeepHole() in SDCCpeeph.c apply it regardless of
     nopeep), just not via the stock rule file. */
  options.nopeep = 1;
  options.stackAuto = 1;
  /* first the options part */
  options.intlong_rent = 1;
  options.float_rent = 1;
  options.noRegParams = 0;
  /* Default code and data locations. */
  options.code_loc = 0x200;
  options.allow_undoc_inst = false;
  options.data_loc = 0x8000;

  options.out_fmt = 'i';        /* Default output format is ihx */
}

#if 0
/* Mangling format:
    _fun_policy_params
    where:
      policy is the function policy
      params is the parameter format

   policy format:
    rsp
    where:
      r is 'r' for reentrant, 's' for static functions
      s is 'c' for callee saves, 'r' for caller saves
      f is 'f' for profiling on, 'x' for profiling off
    examples:
      rr - reentrant, caller saves
   params format:
    A combination of register short names and s to signify stack variables.
    examples:
      bds - first two args appear in BC and DE, the rest on the stack
      s - all arguments are on the stack.
*/
static const char *
_mangleSupportFunctionName (const char *original)
{
  struct dbuf_s dbuf;

  if (strstr (original, "longlong"))
    return (original);

  dbuf_init (&dbuf, 128);
  dbuf_printf (&dbuf, "%s_rr%s_%s", original, options.profile ? "f" : "x", options.noRegParams ? "s" : "bds"    /* MB: but the library only has hds variants ??? */
    );

  return dbuf_detach_c_str (&dbuf);
}
#endif

static const char *
_getRegName (const struct reg_info *reg)
{
  if (reg)
    {
      return reg->name;
    }
  /*  assert (0); */
  return "err";
}

static int
_getRegByName (const char *name)
{
  if (!strcmp (name, "a"))
    return A_IDX;
  if (!strcmp (name, "c"))
    return C_IDX;
  if (!strcmp (name, "b"))
    return B_IDX;
  if (!strcmp (name, "e"))
    return E_IDX;
  if (!strcmp (name, "d"))
    return D_IDX;
  if (!strcmp (name, "l"))
    return L_IDX;
  if (!strcmp (name, "h"))
    return H_IDX;
  if (!strcmp (name, "iyl"))
    return IYL_IDX;
  if (!strcmp (name, "iyh"))
    return IYH_IDX;
  if (!strcmp (name, "k"))
    return K_IDX;
  if (!strcmp (name, "j"))
    return J_IDX;
  return -1;
}

static void
_z80_genAssemblerStart (FILE * of)
{
  /* Both i8080 and i8085 now target vendor's as8085 directly instead of
     sdasz80/sdasz80 (see intel-mnemonic-migration-plan.md - i8080 was
     retargeted alongside i8085, since it shares this same gen.c). Vendor's
     assembler doesn't recognize the .optsdcc directive SDAS added as an
     SDCC-only extension, so emit it as a ';'-prefixed comment instead for
     both ports - still useful for a human (or future tooling) reading the
     .asm, but harmless to vendor's as8085. (Previously only i8085 got the
     comment-form; i8080 still emitted the real !optsdcc directive from when
     it targeted sdasz80, which broke as8085 assembly of every i8080-compiled
     .c file until this was caught via a real device-library build.) */
  if (!options.noOptsdccInAsm)
    {
      tfprintf (of, (TARGET_IS_I8085 || TARGET_IS_I8080) ? "\t;optsdcc -m%s" : "\t!optsdcc -m%s", port->target);
      fprintf (of, " sdcccall(%d)", options.sdcccall);
      fprintf (of, "\n");
    }

  /* Only i8080_port/i8085_port ever call this, so port->id is always
     TARGET_ID_I8080 or TARGET_ID_I8085; every other TARGET_IS_* arm from
     the shared z80/main.c version is unreachable here. */
  if (TARGET_IS_I8080)
    fprintf (of, "\t.8080\n");
  else if (TARGET_IS_I8085)
    fprintf (of, options.allow_undoc_inst ? "\t.8085x\n" : "\t.8085\n");
}

/* rab_genIVT (Rabbit-family interrupt vector table generation) is not used:
   both i8080_port and i8085_port pass 0 for genIVT (see the PORT struct
   below), so it was dead code even before this port existed as a separate
   backend. Removed along with RAB_INTERRUPTS_COUNT/rab_int_names, which it
   alone referenced. */

static bool
_hasNativeMulFor (iCode *ic, sym_link *left, sym_link *right)
{
  sym_link *test = NULL;
  int result_size = IS_SYMOP (IC_RESULT(ic)) ? getSize (OP_SYM_TYPE (IC_RESULT(ic))) : 4;

  if (ic->op != '*')
    return(false);

  if (IS_BITINT (OP_SYM_TYPE (IC_RESULT(ic))) && SPEC_BITINTWIDTH (OP_SYM_TYPE (IC_RESULT(ic))) % 8)
    return false;

  if (IS_LITERAL (left))
    test = left;
  else if (IS_LITERAL (right))
    test = right;
  /* 8x8 unsigned multiplication code is shorter than
     call overhead for the multiplication routine. */
  else if (IS_CHAR (right) && IS_UNSIGNED (right) && IS_CHAR (left) && IS_UNSIGNED (left))
    return(true);
  /* Same for any multiplication with 8 bit result. */
  else if (result_size == 1)
    return(true);
  /* i8080/i8085 have no native 16x16 multiplication (that was Rabbit/R800
     only), so no further fast-path checks apply here. */
  else
    return(false);

  if (getSize (test) <= 2 && result_size <= 2)
    return(true);

  return(false);
}

/* Indicate which extended bit operations this port supports */
static bool
hasExtBitOp (int op, sym_link *left, int right)
{
  switch (op)
    {
    case GETABIT:
    case GETBYTE:
    case GETWORD:
      return (true);
    case ROT:
      {
        unsigned int lbits = bitsForType (left);
        if (lbits % 8)
          return (false);
        if (lbits == 8)
          return (true);
        if (right % lbits  == 1 || right % lbits == lbits - 1)
          return (true);
        if ((getSize (left) <= 2 || getSize (left) == 4) && lbits == right * 2)
          return (true);
      }
      return (false);
    }
  return (false);
}

/* Indicate the expense of an access to an output storage class */
static int
oclsExpense (struct memmap *oclass)
{
  if (IN_FARSPACE (oclass))
    return 1;

  return 0;
}


//#define LINKCMD "sdld{port} -nf {dstfilename}"
/*
#define LINKCMD \
    "sdld{port} -n -c -- {z80bases} -m -j" \
    " {z80libspec}" \
    " {z80extralibfiles} {z80extralibpaths}" \
    " {z80outputtypeflag} \"{linkdstfilename}\"" \
    " {z80crt0}" \
    " \"{dstfilename}{objext}\"" \
    " {z80extraobj}"
*/

/* i8085 and i8080 both target vendor's (patched) as8085/aslink directly
   rather than sdasz80/sdldz80 (see asxxxx-integration-plan.md and
   intel-mnemonic-migration-plan.md). i8080 originally stayed on SDAS's own
   sdasz80/sdldz80, unmodified, while only i8085 switched toolchains (the
   ASxxxx-integration phase) - but once src/i8085/gen.c started emitting
   Intel mnemonics unconditionally for both ports (the mnemonic-migration
   phase), i8080's continued use of sdasz80 (which only ever understood
   Zilog syntax) meant i8080 could no longer assemble at all. The SDAS-
   targeting "_z80AsmCmd"/"_z80LinkCmd" command arrays i8080_port used to
   point at (literally "sdasz80 ..."/"sdldz80 -nf ...") are gone entirely
   now, not just unreferenced - neither port struct below points at
   anything SDAS-shaped any more, and nothing else in this file needs
   them. */

/* The assembler invocation drops the explicit output-.rel-filename
   positional argument SDAS's syntax needs ("$2" in _z80AsmCmd above):
   vendor's as8085 takes just "[-options] file1 [file2...]" and derives the
   output name from the input file automatically, which already produces
   exactly the filename SDCC needs.

   "as8085", not "asz80": both are built from the exact same asxxsrc
   core sources (asdata/asdbg/asexpr/aslex/aslist/asmain/asmcro/asout/assubr/assym -
   confirmed identical file list against asxmak/vs22/build/as8085/
   as8085.vcxproj), differing only in the machine-specific files
   (as8085/{i85mch,i85pst}.c vs asz80/{z80adr,z80mch,z80pst}.c) - i.e. only
   in which mnemonics/encodings they accept, not in CLI flags, object
   format, or any of the ASxxxx-track fixes already landed for this
   project. Since src/i8085/gen.c now emits Intel mnemonics unconditionally
   (both i8085_port and i8080_port - see intel-mnemonic-migration-plan.md),
   asz80 (Zilog-syntax-only) can no longer assemble this port's output at
   all; as8085 is the vendor assembler that actually matches what gen.c
   emits now. Shared by both i8080_port and i8085_port below (same vendor
   binary, same command shape - only the ".8080"/".8085"/".8085x" CPU-mode
   directive _z80_genAssemblerStart() emits at the top of the generated
   .asm file, per TARGET_IS_I8080/TARGET_IS_I8085, tells as8085 which
   instruction subset to accept), hence the port-neutral "_i808x" name
   rather than "_i8085". */
static const char *_i808xVendorAsmCmd[] = {
  "as8085", "$l", "$3", "$1.asm", NULL
};

/* The linker side keeps using the "$1.lk" script SDCCmain.c's shared
   linkEdit() writes (port->linker.needLinkerScript stays 1, below) rather
   than hand-building the command line from this file's own macros: an
   earlier attempt at the latter (see git history) got the crt0/library
   search logic wrong - SDCCmain.c's version already correctly handles
   --nostdlib, --no-std-crt0, -L/-l, and the port's own port->linker.libs
   (all exercised by support/regression's own test harness), and
   reimplementing that here duplicated it *incorrectly*. That shared code
   path is otherwise fine for vendor's aslink too - -k/-l use the exact same
   syntax on both sides - except for three spots that assume SDAS's dialect:

   1. WRITE_SEG_LOC (in SDCCmain.c, shared by every TARGET_Z80_LIKE port)
      always writes "-b AREA = addr" - sdldz80's own repurposed meaning of
      -b ("area base address"), shared with every other z80-family
      sub-target and with mcs51/hc08/etc via the very same linker binary
      (see asxxxx-noice-linker-followup-report.md). Vendor's aslink instead
      uses -a for "area base address" (-b is "bank base address" there).
   2. The first two lines SDCCmain.c writes are "-mjwx" then
      "-i <dstfile>" (SDAS extended syntax: a bare filename after -i
      renames the output). Vendor's plain "-i" takes no such argument -
      "-i <dstfile>" would misparse "<dstfile>" as an extra input file to
      open; renaming the output requires "-i+<dstfile>" instead.
   3. "-k <path>" lines (library search paths, one per -L/standard libdir)
      never have a trailing path separator ("-k ../../device/lib/build/
      i8085"). SDAS's own addfile() (linksrc/lklibr.c) inserts one itself
      before appending the -l name if the path doesn't already end with
      one; vendor's addfile() does not, so "-k ../../device/lib/build/
      i8085" + "-l i8085.lib" silently concatenates into the single
      bogus path "...i8085i8085.lib" (confirmed via strace: ENOENT, then
      silent fallback to an unqualified open of "i8085.lib" that also
      fails, then every symbol the library would have supplied - e.g.
      __divuint - is reported merely as an *undefined global warning*,
      not a fatal error, so this one is easy to miss without checking the
      actual .rel/.ihx output).
   4. "-l <path>/<name>" lines - a library spec that's itself a relative
      path, not a bare name to search for (SDCCmain.c writes one of these
      for support/regression's own per-case "fwk.lib", e.g.
      "-l gen/i8085/fwk.lib") - get unconditionally prefixed with every
      registered -k path and only that, same as any bare -l name (addfile(),
      called once per (-k path, -l name) pair by addlib(), which is the
      only caller). SDAS's own addfile() has a second chance built in for
      exactly this case: if the -k-prefixed open fails, retry the -l value
      alone as given; if *that* succeeds, re-derive path/libfil by
      splitting it at its own last '/' (so a library found this way still
      gets its *own* directory used to resolve the relative filenames
      listed inside it, not whatever -k path happened to be registered).
      Vendor's addfile() has neither half of that. Rather than the -k-line
      fix above (a targeted one-line difference), a "-l <path>/<name>" line
      is rewritten into the equivalent explicit pair "-k <path>/" +
      "-l <name>" instead of trying to patch addfile() itself from the
      outside - registering <path> as a real, ordinary -k entry gets both
      the successful open *and* SDAS's path/libfil re-derivation for free,
      since vendor's own addfile() already does the latter correctly for
      any -k path that actually works.

   All four of SDCCmain.c's own file-writing spots are out of bounds for
   this change (only src/i8085/main.c and the hand-written .s files under
   device/lib/i8085 and device/lib/i8085-undoc are meant to change) - so
   _i808xVendorLinkCmd (used as port->linker.cmd,
   below, shared by both i8080_port and i8085_port - aslink itself is
   dialect-agnostic, it consumes .rel object files and never source syntax,
   so nothing here depends on which of the two ports produced them)
   doesn't invoke aslink directly. It first runs the four substitutions
   above (sed, over the *already-correct* generated script - each pattern
   only ever matches the exact lines it's meant to; everywhere else in the
   file is already vendor-compatible as-is) into a sibling "$1.v" file,
   then invokes vendor's aslink against that.

   Two mechanical constraints on how fixes 3. and 4. themselves have to be
   written, both hit and fixed the hard way:
   - Both patterns need a literal space (matching "-k "/"-l " exactly, not
     just "-k"/"-l", so they can't fire on some other flag that merely
     starts with those two characters) - but this whole array gets
     flattened by buildCmdLine() (SDCCutil.c) into one big string handed to
     `sh -c` verbatim, with no quoting of its own, so an unquoted space
     inside a single array element still splits into two separate shell
     words once it gets there. Wrapping just these two elements in a
     literal pair of double quotes (part of the C string itself, not
     shell_escape()'d - nothing else here goes through a shell-escaping
     step either) keeps each one word; double quotes were chosen
     specifically because they don't treat backslash-paren (or, for 4.,
     backslash-n) as special, so the sed group/newline syntax survives
     inside them unchanged.
   - An end-of-line anchor would normally belong at the end of fix 3.'s
     pattern (plain greedy ".*[^/]" without one matches up to the *first*
     '/' it can get away with, not the last, so on a multi-segment path
     it's wrong - confirmed the hard way, it turned ".../build/i8085" into
     ".../buildi8085/"). But the obvious anchor, a bare '$', can't be used
     in any array element here: buildCmdLine() scans every element for '$'
     itself, to substitute its own $1/$2/$3/$l/$L tokens, and asserts on
     anything else it finds starting with '$'. Left unanchored instead
     (relying on the greedy match naturally preferring the *longest*
     possible extension, which happens to still land correctly on the
     final '/' when one exists): the only case this gets wrong is a "-k"
     path that already ends in '/', which would end up with two - doubled,
     not dropped, so still a valid (if unusual-looking) path, and not a
     case SDCCmain.c's own "-k %s\n" ever actually produces (confirmed:
     libPathsSet/libDirsSet entries come straight from -L / the compiled-in
     standard path, never with a trailing separator). */
static const char *_i808xVendorLinkCmd[] = {
  "sed",
  "-e", "s/^-i/-i+/",
  "-e", "s/^-b/-a/",
  "-e", "\"s#^-k \\(.*[^/]\\)#-k \\1/#\"",
  "-e", "\"s#^-l \\(.*\\)/\\([^/]*\\)#-k \\1/\\n-l \\2#\"",
  "$1", ">", "$1.v", "&&",
  "aslink", "-nf", "$1.v", "$L", NULL
};

static const char *const _crt[] = { "crt0.rel", NULL, };
static const char *const _libs_i8080[] = { "i8080", NULL, };
static const char *const _libs_i8085[] = { "i8085", NULL, };

/* Globals */
PORT i8080_port =
{
  TARGET_ID_I8080,
  "i8080",
  "Intel 8080",                 /* Target name */
  NULL,                         /* Processor name */
  {
    glue,
    FALSE,
    NO_MODEL,
    NO_MODEL,
    NULL,                       /* model == target */
  },
  {                             /* Assembler: vendor's as8085, not sdasz80 - see _i808xVendorAsmCmd */
    _i808xVendorAsmCmd,
    NULL,
    "-plosgffwy",               /* Options with debug */
    "-plosgffw",                /* Options without debug */
    0,
    ".asm"
  },
  {                             /* Linker: vendor's aslink, not sdldz80 - see _i808xVendorLinkCmd */
    _i808xVendorLinkCmd,
    NULL,                       //LINKCMD,
    NULL,
    ".rel",
    1,                          /* still need the "$1.lk" script - _i808xVendorLinkCmd sed-adapts it for vendor's aslink, see its comment */
    _crt,                       /* crt */
    _libs_i8080,                /* libs */
  },
  {                             /* Peephole optimizer */
    _z80_defaultRules,
    i8085_instructionSize,
    NULL,
    NULL,
    NULL,
    i8085_notUsed,
    i8085_canAssign,
    i8085_notUsedFrom,
    i8085_symmParmStack,
    i8085_canJoinRegs,
    i8085_canSplitReg,
  },
  /* Sizes: char, short, int, long, long long, near ptr, far ptr, gptr, func ptr, banked func ptr, bit, float, BitInt (in bits) */
  { 1, 2, 2, 4, 8, 2, 2, 2, 2, 2, 1, 4, 64 },
  /* tags for generic pointers */
  { 0x00, 0x40, 0x60, 0x80 },   /* far, near, xstack, code */
  {
    "XSEG",
    "STACK",
    "CODE",
    "DATA",
    NULL,                       /* idata */
    NULL,                       /* pdata */
    NULL,                       /* xdata */
    NULL,                       // xconst
    NULL,                       /* bit */
    "RSEG (ABS)",
    "GSINIT",
    NULL,                       /* overlay */
    "GSFINAL",
    "HOME",
    NULL,                       /* xidata */
    NULL,                       /* xinit */
    NULL,                       /* const_name */
    "CABS (ABS)",               // cabs_name
    NULL,                       // xabs_name
    "DABS (ABS)",               // iabs_name
    "INITIALIZED",              /* name of segment for initialized variables */
    "INITIALIZER",              /* name of segment for copies of initialized variables in code space */
    NULL,
    NULL,
    1,                          /* CODE  is read-only */
    false,                      // unqualified pointers cannot point to __sfr.
    1                           /* No fancy alignments supported. */
  },
  { NULL, NULL },
  1,                            /* ABI revision */
  { -1, 0, 0, 4, 0, 3, 0 },
  {
    -1,                         /* shifts never use support routines */
    true,                       // Use support routine for int x int -> long multiplication.
    false,                      /* do not use support routine for unsigned long x unsigned char -> unsigned long long multiplication */
  },
  { i8085_emitDebuggerSymbol },
  {
    8000,                       /* maxCount */
    2,                          /* sizeofElement */
    {6, 7, 8},                  /* sizeofMatchJump[] - Assumes operand allocated to registers */
    {6, 9, 15},                 /* sizeofRangeCompare[] - Assumes operand allocated to registers*/
    1,                          /* sizeofSubtract - Assumes use of a single inc or dec */
    9,                          /* sizeofDispatch - Assumes operand allocated to register e or c*/
  },
  "_",
  _i8080_init,
  _parseOptions,
  _i8080_options,
  NULL,
  _finaliseOptions,
  _setDefaultOptions,
  i8085_assignRegisters,
  _getRegName,
  _getRegByName,
  NULL,
  _keywords,
  _z80_genAssemblerStart,
  NULL,                         /* no genAssemblerEnd */
  0,                            /* no local IVT generation code */
  0,                            /* no genXINIT code */
  NULL,                         /* genInitStartup */
  _reset_regparm,
  _reg_parm,
  _process_pragma,
  NULL,
  _hasNativeMulFor,
  hasExtBitOp,                  /* hasExtBitOp */
  oclsExpense,                  /* oclsExpense */
  TRUE,
  TRUE,                         /* little endian */
  0,                            /* leave lt */
  0,                            /* leave gt */
  1,                            /* transform <= to ! > */
  1,                            /* transform >= to ! < */
  1,                            /* transform != to !(a == b) */
  0,                            /* leave == */
  FALSE,                        /* Array initializer support. */
  0,                            /* no CSE cost estimation yet */
  z80_builtins,                 // builtin functions
  GPOINTER,                     /* treat unqualified pointers as "generic" pointers */
  false,                        // there is no __far, and thus no pointers into it.
  false,                        // there is no __far, and thus no pointers into it.
  1,                            /* reset labelKey to 1 */
  1,                            /* globals & local statics allowed */
  7,                            /* Number of registers handled in the tree-decomposition-based register allocator in SDCCralloc.hpp */
  PORT_MAGIC
};

/* The i8085 ships two library variants: the default (documented-only) in
   lib/i8085, and one built with the undocumented instructions/flags enabled
   in lib/i8085-undoc. Selecting the model string here makes the driver look
   in the matching directory when --allow-undocumented-instructions is given
   (mirrors the stm8 / stm8-large split). */
static const char *
_i8085_getModel (void)
{
  return options.allow_undoc_inst ? "i8085-undoc" : "i8085";
}

PORT i8085_port =
{
  TARGET_ID_I8085,
  "i8085",
  "Intel 8085",                 /* Target name */
  NULL,                         /* Processor name */
  {
    glue,
    FALSE,
    NO_MODEL,
    NO_MODEL,
    _i8085_getModel,            /* lib/i8085 or lib/i8085-undoc */
  },
  {                             /* Assembler: vendor's as8085, not sdasz80 - see _i808xVendorAsmCmd */
    _i808xVendorAsmCmd,
    NULL,
    "-plosgffwy",               /* Options with debug */
    "-plosgffw",                /* Options without debug */
    0,
    ".asm"
  },
  {                             /* Linker: vendor's aslink, not sdldz80 - see _i808xVendorLinkCmd */
    _i808xVendorLinkCmd,
    NULL,
    NULL,
    ".rel",
    1,                          /* still need the "$1.lk" script - _i808xVendorLinkCmd sed-adapts it for vendor's aslink, see its comment */
    _crt,                       /* crt */
    _libs_i8085,                /* libs */
  },
  {                             /* Peephole optimizer */
    _z80_defaultRules,
    i8085_instructionSize,
    NULL,
    NULL,
    NULL,
    i8085_notUsed,
    i8085_canAssign,
    i8085_notUsedFrom,
    i8085_symmParmStack,
    i8085_canJoinRegs,
    i8085_canSplitReg,
  },
  /* Sizes: char, short, int, long, long long, near ptr, far ptr, gptr, func ptr, banked func ptr, bit, float, BitInt (in bits) */
  { 1, 2, 2, 4, 8, 2, 2, 2, 2, 2, 1, 4, 64 },
  /* tags for generic pointers */
  { 0x00, 0x40, 0x60, 0x80 },   /* far, near, xstack, code */
  {
    "XSEG",
    "STACK",
    "CODE",
    "DATA",
    NULL,                       /* idata */
    NULL,                       /* pdata */
    NULL,                       /* xdata */
    NULL,                       // xconst
    NULL,                       /* bit */
    "RSEG (ABS)",
    "GSINIT",
    NULL,                       /* overlay */
    "GSFINAL",
    "HOME",
    NULL,                       /* xidata */
    NULL,                       /* xinit */
    NULL,                       /* const_name */
    "CABS (ABS)",               // cabs_name
    NULL,                       // xabs_name
    "DABS (ABS)",               // iabs_name
    "INITIALIZED",              /* name of segment for initialized variables */
    "INITIALIZER",              /* name of segment for copies of initialized variables in code space */
    NULL,
    NULL,
    1,                          /* CODE  is read-only */
    false,                      // unqualified pointers cannot point to __sfr.
    1                           /* No fancy alignments supported. */
  },
  { NULL, NULL },
  1,                            /* ABI revision */
  { -1, 0, 0, 4, 0, 3, 0 },
  {
    -1,                         /* shifts never use support routines */
    true,                       // Use support routine for int x int -> long multiplication.
    false,                      /* do not use support routine for unsigned long x unsigned char -> unsigned long long multiplication */
  },
  { i8085_emitDebuggerSymbol },
  {
    8000,                       /* maxCount */
    2,                          /* sizeofElement */
    {6, 7, 8},                  /* sizeofMatchJump[] - Assumes operand allocated to registers */
    {6, 9, 15},                 /* sizeofRangeCompare[] - Assumes operand allocated to registers*/
    1,                          /* sizeofSubtract - Assumes use of a single inc or dec */
    9,                          /* sizeofDispatch - Assumes operand allocated to register e or c*/
  },
  "_",
  _i8085_init,
  _parseOptions,
  _i8085_options,
  NULL,
  _finaliseOptions,
  _setDefaultOptions,
  i8085_assignRegisters,
  _getRegName,
  _getRegByName,
  NULL,
  _keywords,
  _z80_genAssemblerStart,
  NULL,                         /* no genAssemblerEnd */
  0,                            /* no local IVT generation code */
  0,                            /* no genXINIT code */
  NULL,                         /* genInitStartup */
  _reset_regparm,
  _reg_parm,
  _process_pragma,
  NULL,
  _hasNativeMulFor,
  hasExtBitOp,                  /* hasExtBitOp */
  oclsExpense,                  /* oclsExpense */
  TRUE,
  TRUE,                         /* little endian */
  0,                            /* leave lt */
  0,                            /* leave gt */
  1,                            /* transform <= to ! > */
  1,                            /* transform >= to ! < */
  1,                            /* transform != to !(a == b) */
  0,                            /* leave == */
  FALSE,                        /* Array initializer support. */
  0,                            /* no CSE cost estimation yet */
  z80_builtins,                 // builtin functions
  GPOINTER,                     /* treat unqualified pointers as "generic" pointers */
  false,                        // there is no __far, and thus no pointers into it.
  false,                        // there is no __far, and thus no pointers into it.
  1,                            /* reset labelKey to 1 */
  1,                            /* globals & local statics allowed */
  7,                            /* Number of registers handled in the tree-decomposition-based register allocator in SDCCralloc.hpp */
  PORT_MAGIC
};

