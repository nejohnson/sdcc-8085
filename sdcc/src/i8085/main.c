/*-------------------------------------------------------------------------
  main.c - i8080/i8085 port definitions.

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
#include "i8085.h"
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
#define OPTION_ASM              "--asm="
#define OPTION_NO_STD_CRT0      "--no-std-crt0"
#define OPTION_RESERVE_IY       "--reserve-regs-iy"
#define OPTION_FRAMEPOINTER     "--fno-omit-frame-pointer"
#define OPTION_EMIT_EXTERNS     "--emit-externs"
#define OPTION_LEGACY_BANKING   "--legacy-banking"
#define OPTION_SDCCCALL         "--sdcccall"
#define OPTION_ALLOW_UNDOC_INST "--allow-undocumented-instructions"
#define OPTION_SMALL_MODEL      "--model-small"
#define OPTION_MEDIUM_MODEL     "--model-medium"

/* This port's own Intel-syntax peephole rules (src/i8085/peeph-i8085.def -
   see peep.c's leading comment and the "Intel-mnemonic instruction
   classification" block it introduces). Replaces the shared z80-family
   peeph.def/peeph-z80.def, which are Zilog-syntax and were never actually
   applied here - see the git history of this file for that era. */
static char _i8085_defaultRules[] = {
#include "peeph-i8085.rul"
};

/* i8085_opts is this port's own copy of the option state (see i8085.h),
   independent of src/z80/main.c's own z80_opts. */
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

/* This port's own token-substitution table for the vendor ASxxxx
   assembler (see mappings.i's own comment for what it does); defined here
   rather than shared with src/z80/main.c's copy so that i8085's table can
   be edited independently of the z80 port's. */
#include "mappings.i"

// Dont have size_t here, so we just use unsigned int, which is size_t for these ports.
static const char i8085_builtins[] =
  "extern void *__builtin_memcpy (void *restrict dest, const void *restrict src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strcpy (char dest[restrict static 1], const char src[restrict static 1]) __builtin__;\n"
  "extern char *__builtin_strncpy (char *restrict dest, const char *restrict src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strchr (const char s[static 1], int c) __builtin__;\n"
  "extern void *__builtin_memset (void *s, int c, unsigned int n) __builtin__;\n";

static const char i8085_builtins_c90[] =
  "extern void *__builtin_memcpy (void *dest, const void *src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strcpy (char *dest, const char *src) __builtin__;\n"
  "extern char *__builtin_strncpy (char *dest, const char *src, unsigned int n) __builtin__;\n"
  "extern char *__builtin_strchr (const char *s, char c) __builtin__;\n"
  "extern void *__builtin_memset (void *s, int c, unsigned int n) __builtin__;\n";

extern reg_info i8085_gpr_regs[];
extern void i8085_init_asmops (void);
extern reg_info *i8085_regs;

static void
_i8080_init (void)
{
  i8085_opts.sub = SUB_8080;
  asm_addTree (&_i8085_asm_mappings);

  i8085_regs = i8085_gpr_regs;
  i8085_init_asmops ();
}

static void
_i8085_init (void)
{
  i8085_opts.sub = SUB_8085;
  asm_addTree (&_i8085_asm_mappings);

  i8085_regs = i8085_gpr_regs;
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
     pointer; i8080/i8085 have no index register, so the convention cannot
     be honoured ABI-compatibly. Reject it rather than silently emitting a
     subtly-incompatible variant. */
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
            // This port only ever targets the ASxxxx assembler, so the bank
            // pragma's numeric form is always formatted the same way.
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
  {"codeseg", P_CODESEG, 0, do_pragma},
  {"constseg", P_CONSTSEG, 0, do_pragma},
  {NULL, 0, 0, NULL},
};

static int
_process_pragma (const char *s)
{
  return process_pragma_tbl (pragma_tbl, s);
}

