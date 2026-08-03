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

/* z80_opts is defined once in src/z80/main.c and shared across all
   z80-family ports (including i8080/i8085) via the extern declaration
   already in z80.h; only one definition may exist link-wide. */

static OPTION _i8080_options[] = {
  {0, OPTION_CALLEE_SAVES_BC, &z80_opts.calleeSavesBC, "Force a called function to always save BC"},
  {0, OPTION_ASM,             NULL, "Define assembler name (asxxxx)"},
  {0, OPTION_CODE_SEG,        &options.code_seg, "<name> use this name for the code segment", CLAT_STRING},
  {0, OPTION_CONST_SEG,       &options.const_seg, "<name> use this name for the const segment", CLAT_STRING},
  {0, OPTION_DATA_SEG,        &options.data_seg, "<name> use this name for the data segment", CLAT_STRING},
  {0, OPTION_NO_STD_CRT0,     &options.no_std_crt0, "Do not link default crt0.rel"},
  {0, OPTION_FRAMEPOINTER,    &z80_opts.noOmitFramePtr, "Do not omit frame pointer"},
  {0, OPTION_EMIT_EXTERNS,    NULL, "Emit externs list in generated asm"},
  {0, OPTION_SDCCCALL,        &options.sdcccall, "Set ABI version for default calling convention", CLAT_INTEGER},
  {0, NULL}
};

static OPTION _i8085_options[] = {
  {0, OPTION_CALLEE_SAVES_BC, &z80_opts.calleeSavesBC, "Force a called function to always save BC"},
  {0, OPTION_ASM,             NULL, "Define assembler name (asxxxx)"},
  {0, OPTION_CODE_SEG,        &options.code_seg, "<name> use this name for the code segment", CLAT_STRING},
  {0, OPTION_CONST_SEG,       &options.const_seg, "<name> use this name for the const segment", CLAT_STRING},
  {0, OPTION_DATA_SEG,        &options.data_seg, "<name> use this name for the data segment", CLAT_STRING},
  {0, OPTION_NO_STD_CRT0,     &options.no_std_crt0, "Do not link default crt0.rel"},
  {0, OPTION_FRAMEPOINTER,    &z80_opts.noOmitFramePtr, "Do not omit frame pointer"},
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

extern PORT sm83_port;

/* The ASM_MAPPINGS tables in mappings.i are defined once in
   src/z80/main.c (which #includes mappings.i); i8080/i8085 share them
   via extern rather than re-including the file, to avoid duplicate
   definitions when both port.a archives link into the same sdcc binary. */
extern const ASM_MAPPINGS _isas_gb, _rgbds_gb, _asxxxx_z80,
                           _z80asm_z80, _gas_z80;

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

extern reg_info i8080_regs[];
extern void z80_init_asmops (void);
extern reg_info *regsZ80;

static void
_i8080_init (void)
{
  z80_opts.sub = SUB_8080;
  asm_addTree (&_asxxxx_z80);

  regsZ80 = i8080_regs;
  z80_init_asmops ();
}

static void
_i8085_init (void)
{
  z80_opts.sub = SUB_8085;
  asm_addTree (&_asxxxx_z80);

  regsZ80 = i8080_regs;
  z80_init_asmops ();
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

  bool is_regarg = z80IsRegArg (_G.regparam.ftype, ++_G.regparam.n, 0);

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
            switch (_G.asmType)
              {
              case ASM_TYPE_ASXXXX:
                dbuf_printf (&buffer, "CODE_%d", token.val.int_val);
                break;

              case ASM_TYPE_RGBDS:
                dbuf_printf (&buffer, "ROMX,BANK[%d]", token.val.int_val);
                break;

              case ASM_TYPE_ISAS:
                /* PENDING: what to use for ISAS? */
                dbuf_printf (&buffer, "CODE,BANK(%d)", token.val.int_val);
                break;

              case ASM_TYPE_GAS:
                dbuf_printf (&buffer, ".ovly%04x", token.val.int_val);
                break;

              default:
                wassert (0);
              }
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
            z80_opts.port_mode = 80;
          }
        else if (!strcmp (str, "z180"))
          {
            z80_opts.port_mode = 180;
          }
        else if (!strcmp (str, "save"))
          {
            z80_opts.port_back = z80_opts.port_mode;
          }
        else if (!strcmp (str, "restore"))
          {
            z80_opts.port_mode = z80_opts.port_back;
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

static const char *_sm83_rgbasmCmd[] = {
  "rgbasm", "-o$1.rel", "$1.asm", NULL
};

static const char *_sm83_rgblinkCmd[] = {
  "xlink", "-tg", "-n$1.sym", "-m$1.map", "-zFF", "$1.lnk", NULL
};

static void
_sm83_rgblink (void)
{
  FILE *lnkfile;
  struct dbuf_s lnkFileName;
  char *buffer;

  dbuf_init (&lnkFileName, PATH_MAX);

  /* first we need to create the <filename>.lnk file */
  dbuf_append_str (&lnkFileName, dstFileName);
  dbuf_append_str (&lnkFileName, ".lk");
  if (!(lnkfile = fopen (dbuf_c_str (&lnkFileName), "w")))
    {
      werror (E_OUTPUT_FILE_OPEN_ERR, dbuf_c_str (&lnkFileName), strerror (errno));
      dbuf_destroy (&lnkFileName);
      exit (1);
    }
  dbuf_destroy (&lnkFileName);

  fprintf (lnkfile, "[Objects]\n");

  fprintf (lnkfile, "%s.rel\n", dstFileName);

  fputStrSet (lnkfile, relFilesSet);

  fprintf (lnkfile, "\n[Libraries]\n");
  /* additional libraries if any */
  fputStrSet (lnkfile, libFilesSet);

  fprintf (lnkfile, "\n[Output]\n" "%s.gb", dstFileName);

  fclose (lnkfile);

  buffer = buildCmdLine (port->linker.cmd, dstFileName, NULL, NULL, NULL, NULL);
  /* call the linker */
  if (sdcc_system (buffer))
    {
      Safe_free (buffer);
      perror ("Cannot exec linker");
      exit (1);
    }
  Safe_free (buffer);
}

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

          if (!strcmp (asmblr, "rgbds"))
            {
              asm_addTree (&_rgbds_gb);
              // rgbds doesn't understand that
              options.noOptsdccInAsm = true;

              sm83_port.assembler.cmd = _sm83_rgbasmCmd;
              sm83_port.linker.cmd = _sm83_rgblinkCmd;
              sm83_port.linker.do_link = _sm83_rgblink;

              if(!(options.code_seg && strcmp(options.code_seg, CODE_NAME)))
                {
                  if (options.code_seg)
                    Safe_free (options.code_seg);
                  options.code_seg = Safe_strdup ("ROMX");
                }
              if(!(options.data_seg && strcmp(options.data_seg, DATA_NAME)))
                {
                  if (options.data_seg)
                    Safe_free (options.data_seg);
                  options.data_seg = Safe_strdup ("WRAMX");
                }

              _G.asmType = ASM_TYPE_RGBDS;
              return TRUE;
            }
          else if (!strcmp (asmblr, "asxxxx"))
            {
              _G.asmType = ASM_TYPE_ASXXXX;
              return TRUE;
            }
          else if (!strcmp (asmblr, "isas"))
            {
              asm_addTree (&_isas_gb);
              /* Munge the function prefix */
              sm83_port.fun_prefix = "";
              _G.asmType = ASM_TYPE_ISAS;
              return TRUE;
            }
          else if (!strcmp (asmblr, "z80asm"))
            {
              port->assembler.externGlobal = TRUE;
              asm_addTree (&_z80asm_z80);
              _G.asmType = ASM_TYPE_ISAS;
              return TRUE;
            }
          else if (!strcmp (asmblr, "gas"))
            {
              port->assembler.externGlobal = TRUE;
              asm_addTree (&_gas_z80);
              _G.asmType = ASM_TYPE_GAS;
              return TRUE;
            }
        }
      else if (!strncmp (argv[*i], OPTION_PORTMODE, sizeof (OPTION_PORTMODE) - 1))
        {
          char *portmode = getStringArg (OPTION_ASM, argv, i, *pargc);

          if (!strcmp (portmode, "z80"))
            {
              z80_opts.port_mode = 80;
              return TRUE;
            }
          else if (!strcmp (portmode, "z180"))
            {
              z80_opts.port_mode = 180;
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
  options.nopeep = 0;
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
  if (!options.noOptsdccInAsm)
    {
      tfprintf (of, "\t!optsdcc -m%s", port->target);
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

static const char *_z80LinkCmd[] = {
  "sdldz80", "-nf", "$1", "$L", NULL
};

/* $3 is replaced by assembler.debug_opts resp. port->assembler.plain_opts */
static const char *_z80AsmCmd[] = {
  "sdasz80", "$l", "$3", "$2", "$1.asm", NULL
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
  {                             /* Assembler */
    _z80AsmCmd,
    NULL,
    "-plosgffwy",               /* Options with debug */
    "-plosgffw",                /* Options without debug */
    0,
    ".asm"
  },
  {                             /* Linker */
    _z80LinkCmd,                //NULL,
    NULL,                       //LINKCMD,
    NULL,
    ".rel",
    1,
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
  { z80_emitDebuggerSymbol },
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
  z80_assignRegisters,
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
  {                             /* Assembler */
    _z80AsmCmd,
    NULL,
    "-plosgffwy",               /* Options with debug */
    "-plosgffw",                /* Options without debug */
    0,
    ".asm"
  },
  {                             /* Linker */
    _z80LinkCmd,                //NULL,
    NULL,                       //LINKCMD,
    NULL,
    ".rel",
    1,
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
  { z80_emitDebuggerSymbol },
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
  z80_assignRegisters,
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