static bool
_parseOptions (int *pargc, char **argv, int *i)
{
  if (argv[*i][0] == '-')
    {
      /* OPTION_BO/OPTION_BA (ROM/RAM bank selection) are z80/sm83-only
         options and are not applicable to i8080/i8085, so they are not
         present in _i8080_options/_i8085_options and are not handled here. */

      if (!strncmp (argv[*i], OPTION_ASM, sizeof (OPTION_ASM) - 1))
        {
          char *asmblr = getStringArg (OPTION_ASM, argv, i, *pargc);

          // This port only ever targets the asxxxx assembler.
          if (!strcmp (asmblr, "asxxxx"))
            {
              _G.asmType = ASM_TYPE_ASXXXX;
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

      setMainValue ("i8085_libspec", dbuf_c_str (&dbuf));
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
        setMainValue ("i8085_crt0", "\"crt0{objext}\"");
      else
        {
          struct dbuf_s dbuf;

          dbuf_init (&dbuf, 128);
          dbuf_printf (&dbuf, "\"%s\"", path);
          setMainValue ("i8085_crt0", dbuf_c_str (&dbuf));
          dbuf_destroy (&dbuf);
        }
    }
  else
    {
      setMainValue ("i8085_libspec", "");
      setMainValue ("i8085_crt0", "");
    }

  setMainValue ("i8085_extralibfiles", (s = joinStrSet (libFilesSet)));
  Safe_free ((void *) s);
  setMainValue ("i8085_extralibpaths", (s = joinStrSet (libPathsSet)));
  Safe_free ((void *) s);

  setMainValue ("i8085_outputtypeflag", "-i");
  setMainValue ("i8085_outext", ".ihx");

  setMainValue ("stdobjdstfilename", "{dstfilename}{objext}");
  setMainValue ("stdlinkdstfilename", "{dstfilename}{i8085_outext}");

  setMainValue ("i8085_extraobj", (s = joinStrSet (relFilesSet)));
  Safe_free ((void *) s);
}

static void
_finaliseOptions (void)
{
  
  if (!options.std_c99 && port->c_preamble)
    port->c_preamble = i8085_builtins_c90;

  port->mem.default_local_map = data;
  port->mem.default_globl_map = data;

  /* There is no IY on i8080/i8085, so its 2 register slots are never
     allocatable. */
  port->num_regs -= 2;

  _setValues ();
}

static void
_setDefaultOptions (void)
{
  /* Peephole optimization is enabled by default via this port's own
     Intel-syntax rule set, src/i8085/peeph-i8085.def (_i8085_defaultRules
     above) - written and validated specifically against the Intel
     mnemonics gen.c actually emits, unlike the shared z80-family
     peeph.def/peeph-z80.def this port used to (uselessly, and unsafely -
     see bug-3013.c) inherit. Landed incrementally, one tight logical
     group of rules at a time, each validated by hand-reasoning against
     the 8085 data sheet, a real-corpus scan with --peep-file to find
     genuine firing instances (not just regression-neutrality, which
     can't tell a correct rule from one that simply never fires), and a
     ucsim behavioral check - see peeph-i8085.def's own header and its
     git history for the full record. This function is shared by both
     i8085_port and i8080_port, and both get the same validated rules. */
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
_genAssemblerStart (FILE * of)
{
  /* Both i8080 and i8085 target vendor's as8085 assembler, which doesn't
     recognize the .optsdcc directive SDAS added as an SDCC-only extension,
     so emit it as a ';'-prefixed comment instead for both ports - still
     useful for a human (or future tooling) reading the .asm, but harmless
     to as8085. */
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


/* i8085 and i8080 both target vendor's (patched) as8085/aslink directly
   rather than SDAS's sdasz80/sdldz80 (see asxxxx-integration-plan.md).
   Neither port struct below points at anything SDAS-shaped. */

/* The assembler invocation has no explicit output-.rel-filename positional
   argument: vendor's as8085 takes just "[-options] file1 [file2...]" and
   derives the output name from the input file automatically, which already
   produces exactly the filename SDCC needs.

   "as8085", not "asz80": both are built from the exact same asxxsrc
   core sources (asdata/asdbg/asexpr/aslex/aslist/asmain/asmcro/asout/assubr/assym -
   confirmed identical file list against asxmak/vs22/build/as8085/
   as8085.vcxproj), differing only in the machine-specific files
   (as8085/{i85mch,i85pst}.c vs asz80/{z80adr,z80mch,z80pst}.c) - i.e. only
   in which mnemonics/encodings they accept, not in CLI flags or object
   format. src/i8085/gen.c emits Intel mnemonics, which only as8085
   understands (asz80 only understands Zilog syntax); as8085 is shared by
   both i8080_port and i8085_port below (same vendor binary, same command
   shape - only the ".8080"/".8085"/".8085x" CPU-mode directive
   _genAssemblerStart() emits at the top of the generated .asm file, per
   TARGET_IS_I8080/TARGET_IS_I8085, tells as8085 which instruction subset
   to accept), hence the port-neutral "_i808x" name rather than "_i8085". */
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
    _i8085_defaultRules,
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
  _genAssemblerStart,
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
  i8085_builtins,               // builtin functions
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
    _i8085_defaultRules,
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
  _genAssemblerStart,
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
  i8085_builtins,               // builtin functions
  GPOINTER,                     /* treat unqualified pointers as "generic" pointers */
  false,                        // there is no __far, and thus no pointers into it.
  false,                        // there is no __far, and thus no pointers into it.
  1,                            /* reset labelKey to 1 */
  1,                            /* globals & local statics allowed */
  7,                            /* Number of registers handled in the tree-decomposition-based register allocator in SDCCralloc.hpp */
  PORT_MAGIC
};

