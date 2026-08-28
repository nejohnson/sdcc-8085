/*-------------------------------------------------------------------------
  peep.c - source file for peephole optimizer helper functions

  Copyright (C) 2011-2025, Philipp Klaus Krause pkk@spth.de, philipp@informatik.uni-frankfurt.de, philipp@colecovision.eu
  Copyright (C) 2020, Sebastian 'basxto' Riedel <sdcc@basxto.de>

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

#include "common.h"
#include "SDCCicode.h"
#include "i8085.h"
#include "SDCCglobl.h"
#include "SDCCpeeph.h"
#include "gen.h"

/* The instruction-pattern matching below (lineIsInst() against strings like
   "ld", "jp", "ex", "rlca", ...) recognizes Zilog-syntax mnemonics, not the
   Intel mnemonics gen.c emits (mov, jmp, xchg, ral, ...) for most of this
   file's history. This is registered as the port's peephole-optimizer
   support (port->peep in main.c) and is reached whenever peephole rules are
   applied, which is unconditionally in a default build now: this port's
   own src/i8085/peeph-i8085.def is the active rule set (options.nopeep = 0
   in main.c's _setDefaultOptions()), so every function in this file runs
   on every compile, not just under --peep-file.
   The classifier functions below (mightRead/mightReadFlag/surelyWrites/
   surelyWritesFlag/uncondJump/condJump/callSurelyWrites/i8085_canAssign/
   i8085_instructionSize) recognize the actual Intel mnemonic set gen.c
   emits - see the "Intel-mnemonic instruction classification" block below -
   checked before any Zilog-syntax branch in the same function, so real
   output is always resolved by the Intel-aware checks. The original
   Zilog-syntax branches are left in place after them, unreachable for this
   port's own output (gen.c never emits Zilog text) but still exercised by
   the z80/z180/etc. ports that share this same lineage of logic in
   src/z80/peep.c - not something to remove here. */
#define NOTUSEDERROR() do {werror(E_INTERNAL_ERROR, __FILE__, __LINE__, "error in notUsed()");} while(0)

#if 0
#define D(_s) { printf _s; fflush(stdout); }
#else
#define D(_s)
#endif

typedef enum
{
  S4O_CONDJMP,
  S4O_WR_OP,
  S4O_RD_OP,
  S4O_TERM,
  S4O_VISITED,
  S4O_ABORT,
  S4O_CONTINUE
} S4O_RET;

static struct
{
  lineNode *head;
} _G;

extern bool i8085_regs_used_as_parms_in_calls_from_current_function[IYH_IDX + 1];
extern bool i8085_symmParm_in_calls_from_current_function;
extern bool i8085_regs_preserved_in_calls_from_current_function[IYH_IDX + 1];

/* ------------------------------------------------------------------
   Intel-mnemonic instruction classification (peephole rewrite
   checkpoint 0). One place owns "what does this real, live i8085/i8080
   mnemonic read/write", so the read/write/flag/size classifiers later in
   this file all agree with each other and with gen.c's actual emission
   (emit_A_ARITH8(), emit_A_LD(), asminstnames[], emit8080RotateByte() -
   all in gen.c) rather than each re-deriving it independently. ------ */

/* Intel's "m" pseudo-operand: memory addressed indirectly via HL - the
   Intel-syntax equivalent of Zilog's "(hl)" (see intelOperand()'s own
   comment in gen.c, the one place that produces it). Using "m" always
   reads h and l (to form the address); it never itself reads or writes
   a register called "m" - there is no such CPU register. */
static bool
isIntelM (const char *op)
{
  return (op && op[0] == 'm' && (op[1] == '\0' || op[1] == ',' || isspace ((unsigned char) op[1])));
}

static bool
isHOrL (const char *what)
{
  return (!strcmp (what, "h") || !strcmp (what, "l"));
}

/* The 8-bit accumulator-arithmetic mnemonics, register/M and immediate
   forms, in the same order gen.c's emit_A_ARITH8() (gen.c:1926-1927)
   uses: add/adc/sub/sbb/ana/xra/ora/cmp (register or M) and adi/aci/sui/
   sbi/ani/xri/ori/cpi (immediate). Every one of the 16 reads a (always
   one of the two implicit operands, per emit_A_ARITH8()'s own comment)
   and, for anything but cmp/cpi (compare-only, result discarded except
   into flags), also writes a. Returns the shared 0-7 index (same
   meaning for either form) or -1 if pl is not one of these. */
static int
intelArith8 (const lineNode *pl, bool *immediate, bool *writes_a)
{
  static const char *const reg_mn[] = { "add", "adc", "sub", "sbb", "ana", "xra", "ora", "cmp" };
  static const char *const imm_mn[] = { "adi", "aci", "sui", "sbi", "ani", "xri", "ori", "cpi" };
  int i;
  for (i = 0; i < 8; i++)
    if (lineIsInst (pl, reg_mn[i]))
      {
        *immediate = false;
        *writes_a = (i != 7);
        return i;
      }
  for (i = 0; i < 8; i++)
    if (lineIsInst (pl, imm_mn[i]))
      {
        *immediate = true;
        *writes_a = (i != 7);
        return i;
      }
  return -1;
}

/* dad/inx/dcx name all four register pairs, and ldax/stax the two
   memory-indirect ones (bc/de). gen.c emits both the traditional single-
   letter Intel pair mnemonic ("b" for bc, "d" for de, "h" for hl - the
   literal text a handful of call sites hardcode, e.g. adjustPair()'s
   "inx %s"/"dcx %s" with pair="h") and the full two-letter pair name
   ("bc"/"de"/"hl" - what _pairs[id].name and aopGet(...,true) render,
   used by the majority of call sites) interchangeably for the exact same
   operand - confirmed empirically (a straightforward global-pointer
   store compiles to literal "lxi hl, #_g", not "lxi h, ..."), and
   explained by this file's own A_ADD/dad comment: "aopGet(...,true)
   already renders exactly the pair-name text inx/dcx need (same S_REG
   synonym acceptance as dad's operand...)" - the target assembler
   accepts both spellings as synonyms, and gen.c does not consistently
   pick one. Recognizes either spelling and decodes it into the two 8-bit
   register letters it names (both 0 for sp). Never ambiguous with a
   plain 8-bit register operand ("b" meaning just B, e.g. for mov/add)
   because this is only ever called from the dad/inx/dcx/ldax/stax-
   specific checks below, never from the general 8-bit-register
   dispatch. */
static bool
intelPairOperand (const char *op, char *hi, char *lo, bool *is_sp)
{
  *hi = *lo = 0;
  *is_sp = false;
  if (!op)
    return false;
  if (!strncmp (op, "sp", 2) && (op[2] == '\0' || op[2] == ',' || isspace ((unsigned char) op[2])))
    {
      *is_sp = true;
      return true;
    }
  /* Two-letter form: "bc"/"de"/"hl" - accept and fall through to the
     single-letter decode below using just the first letter, since both
     spellings name the same pair. */
  if (!STRNCASECMP (op, "bc", 2) || !STRNCASECMP (op, "de", 2) || !STRNCASECMP (op, "hl", 2))
    {
      if (op[2] != '\0' && op[2] != ',' && !isspace ((unsigned char) op[2]))
        return false;
    }
  else if (op[1] != '\0' && op[1] != ',' && !isspace ((unsigned char) op[1]))
    return false;
  switch (op[0])
    {
    case 'b': *hi = 'b'; *lo = 'c'; return true;
    case 'd': *hi = 'd'; *lo = 'e'; return true;
    case 'h': *hi = 'h'; *lo = 'l'; return true;
    }
  return false;
}

/* True if what names one of the two 8-bit registers hi/lo (each a single
   char, or 0 if not applicable - e.g. the sp case above). */
static bool
isPairReg (const char *what, char hi, char lo)
{
  return (strlen (what) == 1 && (what[0] == hi || what[0] == lo));
}

/* True for a fused Intel conditional-jump mnemonic (jz/jnz/jc/jnc/jm/jp/
   jpe/jpo - condition baked into the mnemonic itself, single operand,
   never a comma) - as opposed to Zilog's "jp"/"jr" (bare mnemonic, cc as
   a separate comma-delimited operand). Writes the 2-3 letter condition
   suffix (usable directly with mightReadFlagCondition(), which already
   expects exactly this format) if cond is non-NULL. Never collides with
   Zilog "jp"/"jr" text (different mnemonics), including the awkward case
   of bare Intel "jp" (jump-if-sign-positive - one of the 8 real
   conditions, single operand, no comma) vs. Zilog's own unconditional
   "jp label" (also no comma): gen.c's emitJP() only ever emits bare
   "jmp" for a real unconditional jump and reserves plain "jp" exclusively
   for the sign-positive condition (see emitJP()'s own "j%s"/"jmp" split
   in gen.c) - so for this port's actual output, "jp" with no comma is
   never ambiguous, it is always the conditional form. */
static bool
isIntelCondJump (const lineNode *pl, const char **cond)
{
  static const char *const mnemonics[] = { "jz", "jnz", "jc", "jnc", "jm", "jp", "jpe", "jpo" };
  static const char *const conds[] = { "z", "nz", "c", "nc", "m", "p", "pe", "po" };
  int i;
  for (i = 0; i < 8; i++)
    if (lineIsInst (pl, mnemonics[i]))
      {
        if (cond)
          *cond = conds[i];
        return true;
      }
  return false;
}

/*-----------------------------------------------------------------*/
/* univisitLines - clear "visited" flag in all lines               */
/*-----------------------------------------------------------------*/
static void
unvisitLines (lineNode *pl)
{
  for (; pl; pl = pl->next)
    pl->visited = FALSE;
}

#define AOP(op) op->aop
#define AOP_SIZE(op) AOP(op)->size

/*-----------------------------------------------------------------*/
/* incLabelJmpToCount - increment counter "jmpToCount" in entry    */
/* of the list labelHash                                           */
/*-----------------------------------------------------------------*/
static bool
incLabelJmpToCount (const char *label)
{
  labelHashEntry *entry;

  entry = getLabelRef (label, _G.head);
  if (!entry)
    return FALSE;
  entry->jmpToCount++;
  return TRUE;
}

/*-----------------------------------------------------------------*/
/* findLabel -                                                     */
/* 1. extracts label in the opcode pl                              */
/* 2. increment "label jump-to count" in labelHash                 */
/* 3. search lineNode with label definition and return it          */
/*-----------------------------------------------------------------*/
static lineNode *
findLabel (const lineNode *pl)
{
  char *p;
  lineNode *cpl;

  /* pchl (uncondJump() recognizes it as a real, live unconditional jump -
     see its own comment) has no operand at all: the jump target is
     whatever's in hl at runtime, never a label this function could ever
     resolve. Every other jump uncondJump()/condJump() recognize always
     has one (this file's Zilog-syntax jp/jr checks, and Intel's jmp/
     j<cc>, all take a label operand) - pchl is the sole exception, so it
     needs its own short-circuit here rather than reaching the "no
     operand at all" sanity check below, which is a genuine internal-
     error signal for every other caller and must stay one. Returning
     NULL (not erroring) matches what every caller of findLabel() already
     does with an unresolvable target - see scan4op()'s own tail-call
     fallback, and, failing that, S4O_ABORT. */
  if (lineIsInst (pl, "pchl"))
    return NULL;

  /* 1. extract label in opcode */

  /* In each z80 jumping opcode the label is at the end of the opcode */
  p = strlen (pl->line) - 1 + pl->line;

  /* scan backward until ',' or '\t' */
  for (; p > pl->line; p--)
    if (*p == ',' || isspace(*p))
      break;

  /* sanity check */
  if (p == pl->line)
    {
      NOTUSEDERROR();
      return NULL;
    }

  /* skip ',' resp. '\t' */
  ++p;

  /* 2. increment "label jump-to count" */
  if (!incLabelJmpToCount (p))
    return NULL;

  /* 3. search lineNode with label definition and return it */
  for (cpl = _G.head; cpl; cpl = cpl->next)
    if (cpl->isLabel &&
      strncmp (p, cpl->line, strlen(p)) == 0 &&
      cpl->line[strlen(p)] == ':')
        return cpl;

  return NULL;
}

/* Check if reading arg implies reading what. */
static bool argCont (const char *arg, const char *what)
{
  wassert (arg);

  while(isspace (*arg) || *arg == ',')
    arg++;

  if (arg[0] == '#' || arg[0] == '_')
    return false;

  if(arg[0] == '(' && arg[1] && arg[2] && (arg[2] != ')' && arg[3] != ')'))
    return false;

  if(*arg == '(' && *what != '(')
    arg++;

  if (arg[0] == '#' || arg[0] == '_')
    return false;
    
  // Get suitable end to avoid reading into further arguments.
  const char *end = strchr(arg, ',');
  if (!end)
    end = arg + strlen(arg);

  const char *found = StrStr(arg, what);

  return(found && found < end);
}

static bool
mightBeParmInCallFromCurrentFunction(const char *what)
{
  if (strchr(what, 'l') && i8085_regs_used_as_parms_in_calls_from_current_function[L_IDX])
    return TRUE;
  if (strchr(what, 'h') && i8085_regs_used_as_parms_in_calls_from_current_function[H_IDX])
    return TRUE;
  if (strchr(what, 'e') && i8085_regs_used_as_parms_in_calls_from_current_function[E_IDX])
    return TRUE;
  if (strchr(what, 'd') && i8085_regs_used_as_parms_in_calls_from_current_function[D_IDX])
    return TRUE;
  if (strchr(what, 'c') && i8085_regs_used_as_parms_in_calls_from_current_function[C_IDX])
    return TRUE;
  if (strchr(what, 'b') && i8085_regs_used_as_parms_in_calls_from_current_function[B_IDX])
    return TRUE;
  if (strchr(what, 'a') && i8085_regs_used_as_parms_in_calls_from_current_function[A_IDX])
    return true;
  if (strstr(what, "iy") && (i8085_regs_used_as_parms_in_calls_from_current_function[IYL_IDX] || i8085_regs_used_as_parms_in_calls_from_current_function[IYH_IDX]))
    return true;

  return false;
}

/* Check if the flag implies reading what. */
static bool
mightReadFlagCondition(const char *cond, const char *what)
{
  while(isspace (*cond))
    cond++;

  if(!STRNCASECMP(cond, "po", 2) || !STRNCASECMP(cond, "pe", 2))
    return !strcmp(what, "pf");
  if(tolower(cond[0]) == 'm' || tolower(cond[0]) == 'p')
    return !strcmp(what, "sf");

  // skip inverted conditions
  if(tolower(cond[0]) == 'n')
    cond++;

  if(tolower(cond[0]) == 'c')
    return !strcmp(what, "cf");
  if(tolower(cond[0]) == 'z')
    return !strcmp(what, "zf");
  return true;
}

static bool
mightReadFlag(const lineNode *pl, const char *what)
{
  /* Real, live i8085/i8080 output: only the through-carry accumulator
     rotates (ral/rar), the with-carry 8-bit arithmetic (adc/aci/sbb/sbi),
     daa (the 8085 decimal-adjust algorithm reads ac and cy going in -
     see the 8085 data sheet), cmc (complements the existing carry, so it
     has to read it first), and the conditional jumps (each reads exactly
     the one flag its condition tests) ever read a flag. Everything else
     this port emits either never touches flags or only ever writes them
     (checked directly against gen.c: mov/mvi/lxi/lda/sta/lhld/shld/ldax/
     stax/xchg/xthl/sphl/pchl move data only; dad/inx/dcx/inr/dcr and the
     rest of the 8-bit arithmetic family write flags without reading any;
     rlc/rrc rotate without going through carry, so - unlike ral/rar -
     they don't read it either). */
  {
    bool immediate, writes_a;
    int idx = intelArith8 (pl, &immediate, &writes_a);
    if (idx >= 0)
      return (idx == 1 || idx == 3); // adc/aci (1) and sbb/sbi (3) read the incoming carry; nothing else in the family does
  }
  if (lineIsInst (pl, "ral") || lineIsInst (pl, "rar"))
    return !strcmp (what, "cf");
  if (lineIsInst (pl, "daa"))
    return (!strcmp (what, "cf") || !strcmp (what, "hf"));
  if (lineIsInst (pl, "cmc"))
    return !strcmp (what, "cf");
  if (lineIsInst (pl, "stc") || lineIsInst (pl, "cma"))
    return false;
  {
    const char *cond;
    if (isIntelCondJump (pl, &cond))
      return mightReadFlagCondition (cond, what);
  }
  if (lineIsInst (pl, "jmp") ||
      (lineIsInst (pl, "rlc") && !lineArg (pl, 0)) || (lineIsInst (pl, "rrc") && !lineArg (pl, 0)) ||
      lineIsInst (pl, "mov") || lineIsInst (pl, "mvi") || lineIsInst (pl, "lxi") || lineIsInst (pl, "lda") ||
      lineIsInst (pl, "sta") || lineIsInst (pl, "lhld") || lineIsInst (pl, "shld") || lineIsInst (pl, "ldax") ||
      lineIsInst (pl, "stax") || lineIsInst (pl, "xchg") || lineIsInst (pl, "xthl") || lineIsInst (pl, "sphl") ||
      lineIsInst (pl, "pchl") || lineIsInst (pl, "dad") || lineIsInst (pl, "inx") || lineIsInst (pl, "dcx") ||
      lineIsInst (pl, "inr") || lineIsInst (pl, "dcr"))
    return false;

  if(lineIsInst (pl, "ld") ||
     lineIsInst (pl, "or") ||
     lineIsInst (pl, "cp") ||
     lineIsInst (pl, "di") ||
     lineIsInst (pl, "ei") ||
     lineIsInst (pl, "im") ||
     lineIsInst (pl, "in"))
    return false;
  if(lineIsInst (pl, "nop") ||
     lineIsInst (pl, "add") ||
     lineIsInst (pl, "sub") ||
     lineIsInst (pl, "and") ||
     lineIsInst (pl, "xor") ||
     lineIsInst (pl, "dec") ||
     lineIsInst (pl, "inc") ||
     lineIsInst (pl, "cpl") ||
     lineIsInst (pl, "bit") ||
     lineIsInst (pl, "res") ||
     lineIsInst (pl, "set") ||
     lineIsInst (pl, "pop") ||
     lineIsInst (pl, "rlc") ||
     lineIsInst (pl, "rrc") ||
     lineIsInst (pl, "sla") ||
     lineIsInst (pl, "sra") ||
     lineIsInst (pl, "srl") ||
     lineIsInst (pl, "scf") ||
     lineIsInst (pl, "cpd") ||
     lineIsInst (pl, "cpi") ||
     lineIsInst (pl, "ind") ||
     lineIsInst (pl, "ini") ||
     lineIsInst (pl, "ldd") ||
     lineIsInst (pl, "ldi") ||
     lineIsInst (pl, "neg") ||
     lineIsInst (pl, "rld") ||
     lineIsInst (pl, "rrd") ||
     lineIsInst (pl, "mlt") ||
     lineIsInst (pl, "out"))
    return false;
  if(lineIsInst (pl, "halt") ||
     lineIsInst (pl, "rlca") ||
     lineIsInst (pl, "rrca") ||
     lineIsInst (pl, "cpdr") ||
     lineIsInst (pl, "cpir") ||
     lineIsInst (pl, "indr") ||
     lineIsInst (pl, "inir") ||
     lineIsInst (pl, "lddr") ||
     lineIsInst (pl, "ldir") ||
     lineIsInst (pl, "outd") ||
     lineIsInst (pl, "outi") ||
     lineIsInst (pl, "djnz"))
    return false;

  if(lineIsInst (pl, "rl") ||
     lineIsInst (pl, "rr") ||
     lineIsInst (pl, "rla") ||
     lineIsInst (pl, "rra") ||
     lineIsInst (pl, "sbc") ||
     lineIsInst (pl, "adc") ||
     lineIsInst (pl, "ccf"))
    return (!strcmp(what, "cf"));

  if(lineIsInst (pl, "daa"))
    return (!strcmp(what, "cf") || !strcmp(what, "nf") ||
            !strcmp(what, "hf"));

  if(lineIsInst (pl, "push"))
    return (argCont(pl->line + 4, "af"));

  if(lineIsInst (pl, "ex"))
    return (argCont(pl->line + 2, "af"));

  // catch c, nc, z, nz, po, pe, p and m
  if(lineIsInst (pl, "jp") ||
     lineIsInst (pl, "jr"))
    return (strchr(pl->line, ',') && mightReadFlagCondition(pl->line + 2, what));

  // flags don't matter according to calling convention
  if(lineIsInst (pl, "reti") ||
     lineIsInst (pl, "retn"))
    return false;

  if(lineIsInst (pl, "call"))
    return (strchr(pl->line, ',') && mightReadFlagCondition(pl->line + 4, what));

  if(lineIsInst (pl, "ret"))
    return (pl->line[3] == '\t' && mightReadFlagCondition(pl->line + 3, what));

  // we don't know anything about this
  if(lineIsInst (pl, "rst"))
    return true;

  /* 8085 undocumented instructions. dsub/arhl/ldhi/ldsi/lhlx/shlx read no
     flags; rdel reads carry, rstv reads the V flag, and jx5/jnx5 read the
     K/X5 flag - report those as reading flags so the flag-setting instruction
     before them is never optimized away. */
  if(lineIsInst (pl, "dsub") ||
     lineIsInst (pl, "arhl") ||
     lineIsInst (pl, "ldhi") ||
     lineIsInst (pl, "ldsi") ||
     lineIsInst (pl, "lhlx") ||
     lineIsInst (pl, "shlx"))
    return false;
  if(lineIsInst (pl, "rdel") ||
     lineIsInst (pl, "rstv") ||
     lineIsInst (pl, "jx5") ||
     lineIsInst (pl, "jnx5"))
    return true;

  printf("Warning: mightReadFlag unknown asm inst line: %s\n", pl->line);

  return true; // Fail-safe: we have no idea what happens at this line, so assume it might read anything.
}

static bool
mightRead(const lineNode *pl, const char *what)
{
  if(strcmp(what, "iyl") == 0 || strcmp(what, "iyh") == 0)
    what = "iy";
  if(strcmp(what, "ixl") == 0 || strcmp(what, "ixh") == 0)
    what = "ix";

  const char *larg = lineArg (pl, 0);
  const char *rarg = lineArg (pl, 1);

  /* Real, live i8085/i8080 output - see the "Intel-mnemonic instruction
     classification" block near the top of this file for the shared
     helpers used below. Each of gen.c's mnemonics is checked against
     exactly the registers it reads, per the 8085 data sheet and gen.c's
     own emission code (emit_A_LD()/emit_A_ARITH8()/etc.): mov reads its
     source; mvi/lxi/lda/lhld read nothing (their one non-implicit operand
     is always a literal or address, never a register - "m" as mvi's
     destination is the one exception, since forming that address still
     needs h and l); sta/shld read the value they store (a, or h and l);
     ldax/stax read the addressing pair (and stax also reads a, the value
     it stores); xchg/xthl/sphl/pchl/dad read exactly the pair(s) named in
     the 8085 data sheet's description of each; inx/dcx/dad read (and, for
     inx/dcx, also write - see surelyWrites() below) their one pair
     operand; inr/dcr read their one operand (again, "m" meaning h and l);
     the 8-bit arithmetic family and cma/daa always read a (the implicit
     operand), plus - register/M form only, never the immediate form -
     the one explicit operand; cmc/stc/jmp/j<cc> read no register at all
     (flag-only or control-flow-only). */
  {
    bool immediate, writes_a;
    int idx = intelArith8 (pl, &immediate, &writes_a);
    if (idx >= 0)
      {
        if (!strcmp (what, "a"))
          return true;
        if (immediate)
          return false;
        {
          const char *op = lineArg (pl, 0);
          return isIntelM (op) ? isHOrL (what) : argCont (op, what);
        }
      }
  }
  if (lineIsInst (pl, "mov"))
    {
      /* Either side (never both - "mov m, m" is not encodable) can be
         "m"; forming that address reads h and l regardless of which
         side it is on ("mov m, a" reads h/l just as much as "mov a, m"
         does - the destination needs the address exactly like the
         source does), on top of whatever the source register itself
         contributes. */
      const char *dst = lineArg (pl, 0);
      const char *src = lineArg (pl, 1);
      if (isHOrL (what) && (isIntelM (dst) || isIntelM (src)))
        return true;
      return isIntelM (src) ? false : argCont (src, what);
    }
  if (lineIsInst (pl, "mvi"))
    return isIntelM (lineArg (pl, 0)) && isHOrL (what);
  if (lineIsInst (pl, "lxi") || lineIsInst (pl, "lda") || lineIsInst (pl, "lhld"))
    return false;
  if (lineIsInst (pl, "sta"))
    return !strcmp (what, "a");
  if (lineIsInst (pl, "shld"))
    return isHOrL (what);
  if (lineIsInst (pl, "ldax") || lineIsInst (pl, "stax"))
    {
      char hi, lo;
      bool is_sp;
      intelPairOperand (lineArg (pl, 0), &hi, &lo, &is_sp);
      return (lineIsInst (pl, "stax") && !strcmp (what, "a")) || isPairReg (what, hi, lo);
    }
  if (lineIsInst (pl, "xchg"))
    return (!strcmp (what, "d") || !strcmp (what, "e") || !strcmp (what, "h") || !strcmp (what, "l"));
  if (lineIsInst (pl, "xthl"))
    return (isHOrL (what) || !strcmp (what, "sp"));
  if (lineIsInst (pl, "sphl") || lineIsInst (pl, "pchl"))
    return isHOrL (what);
  if (lineIsInst (pl, "dad") || lineIsInst (pl, "inx") || lineIsInst (pl, "dcx"))
    {
      char hi, lo;
      bool is_sp;
      intelPairOperand (lineArg (pl, 0), &hi, &lo, &is_sp);
      return (lineIsInst (pl, "dad") && isHOrL (what)) || (is_sp && !strcmp (what, "sp")) || isPairReg (what, hi, lo);
    }
  if (lineIsInst (pl, "inr") || lineIsInst (pl, "dcr"))
    {
      const char *op = lineArg (pl, 0);
      return isIntelM (op) ? isHOrL (what) : argCont (op, what);
    }
  if ((lineIsInst (pl, "rlc") && !lineArg (pl, 0)) || (lineIsInst (pl, "rrc") && !lineArg (pl, 0)) ||
      lineIsInst (pl, "ral") || lineIsInst (pl, "rar") || lineIsInst (pl, "cma") || lineIsInst (pl, "daa"))
    return !strcmp (what, "a");
  if (lineIsInst (pl, "cmc") || lineIsInst (pl, "stc") || lineIsInst (pl, "jmp") || isIntelCondJump (pl, NULL))
    return false;

  if(lineIsInst (pl, "call") && strcmp(what, "sp") == 0)
    return TRUE;

  if(strcmp(pl->line, "call\t__initrleblock") == 0 && (strchr(what, 'd') != 0 || strchr(what, 'e') != 0))
    return TRUE;

  if((strcmp(pl->line, "call\t___sdcc_call_hl") == 0 || larg && !strncmp (larg, "(hl)", 4)) && (strchr(what, 'h') != 0 || strchr(what, 'l') != 0))
    return true;

  else if((strcmp(pl->line, "call\t___sdcc_call_iy") == 0 || larg && !strncmp (larg, "(iy)", 4)) && strstr(what, "iy") != 0)
    return true;

  if(strncmp(pl->line, "call\t___sdcc_bcall_", 19) == 0)
    if (strchr (what, pl->line[19]) != 0 || strchr (what, pl->line[20]) != 0 || strchr (what, pl->line[21]) != 0)
      return TRUE;

  if(lineIsInst (pl, "call") && strchr(pl->line, ',') == 0)
    {
      const symbol *f = findSym (SymbolTab, 0, pl->line + 6);
      if (f && IS_FUNC (f->type))
        return i8085_IsParmInCall(f->type, what);
      else // Fallback needed for calls through function pointers and for calls to literal addresses.
        return mightBeParmInCallFromCurrentFunction(what);
    }

  if(lineIsInst (pl, "reti") || lineIsInst (pl, "retn"))
    return(strcmp(what, "sp") == 0);

  if(lineIsInst (pl, "ret")) // No IY on this port, so no separate IY-return-value case is needed here.
    return(i8085_IsReturned(what) || mightBeParmInCallFromCurrentFunction(what)) || strcmp(what, "sp") == 0;

  if (lineIsInst (pl, "ex") && larg && rarg)
    {
      if (!strncmp (larg, "(sp)", 4) && !strncmp (rarg, "hl", 2))
        return(!strcmp (what, "h") || !strcmp (what, "l") || !strcmp (what, "sp"));
      if (!strncmp (larg, "(sp)", 4) && !strncmp (rarg, "ix", 2))
        return(!strcmp (what, "ix") || !strcmp (what, "sp"));
      if (!strncmp (larg, "(sp)", 4) && !strncmp (rarg, "iy", 2))
        return(!strcmp (what, "iy") || !strcmp (what, "sp"));
      if (!strncmp (larg, "af", 2) && !strncmp (rarg, "af'", 3))
        return(!strcmp (what, "a"));
      if (!strncmp (larg, "de", 2) && !strncmp (rarg, "hl", 2))
        return(!strcmp (what, "h") || !strcmp (what, "l") || !strcmp (what, "d") || !strcmp (what, "e"));
    }
  if (lineIsInst (pl, "exx"))
    return(!strcmp (what, "b") || !strcmp (what, "c") ||!strcmp (what, "d") || !strcmp (what, "e") || !strcmp (what, "h") || !strcmp (what, "l") || !strcmp (what, "j") || !strcmp (what, "k"));

  if(lineIsInst (pl, "ld"))
    {
      if(argCont(strchr(pl->line, ','), what))
        return(true);
      if(*(strchr(pl->line, ',') - 1) == ')' && strstr(pl->line + 3, what) &&
        (strchr(pl->line, '#') == 0 || strchr(pl->line, '#') > strchr(pl->line, ',')) &&
        (strchr(pl->line, '_') == 0 || strchr(pl->line, '_') > strchr(pl->line, ',')))
        return(true);
      if (!strcmp(what, "sp") && strchr(pl->line, '(')) // Assume any indirect memory access to be a possible stack access. This avoids optimizing out stackframe setups for local variables (bug #3173).
        return(true);
      return(false);
    }


  // Sometimes the result and flags do not depend on the value of the operands.
  if (larg &&
    (lineIsInst (pl, "cp") ||
    lineIsInst (pl, "sbc") ||
    lineIsInst (pl, "sbc") ||
    lineIsInst (pl, "xor")))
    {
      if (!strncmp (larg, "a, a", 4) || !strncmp (larg, "hl, hl", 6) || !strncmp (larg, "iy, iy", 6))
        return(false);
    }

  //ld a, #0x00
  if(!strcmp(pl->line, "and\ta, #0x00") || !strcmp(pl->line, "and\ta,#0x00") || !strcmp(pl->line, "and\t#0x00"))
    return(false);

  //ld a, #0xff
  if(!strcmp(pl->line, "or\ta, #0xff") || !strcmp(pl->line, "or\ta,#0xff") || !strcmp(pl->line, "or\t#0xff"))
    return(false);

  if (larg &&
    (lineIsInst (pl, "adc") ||
    lineIsInst (pl, "add") ||
    lineIsInst (pl, "and") ||
    lineIsInst (pl, "or") ||
    lineIsInst (pl, "cp") ||
    lineIsInst (pl, "sbc") ||
    lineIsInst (pl, "sub") ||
    lineIsInst (pl, "xor")))
    {
      if (!rarg) // Basic support for asm syntax variant that omits left operand on 8-bit oeprations.
        {
          rarg = larg;
          larg = "a";
        }
      if (larg[0] == 'a' && larg[1] == ',')
        {
          if (!strcmp(what, "a"))
            return(true);
        }
      else if (!strncmp (larg, "hl", 2) && larg[2] == ',') // add hl, rr
        {
          if (!strcmp(what, "h") || !strcmp(what, "l"))
            return(true);
        }
      else if (!strncmp(larg, "sp", 2) && larg[2] == ',') // add sp, rr
        {
          if (!strcmp(what, "sp"))
            return(true);
        }
      else if (larg[0] == 'i') // add ix/y, rr
        {
          if (!strncmp (larg, what, 2))
            return(true);
        }
      return (argCont (rarg, what));
    }

  if(lineIsInst (pl, "neg"))
    return(strcmp(what, "a") == 0);

  if(lineIsInst (pl, "pop"))
    return(strcmp(what, "sp") == 0);

  if (larg && lineIsInst (pl, "push"))
    return (strstr (larg, what) || !strcmp(what, "sp"));

  if (larg && (lineIsInst (pl, "dec") || lineIsInst (pl, "inc")))
    {
      return (argCont (larg, what));
    }

  if(lineIsInst (pl, "cpl"))
    return(!strcmp(what, "a"));

  if(lineIsInst (pl, "di") || lineIsInst (pl, "ei"))
    return(false);

  // Rotate and shift group
  if(lineIsInst (pl, "rlca") ||
     lineIsInst (pl, "rla")  ||
     lineIsInst (pl, "rrca") ||
     lineIsInst (pl, "rra")  ||
     lineIsInst (pl, "daa"))
    {
      return(strcmp(what, "a") == 0);
    }
  if (larg &&
    (lineIsInst (pl, "rl") ||
    lineIsInst (pl, "rlc") ||
    lineIsInst (pl, "sla") ||
    lineIsInst (pl, "rr") ||
    lineIsInst (pl, "rrc") ||
    lineIsInst (pl, "sra") ||
    lineIsInst (pl, "srl")))
    {
      return (argCont (larg, what));
    }
  if(lineIsInst (pl, "rld") || lineIsInst (pl, "rrd"))
    return(!!strstr("ahl", what));

  // Bit set, reset and test group
  if (lineIsInst (pl, "bit") ||
    lineIsInst (pl, "set") ||
    lineIsInst (pl, "res"))
    {
      return (argCont (rarg, what));
    }

  if(lineIsInst (pl, "ccf") ||
    lineIsInst (pl, "scf")  ||
    lineIsInst (pl, "nop")  ||
    lineIsInst (pl, "halt"))
    return(false);

  if(lineIsInst (pl, "jp") || lineIsInst (pl, "jr"))
    return(false);

  if(lineIsInst (pl, "djnz"))
    return(strchr(what, 'b') != 0);

  if(lineIsInst (pl, "ldd") || lineIsInst (pl, "lddr") || lineIsInst (pl, "ldi") || lineIsInst (pl, "ldir"))
    return(strchr("bcdehl", *what));

  if(lineIsInst (pl, "cpd") || lineIsInst (pl, "cpdr") || lineIsInst (pl, "cpi") || lineIsInst (pl, "cpir"))
    return(strchr("abchl", *what));

  /* Real, live i8085/i8080 in/out: single-operand, port address only -
     the accumulator is implicit on both sides (gen.c's own comments at
     the "in !mems"/"out %s" emission sites call this out explicitly:
     "Intel's IN is single-operand (port only); the accumulator is
     implicit, unlike Zilog's 'in a, (port)'"). out reads a (the value
     being sent) and nothing else; in reads nothing at all (the value
     comes from hardware, not a register) and writes a - see
     surelyWrites() below. Zilog's "in r,(c)"/"out (c),r" (port
     addressed via c, not a fixed immediate) has no 8080/8085 hardware
     equivalent at all, so there is no second case to handle here the
     way mightReadFlag()'s equivalent check needs one.
     This replaces, rather than sits alongside, the two mnemonics'
     previous Zilog-shaped checks: those assumed a comma always exists
     in the line (finding the port operand via strchr(pl->line+4, ','),
     then handing that pointer straight to strstr with no NULL check) -
     true for Zilog's two-operand form, never true for Intel's real
     single-operand one, so every real "in"/"out" line crashed the
     compiler outright (SIGSEGV) the moment any peephole rule's
     notUsed()-style scan walked through one - confirmed via gdb
     (bug-3165.c and bug3379723.c, both __sfr port access, are what
     surfaced it). Kept for real Zilog input this port never
     produces, the old code would still crash even in Zilog's own
     comma-shaped case if that comma-derived strstr ever found nothing
     to match, an existing latent bug in the shared lineage this exact
     mnemonic pair happened to expose here first - not preserved, since
     this check now unconditionally intercepts both mnemonics before
     the old code could ever run again regardless of dialect. */
  if (lineIsInst (pl, "out"))
    return !strcmp (what, "a");
  if (lineIsInst (pl, "in"))
    return false;

  if(lineIsInst (pl, "ini") || lineIsInst (pl, "ind") || lineIsInst (pl, "inir") || lineIsInst (pl, "indr") ||
    lineIsInst (pl, "outi") || lineIsInst (pl, "outd") || lineIsInst (pl, "otir") || lineIsInst (pl, "otdr"))
    return(strchr("bchl", *what));

  /* TODO: Can we know anything about rst? */
  if(lineIsInst (pl, "rst"))
    return(true);

  /* 8085 undocumented instructions: the registers each one reads. */
  if(lineIsInst (pl, "dsub"))                                    /* HL = HL - BC */
    return (strchr(what, 'h') || strchr(what, 'l') || strchr(what, 'b') || strchr(what, 'c'));
  if(lineIsInst (pl, "arhl") || lineIsInst (pl, "ldhi"))         /* HL>>1 ; DE = HL + imm */
    return (strchr(what, 'h') || strchr(what, 'l'));
  if(lineIsInst (pl, "rdel") || lineIsInst (pl, "lhlx"))         /* DE rotate ; HL = (DE) */
    return (strchr(what, 'd') || strchr(what, 'e'));
  if(lineIsInst (pl, "ldsi"))                                    /* DE = SP + imm */
    return (!strcmp(what, "sp"));
  if(lineIsInst (pl, "shlx"))                                    /* (DE) = HL */
    return (strchr(what, 'd') || strchr(what, 'e') || strchr(what, 'h') || strchr(what, 'l'));
  if(lineIsInst (pl, "jx5") || lineIsInst (pl, "jnx5"))          /* conditional jumps: no register reads */
    return false;
  if(lineIsInst (pl, "rstv"))                                    /* conditional restart: may touch sp */
    return true;

  printf("Warning: mightRead unknown asm inst line: %s\n", pl->line);

  return(true);
}

static bool
uncondJump(const lineNode *pl)
{
  /* pchl is an indirect unconditional jump (to whatever address is in
     hl); its target is never a resolvable label, so findLabel() (called
     on this line by scan4op() once uncondJump() says yes) fails to
     resolve it exactly the same way it already does for a jump through
     an unrecognized/computed target, and scan4op() falls back to
     S4O_ABORT - the safe, conservative outcome, not a special case that
     needs its own handling here. */
  if (lineIsInst (pl, "jmp") || lineIsInst (pl, "pchl"))
    return TRUE;
  /* Guard against Zilog's own bare "jp label" (unconditional - no comma)
     below: gen.c's real, live "jp" is always the fused-mnemonic
     conditional jump-if-sign-positive (isIntelCondJump() above), which
     also never has a comma - see isIntelCondJump()'s own comment on why
     these two same-spelled, opposite-meaning forms don't otherwise
     collide. Must not treat that as unconditional here. */
  if (isIntelCondJump (pl, NULL))
    return FALSE;
  if((lineIsInst (pl, "jp") || lineIsInst (pl, "jr")) &&
     strchr(pl->line, ',') == 0)
    return TRUE;
  return FALSE;
}

static bool
condJump(const lineNode *pl)
{
  if (isIntelCondJump (pl, NULL))
    return TRUE;
  if(((lineIsInst (pl, "jp") || lineIsInst (pl, "jr")) &&
      strchr(pl->line, ',') != 0) ||
     lineIsInst (pl, "djnz"))
    return TRUE;
  return FALSE;
}

// TODO: z80 flags only partly implemented
static bool
surelyWritesFlag(const lineNode *pl, const char *what)
{
  /* Real, live i8085/i8080 output, cross-checked against the 8085 data
     sheet's flag-effect table for each of these:
       - the 8-bit arithmetic family (add/adc/sub/sbb/ana/xra/ora/cmp and
         their immediate forms) always redefines all five real flags
         (s/z/ac/p/cy - "nf" does not exist on this hardware at all, so
         it is included in the same "always" bucket: nothing ever reads
         it either, per mightReadFlag() above, so what happens to it is
         immaterial);
       - dad only ever touches cy (s/z/ac/p are documented as
         unaffected - unlike the 8-bit adds above, this is a real
         asymmetry, not an oversight);
       - inx/dcx touch no flags at all;
       - inr/dcr touch every flag but cy (same rule as this file's
         existing Zilog inc/dec case, just under Intel's split 8-bit
         mnemonic);
       - rlc/rrc/ral/rar (bare, accumulator forms only - the operand-less
         form is what distinguishes them from Zilog's per-register
         rlc/rrc, see mightRead()'s own comment) touch only cy;
       - cmc/stc redefine cy (cmc conditionally on the old value, but
         that is still a full redefinition for this predicate's purposes -
         see this function's fail-safe comment at the bottom for what
         "surely writes" means here); cma touches no flags at all (unlike
         Z80's cpl, which sets h and n - 8085's cma is flag-free);
       - daa redefines all five real flags, same bucket as the
         arithmetic family above;
       - jmp/j<cc>/mov/mvi/lxi/lda/sta/lhld/shld/ldax/stax/xchg/xthl/
         sphl/pchl touch no flags at all. */
  {
    bool immediate, writes_a;
    if (intelArith8 (pl, &immediate, &writes_a) >= 0 || lineIsInst (pl, "daa"))
      return !!strcmp (what, "nf");
  }
  if (lineIsInst (pl, "dad") ||
      (lineIsInst (pl, "rlc") && !lineArg (pl, 0)) || (lineIsInst (pl, "rrc") && !lineArg (pl, 0)) ||
      lineIsInst (pl, "ral") || lineIsInst (pl, "rar") || lineIsInst (pl, "cmc") || lineIsInst (pl, "stc"))
    return !strcmp (what, "cf");
  if (lineIsInst (pl, "inr") || lineIsInst (pl, "dcr"))
    return (!!strcmp (what, "cf") && !!strcmp (what, "nf"));
  if (lineIsInst (pl, "inx") || lineIsInst (pl, "dcx") || lineIsInst (pl, "cma") ||
      lineIsInst (pl, "jmp") || isIntelCondJump (pl, NULL) ||
      lineIsInst (pl, "mov") || lineIsInst (pl, "mvi") || lineIsInst (pl, "lxi") || lineIsInst (pl, "lda") ||
      lineIsInst (pl, "sta") || lineIsInst (pl, "lhld") || lineIsInst (pl, "shld") || lineIsInst (pl, "ldax") ||
      lineIsInst (pl, "stax") || lineIsInst (pl, "xchg") || lineIsInst (pl, "xthl") || lineIsInst (pl, "sphl") ||
      lineIsInst (pl, "pchl"))
    return false;

  /* LD instruction is never change flags except LD A,I and LD A,R.
    But it is most popular instruction so place it first */
  if(lineIsInst (pl, "ld"))
    {
      if(!!strcmp(what, "pf") ||
          !argCont(pl->line+3, "a"))
        return false;
      const char *p = strchr(pl->line+4, ',');
      if (p == NULL)
        return false; /* unknown instruction */
      ++p;
      return argCont(p, "i") || argCont(p, "r");
    }

  /* Real, live i8085/i8080 in: single-operand (see mightRead()'s own
     comment on this same mnemonic pair) and touches no flags at all on
     real 8080/8085 hardware. Replaces, not just precedes, the old
     Zilog-shaped check below it: that one assumed a comma always
     exists in the line to find Zilog's "in r,(c)" port-via-c form (no
     8080/8085 hardware equivalent - see mightRead()'s comment), and
     crashed (NULL passed to strstr) on every real "in" line, the exact
     same class of bug as mightRead()'s in/out fix, caught the same way
     (gdb, bug-3165.c/bug3379723.c). This check now unconditionally
     intercepts every "in" line before the old one could run again. */
  if (lineIsInst (pl, "in"))
    return false;

  if(lineIsInst (pl, "rlca") ||
     lineIsInst (pl, "rrca") ||
     lineIsInst (pl, "rra")  ||
     lineIsInst (pl, "rla"))
    return(!!strcmp(what, "zf") && !!strcmp(what, "sf") && !!strcmp(what, "pf"));

  if(lineIsInst (pl, "adc") ||
     lineIsInst (pl, "and") ||
     lineIsInst (pl, "sbc") ||
     lineIsInst (pl, "sub") ||
     lineIsInst (pl, "xor") ||
     lineIsInst (pl, "and") ||
     lineIsInst (pl, "rlc") ||
     lineIsInst (pl, "rrc") ||
     lineIsInst (pl, "sla") ||
     lineIsInst (pl, "sra") ||
     lineIsInst (pl, "srl") ||
     lineIsInst (pl, "neg"))
    return true;

  if(lineIsInst (pl, "or") ||
     lineIsInst (pl, "cp") ||
     lineIsInst (pl, "rl") ||
     lineIsInst (pl, "rr"))
    return true;

  if(lineIsInst (pl, "bit") ||
     lineIsInst (pl, "cpd") ||
     lineIsInst (pl, "cpi") ||
     lineIsInst (pl, "ind") ||
     lineIsInst (pl, "ini") ||
     lineIsInst (pl, "rrd"))
    return (!!strcmp(what, "cf"));

  if(lineIsInst (pl, "cpdr") ||
     lineIsInst (pl, "cpir") ||
     lineIsInst (pl, "indr") ||
     lineIsInst (pl, "inir") ||
     lineIsInst (pl, "otdr") ||
     lineIsInst (pl, "otir") ||
     lineIsInst (pl, "outd") ||
     lineIsInst (pl, "outi"))
    return (!!strcmp(what, "cf"));

  if(lineIsInst (pl, "daa"))
    return (!!strcmp(what, "nf"));

  if(lineIsInst (pl, "ccf") ||
    lineIsInst (pl, "scf"))
    return (!strcmp(what, "hf") || !strcmp(what, "nf") || !strcmp(what, "cf"));

  if(lineIsInst (pl, "cpl"))
    return (!strcmp(what, "hf") || !strcmp(what, "nf"));

  if(lineIsInst (pl, "inc") || lineIsInst (pl, "dec"))
    {
      // 8-bit inc affects all flags other than c.
      if (strlen(pl->line + 4) == 1 || // 8-bit register
        !strcmp(pl->line + 4, "(hl)") ||
        !strcmp(pl->line + 6, "(ix)") ||
        !strcmp(pl->line + 6, "(iy)"))
        return (!!strcmp(what, "cf"));
      return false; // 16-bit inc does not affect flags.
    }

  if(lineIsInst (pl, "add"))
    return (argCont(pl->line + 4, "a") ||
           (!!strcmp(what, "zf") && !!strcmp(what, "sf") && !!strcmp(what, "pf")));

  if(lineIsInst (pl, "ldd") ||
    lineIsInst (pl, "lddr") ||
    lineIsInst (pl, "ldi") ||
    lineIsInst (pl, "ldir"))
    return (!strcmp(what, "hf") || !strcmp(what, "pf") || !strcmp(what, "nf"));

  // pop af writes
  if(lineIsInst (pl, "pop"))
    return (argCont(pl->line + 4, "af"));

  // according to calling convention caller has to save flags
  if(lineIsInst (pl, "ret") ||
     lineIsInst (pl, "call"))
    return true;

  if(lineIsInst (pl, "rld") ||
    lineIsInst (pl, "rrd"))
    return (!strcmp(what, "hf") || !strcmp(what, "pf") || !strcmp(what, "nf"));

  if(lineIsInst (pl, "di") ||
    lineIsInst (pl, "djnz") ||
    lineIsInst (pl, "ei") ||
    lineIsInst (pl, "ex") ||
    lineIsInst (pl, "nop") ||
    lineIsInst (pl, "out") ||
    lineIsInst (pl, "push") ||
    lineIsInst (pl, "res") ||
    lineIsInst (pl, "set"))
    return false;

  /* handle IN0 r,(n) and IN r,(c) instructions */
  if(lineIsInst (pl, "in0") || (lineIsInst (pl, "in") && (!strcmp(pl->line+5, "(c)") || !strcmp(pl->line+5, "(bc)"))))
    return (!!strcmp(what, "cf"));

  if(lineIsInst (pl, "mlt"))
    return true; // mlt (Z80N-only multiply) never appears in this port's output; kept for parity with the shared dispatch shape.

  // pop af writes
  if(lineIsInst (pl, "pop.l"))
    return (argCont(pl->line + 6, "af"));

  /* 8085 undocumented instructions. ldhi/ldsi/lhlx/shlx and the jumps
     jx5/jnx5/rstv touch no flags; dsub/arhl/rdel do, but reporting "not sure"
     (false) is the safe, conservative answer here (it only prevents the
     peephole from treating them as killing an earlier flag definition). */
  if(lineIsInst (pl, "dsub") || lineIsInst (pl, "arhl") || lineIsInst (pl, "rdel") ||
     lineIsInst (pl, "ldhi") || lineIsInst (pl, "ldsi") ||
     lineIsInst (pl, "lhlx") || lineIsInst (pl, "shlx") ||
     lineIsInst (pl, "jx5")  || lineIsInst (pl, "jnx5") || lineIsInst (pl, "rstv"))
    return false;

  printf("Warning: surelyWritesFlag unknown asm inst line: %s\n", pl->line);

  return false; // Fail-safe: we have no idea what happens at this line, so assume it writes nothing.
}

static bool
callSurelyWrites (const lineNode *pl, const char *what)
{
  const symbol *f = 0;
  if (lineIsInst (pl, "call") && !strchr(pl->line, ','))
    f = findSym (SymbolTab, 0, pl->line + 6);
  else if (lineIsInst (pl, "jmp") && lineArg (pl, 0)) // real, live tail-call form - see uncondJump()
    f = findSym (SymbolTab, 0, lineArg (pl, 0));
  else if ((lineIsInst (pl, "jp") || lineIsInst (pl, "jr")) && !strchr(pl->line, ','))
    f = findSym (SymbolTab, 0, pl->line + 4);

  const bool *preserved_regs;

  if (f && (strlen(what) == 2 && what[1] == 'f')) // Flags are never preserved across function calls.
    return(true);

  if(!strcmp(what, "ix"))
    return(false);

  if(f)
    preserved_regs = f->type->funcAttrs.preserved_regs;
  else if (lineIsInst (pl, "call"))
    preserved_regs = i8085_regs_preserved_in_calls_from_current_function;
  else // Err on the safe side for jmp/jp/jr - might not be a function call, might e.g. be a jump table.
    return (false);

  if (!strcmp (what, "a"))
    return !preserved_regs[A_IDX];
  if (!strcmp (what, "c"))
    return !preserved_regs[C_IDX];
  if (!strcmp (what, "b"))
    return !preserved_regs[B_IDX];
  if (!strcmp (what, "e"))
    return !preserved_regs[E_IDX];
  if (!strcmp (what, "d"))
    return !preserved_regs[D_IDX];
  if (!strcmp (what, "l"))
    return !preserved_regs[L_IDX];
  if (!strcmp (what, "h"))
    return !preserved_regs[H_IDX];
  if (!strcmp (what, "iyl"))
    return !preserved_regs[IYL_IDX];
  if (!strcmp (what, "iyh"))
    return !preserved_regs[IYH_IDX];
  if (!strcmp (what, "iy"))
    return !preserved_regs[IYL_IDX] && !preserved_regs[IYH_IDX];

  return (false);
}

static bool
surelyWrites (const lineNode *pl, const char *what)
{
  if(strcmp(what, "iyl") == 0 || strcmp(what, "iyh") == 0)
    what = "iy";
  if(strcmp(what, "ixl") == 0 || strcmp(what, "ixh") == 0)
    what = "ix";

  const char *larg = lineArg (pl, 0);
  const char *rarg = lineArg (pl, 1);

  /* Real, live i8085/i8080 output - registers surely (re)written, mirror
     of the read side in mightRead() above. "m" as a destination (mov/mvi
     writing through hl, or the arithmetic family and inr/dcr targeting
     "m" implicitly) writes memory, never the h/l registers themselves -
     the opposite of mightRead()'s treatment, where using "m" at all
     (read or write position) means reading h and l to form the address.
     dad surely writes h and l (the sum), but never the source pair it
     read; ldax/sta/shld/cmc/stc/pchl/jmp/j<cc> write no register at all
     (sta/shld/pchl only affect memory or the program counter). */
  {
    bool immediate, writes_a;
    int idx = intelArith8 (pl, &immediate, &writes_a);
    if (idx >= 0)
      return writes_a && !strcmp (what, "a");
  }
  if (lineIsInst (pl, "mov"))
    {
      const char *dst = lineArg (pl, 0);
      return !isIntelM (dst) && argCont (dst, what);
    }
  if (lineIsInst (pl, "mvi"))
    {
      const char *dst = lineArg (pl, 0);
      return !isIntelM (dst) && argCont (dst, what);
    }
  if (lineIsInst (pl, "lxi") || lineIsInst (pl, "inx") || lineIsInst (pl, "dcx"))
    {
      char hi, lo;
      bool is_sp;
      intelPairOperand (lineArg (pl, 0), &hi, &lo, &is_sp);
      return (is_sp && !strcmp (what, "sp")) || isPairReg (what, hi, lo);
    }
  if (lineIsInst (pl, "lda") || lineIsInst (pl, "ldax") ||
      (lineIsInst (pl, "rlc") && !lineArg (pl, 0)) || (lineIsInst (pl, "rrc") && !lineArg (pl, 0)) ||
      lineIsInst (pl, "ral") || lineIsInst (pl, "rar") || lineIsInst (pl, "cma") || lineIsInst (pl, "daa"))
    return !strcmp (what, "a");
  if (lineIsInst (pl, "lhld"))
    return isHOrL (what);
  if (lineIsInst (pl, "xchg") || lineIsInst (pl, "xthl"))
    return isHOrL (what) || (lineIsInst (pl, "xchg") && (!strcmp (what, "d") || !strcmp (what, "e")));
  if (lineIsInst (pl, "sphl"))
    return !strcmp (what, "sp");
  if (lineIsInst (pl, "inr") || lineIsInst (pl, "dcr"))
    {
      const char *op = lineArg (pl, 0);
      return !isIntelM (op) && argCont (op, what);
    }
  if (lineIsInst (pl, "dad"))
    return isHOrL (what);
  if (lineIsInst (pl, "sta") || lineIsInst (pl, "shld") || lineIsInst (pl, "stax") ||
      lineIsInst (pl, "cmc") || lineIsInst (pl, "stc") || lineIsInst (pl, "pchl") ||
      lineIsInst (pl, "jmp") || isIntelCondJump (pl, NULL))
    return false;

  //ld a, #0x00
  if((lineIsInst (pl, "xor") || lineIsInst (pl, "sub")) && !strcmp(what, "a") &&
     (!strcmp(pl->line+4, "a, a") || !strcmp(pl->line+4, "a,a") || (!strchr(pl->line, ',') && !strcmp(pl->line+4, "a"))))
    return(true);

  //ld a, #0x00
  if(!strcmp(what, "a") && (!strcmp(pl->line, "and\ta, #0x00") || !strcmp(pl->line, "and\ta,#0x00") || !strcmp(pl->line, "and\t#0x00")))
    return(true);

  //ld a, #0xff
  if(!strcmp(what, "a") && (!strcmp(pl->line, "or\ta, #0xff") || !strcmp(pl->line, "or\ta,#0xff") || !strcmp(pl->line, "or\t#0xff")))
    return(true);

  if (lineIsInst (pl, "adc") ||
    lineIsInst (pl, "add") ||
    lineIsInst (pl, "and") ||
    lineIsInst (pl, "dec") ||
    lineIsInst (pl, "inc") ||
    lineIsInst (pl, "or") ||
    lineIsInst (pl, "sbc") ||
    lineIsInst (pl, "sra") ||
    lineIsInst (pl, "srl") ||
    lineIsInst (pl, "sub") ||
    lineIsInst (pl, "xor"))
    {
      if (!strcmp (what, "a") && larg && larg[0] == 'a')
        return(true);
      if ((!strcmp (what, "h") || !strcmp (what, "l")) && larg && !strncmp (larg, "hl", 2))
        return(true);
      return(false);
    }

  if (lineIsInst (pl, "ccf") ||
    lineIsInst (pl, "ei") ||
    lineIsInst (pl, "di") ||
    lineIsInst (pl, "scf"))
    return (false);

  if (lineIsInst (pl, "cp"))
    return (false);

  if (lineIsInst (pl, "cpl") ||
    lineIsInst (pl, "daa") ||
    lineIsInst (pl, "rla") ||
    lineIsInst (pl, "rra") ||
    lineIsInst (pl, "rlca") ||
    lineIsInst (pl, "rrca"))
    return (what[0] == 'a');

  if (larg && lineIsInst (pl, "ex"))
    return (strstr (larg, what) || strstr (rarg, what));

  if (larg && lineIsInst (pl, "ld") && (larg[0] == '-' || larg[0] == '(' || isdigit (larg[0])))
    return (false);
  if (larg && lineIsInst (pl, "ld") && !strncmp (larg, "hl,", 3))
    return(what[0] == 'h' || what[0] == 'l');
  if (larg && lineIsInst (pl, "ld") && !strncmp (larg, "de,", 3))
    return(what[0] == 'd' || what[0] == 'e');
  if (larg && lineIsInst (pl, "ld") && !strncmp (larg, "bc,", 3))
    return(what[0] == 'b' || what[0] == 'c');
  if (larg && lineIsInst (pl, "ld") && !strncmp (larg, "ix,", 3))
    return(!strcmp (what, "ix"));
  if (larg && lineIsInst (pl, "ld") && !strncmp (larg, "iy,", 3))
    return(!strcmp (what, "iy"));
  /* Real, live i8085/i8080 in/out (see mightRead()'s own comment on
     this mnemonic pair): in writes a (the value read from the port);
     out writes no register at all (only a memory-mapped port, which
     this predicate isn't asking about). Checked before the "ld"/"in"
     combination below, which - unlike mightRead()'s and
     surelyWritesFlag()'s equivalent Zilog-shaped in/out checks - reads
     larg (already NULL-safe, not a raw strchr(pl->line+N, ',') offset)
     and so was never a crash risk here, just silent on the one
     question that actually matters for "in": whether it writes a. */
  if (lineIsInst (pl, "out"))
    return false;
  if (lineIsInst (pl, "in"))
    return !strcmp (what, "a");

  if (larg && (lineIsInst (pl, "ld") || lineIsInst (pl, "in"))
    && strlen(what) > 1 && larg && larg[0] && larg[1] == ',')
    return (false);
  if (larg && ((lineIsInst (pl, "ld") || lineIsInst (pl, "in")))
    && strlen (larg) >= strlen (what) && larg[strlen (what)] == ',')
    return (!strncmp (larg, what, strlen (what)));

  if (lineIsInst (pl, "ldir") || lineIsInst (pl, "lddr"))
    return(strchr ("bcdehl", *what));

  if (larg && lineIsInst (pl, "pop") && !strncmp (larg, "af", 2))
    return (what[0] == 'a');
  else if (larg && lineIsInst (pl, "pop") && !strncmp (larg, "ix", 2))
    return (!strcmp (what, "ix"));
  else if (larg && lineIsInst (pl, "pop") && !strncmp (larg, "iy", 2))
    return (!strcmp (what, "iy"));
  else if (larg && lineIsInst (pl, "pop"))
    return (strstr (larg, what));
  
  if (lineIsInst (pl, "call") && strchr(pl->line, ',') == 0)
    return (callSurelyWrites (pl, what));

  if(strcmp(pl->line, "ret") == 0)
    return true;

  if(lineIsInst (pl, "bit") ||
    lineIsInst (pl, "push"))
    return (false);

  //printf("Warning: surelyWrites unknown asm inst line: %s\n", pl->line);
  //printf("larg '%s' what '%s'\n", larg ? larg : "", what);

  return(false);
}

static bool
surelyReturns(const lineNode *pl)
{
  if(strcmp(pl->line, "ret") == 0)
    return TRUE;
  return FALSE;
}

/*-----------------------------------------------------------------*/
/* scan4op - "executes" and examines the assembler opcodes,        */
/* follows conditional and un-conditional jumps.                   */
/* Moreover it registers all passed labels.                        */
/*                                                                 */
/* Parameter:                                                      */
/*    lineNode **pl                                                */
/*       scanning starts from pl;                                  */
/*       pl also returns the last scanned line                     */
/*    const char *pReg                                             */
/*       points to a register (e.g. "ar0"). scan4op() tests for    */
/*       read or write operations with this register               */
/*    const char *untilOp                                          */
/*       points to NULL or a opcode (e.g. "push").                 */
/*       scan4op() returns if it hits this opcode.                 */
/*    lineNode **plCond                                            */
/*       If a conditional branch is met plCond points to the       */
/*       lineNode of the conditional branch                        */
/*                                                                 */
/* Returns:                                                        */
/*    S4O_ABORT                                                    */
/*       on error                                                  */
/*    S4O_VISITED                                                  */
/*       hit lineNode with "visited" flag set: scan4op() already   */
/*       scanned this opcode.                                      */
/*    S4O_FOUNDOPCODE                                              */
/*       found opcode and operand, to which untilOp and pReg are   */
/*       pointing to.                                              */
/*    S4O_RD_OP, S4O_WR_OP                                         */
/*       hit an opcode reading or writing from pReg                */
/*    S4O_CONDJMP                                                  */
/*       hit a conditional jump opcode. pl and plCond return the   */
/*       two possible branches.                                    */
/*    S4O_TERM                                                     */
/*       acall, lcall, ret and reti "terminate" a scan.            */
/*-----------------------------------------------------------------*/
static S4O_RET
scan4op (lineNode **pl, const char *what, const char *untilOp,
         lineNode **plCond)
{
  bool isFlag = (strlen(what) == 2 && what[1] == 'f');
  while (*pl)
    {
      if (!(*pl)->line || (*pl)->isDebug || (*pl)->isComment || (*pl)->isLabel)
        {
          *pl = (*pl)->next;
          continue;
        }
      D(("Scanning %s for %s\n", (*pl)->line, what));
      /* don't optimize across inline assembler,
         e.g. isLabel doesn't work there */
      if ((*pl)->isInline)
        {
          D(("S4O_RD_OP: Inline asm\n"));
          return S4O_ABORT;
        }

      if ((*pl)->visited)
        {
          D(("S4O_VISITED\n"));
          return S4O_VISITED;
        }

      (*pl)->visited = TRUE;

      if(isFlag ? mightReadFlag(*pl, what) : mightRead (*pl, what))
        {
          D(("S4O_RD_OP (flag)\n"));
          return S4O_RD_OP;
        }

      if (uncondJump (*pl))
        {
          lineNode *tlbl = findLabel (*pl);
          if (!tlbl) // jp/jr could be a tail call.
            {
              const symbol *f = findSym (SymbolTab, 0, (*pl)->line + 4);
              if (f && i8085_IsParmInCall(f->type, what))
                {
                  D (("S4O_RD_OP\n"));
                  return S4O_RD_OP;
                }
              else if(callSurelyWrites (*pl, what))
                {
                  D (("S4O_WR_OP\n"));
                  return S4O_WR_OP;
                }
            }
          *pl = tlbl;
          continue;
        }
      if (condJump(*pl))
        {
          *plCond = findLabel (*pl);
          if (!*plCond)
            {
              D (("S4O_ABORT\n"));
              return S4O_ABORT;
            }
          D (("S4O_CONDJMP\n"));
          return S4O_CONDJMP;
        }

      if (isFlag ? surelyWritesFlag (*pl, what) : surelyWrites(*pl, what))
        {
          D (("S4O_WR_OP (flag)\n"));
          return S4O_WR_OP;
        }

      /* Don't need to check for de, hl since mightRead() does that */
      if(surelyReturns(*pl))
        {
          D(("S4O_TERM\n"));
          return S4O_TERM;
        }

       *pl = (*pl)->next;
    }
  D(("S4O_ABORT\n"));
  return S4O_ABORT;
}

/*-----------------------------------------------------------------*/
/* doTermScan - scan through area 2. This small wrapper handles:   */
/* - action required on different return values                    */
/* - recursion in case of conditional branches                     */
/*-----------------------------------------------------------------*/
static bool
doTermScan (lineNode **pl, const char *what)
{
  lineNode *plConditional;

  for (;; *pl = (*pl)->next)
    {
      switch (scan4op (pl, what, NULL, &plConditional))
        {
          case S4O_TERM:
          case S4O_VISITED:
          case S4O_WR_OP:
            /* all these are terminating conditions */
            return TRUE;
          case S4O_CONDJMP:
            /* two possible destinations: recurse */
              {
                lineNode *pl2 = plConditional;
                D(("CONDJMP trying other branch first\n"));
                if (!doTermScan (&pl2, what))
                  return FALSE;
                D(("Other branch OK.\n"));
              }
            continue;
          case S4O_RD_OP:
          default:
            /* no go */
            return FALSE;
        }
    }
}

/* Regular 8 bit reg */
static bool
isReg(const char *what)
{
  if(strlen(what) != 1)
    return FALSE;
  switch(*what)
    {
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'h':
    case 'l':
      return TRUE;
    }
  return FALSE;
}

/* 8-Bit reg only accessible by 16-bit and undocumented instructions */
static bool
isUReg(const char *what)
{
  if(strcmp(what, "iyl") == 0 || strcmp(what, "iyh") == 0)
    return TRUE;
  if(strcmp(what, "ixl") == 0 || strcmp(what, "ixh") == 0)
    return TRUE;
  return FALSE;
}

static bool
isRegPair(const char *what)
{
  if(strlen(what) != 2)
    return FALSE;
  if(strcmp(what, "bc") == 0)
    return TRUE;
  if(strcmp(what, "de") == 0)
    return TRUE;
  if(strcmp(what, "hl") == 0)
    return TRUE;
  if(strcmp(what, "ix") == 0)
    return TRUE;
  if(strcmp(what, "iy") == 0)
    return TRUE;
  return FALSE;
}

/* Check that what is never read after endPl. */

bool
i8085_notUsed (const char *what, lineNode *endPl, lineNode *head)
{
  lineNode *pl;
  D(("Checking for %s\n", what));

  if(strcmp(what, "af") == 0)
    {
      if(!i8085_notUsed("a", endPl, head))
        return FALSE;
      what++;
    }

  if(strcmp(what, "f") == 0)
    return i8085_notUsed("zf", endPl, head) && i8085_notUsed("cf", endPl, head) &&
           i8085_notUsed("sf", endPl, head) && i8085_notUsed("pf", endPl, head) &&
           i8085_notUsed("nf", endPl, head) && i8085_notUsed("hf", endPl, head);

  if(strcmp(what, "iy") == 0) // No IY register on this port to scan for, so it can never be proven unused.
    return FALSE;

  if(strcmp(what, "ix") == 0)
    return(i8085_notUsed("ixl", endPl, head) && i8085_notUsed("ixh", endPl, head));

  if(isRegPair(what))
    {
      char low[2], high[2];
      low[0] = what[1];
      high[0] = what[0];
      low[1] = 0;
      high[1] = 0;
      return(i8085_notUsed(low, endPl, head) && i8085_notUsed(high, endPl, head));
    }

  // P/V and L/V (rabbits) are the same flag
  if(!strcmp(what, "vf") || !strcmp(what, "lf"))
    what = "pf";

  // enable sp and flags
  if(!isReg(what) && !isUReg(what) &&
     strcmp(what, "sp") && strcmp(what+1, "f"))
    return FALSE;

  _G.head = head;

  unvisitLines (_G.head);

  pl = endPl->next;
  if (!doTermScan (&pl, what))
    return FALSE;

  return TRUE;
}

bool
i8085_notUsedFrom (const char *what, const char *label, lineNode *head)
{
  lineNode *cpl;

  for (cpl = head; cpl; cpl = cpl->next)
    {
      if (cpl->isLabel && !strncmp (label, cpl->line, strlen(label)))
        {
          return i8085_notUsed (what, cpl, head);
        }
    }

  return false;
}

bool
i8085_canAssign (const char *op1, const char *op2, const char *exotic)
{
  const char *dst, *src;

  /* op1/op2/exotic are literal operand text captured from matching a real
     assembly line (they come straight from a rule file's %N variables),
     so on this port they can be Intel-syntax text - in particular "m",
     Intel's spelling of HL-indirect addressing (see isIntelM() and
     intelOperand()'s own comment in gen.c). Every check below already
     answers exactly the right question for HL-indirect addressing under
     its Zilog spelling "(hl)"; normalize "m" to that here rather than
     duplicate each check, since the two mean the same thing. This does
     not extend to "(bc)"/"(de)"/"(hl+)"/"(hl-)" below - those spellings
     are never produced by matching against Intel-syntax text (BC/DE-
     indirect addressing is only ever expressed by the ldax/stax
     mnemonic choice on this port, never as an operand token; "(hl+)"/
     "(hl-)" are sm83-only). */
  if (isIntelM (op1))
    op1 = "(hl)";
  if (isIntelM (op2))
    op2 = "(hl)";

  // Indexed accesses: One is the indexed one, the other one needs to be a reg or immediate.
  if(exotic)
  {
    if(!strcmp(exotic, "ix") || !strcmp(exotic, "iy"))
    {
      if(isReg(op1))
        return TRUE;
    }
    else if(!strcmp(op2, "ix") || !strcmp(op2, "iy"))
    {
      if(isReg(exotic) || exotic[0] == '#')
        return TRUE;
    }

    return FALSE;
  }

  // Everything else.
  dst = op1;
  src = op2;

  // 8-bit regs can be assigned to each other directly.
  if(isReg(dst) && isReg(src))
    return true;

  // Immediates van be loaded into 8-bit registers.
  if(isReg(dst) && src[0] == '#')
    return true;

  // Same if at most one of them is (hl).
  if(isReg(dst) && !strcmp(src, "(hl)"))
    return TRUE;
  if(!strcmp(dst, "(hl)") && isReg(src))
    return TRUE;

  // Can assign between a and (bc), (de), (hl+), (hl-)
  if(!strcmp(dst, "a") &&
     (!strcmp(src, "(bc)") || !strcmp(src, "(de)") || !strcmp(src, "(hl+)") || !strcmp(src, "(hl-)")))
    return TRUE;
  if((!strcmp(dst, "(bc)") || !strcmp(dst, "(de)") || !strcmp(src, "(hl+)") || !strcmp(src, "(hl-)"))
     && !strcmp(src, "a"))
    return TRUE;

  // Can load immediate values directly into registers and register pairs.
  if((isReg(dst) || isRegPair(dst) || !strcmp(src, "sp")) && src[0] == '#')
    return TRUE;

  /* 8080/8085: only ld a,(nn) (LDA) and ld hl,(nn) (LHLD) load from a direct
     address; ld bc/de/sp,(nn) are Z80 ED-prefix ops. Likewise only STA/SHLD
     store to one. */
  if(!strncmp(src, "(#", 2) && (!strcmp(dst, "a") || !strcmp(dst, "hl")))
    return TRUE;
  if(!strncmp(dst, "(#", 2) && (!strcmp(src, "a") || !strcmp(src, "hl")))
    return TRUE;

  // Can load immediate values directly into (hl).
  if(!strcmp(dst, "(hl)") && src[0] == '#')
    return true;

  // Can load between hl / ix / iy and sp.
  if(!strcmp(dst, "sp") && (!strcmp(src, "hl") || !strcmp(src, "ix") || !strcmp(src, "iy")) ||
    (!strcmp(dst, "hl") || !strcmp(dst, "ix") || !strcmp(dst, "iy")) && !strcmp(src, "sp"))
    return true;

  return false;
}

static const char *
registerBaseName (const char *op)
{
  if (!strcmp (op, "d") || !strcmp (op, "e") || !strcmp (op, "(de)"))
    return "de";
  if (!strcmp (op, "b") || !strcmp (op, "c") || !strcmp (op, "(bc)"))
    return "bc";
  if (!strcmp (op, "h") || !strcmp (op, "l") || !strcmp (op, "(hl)") || !strcmp (op, "(hl+)")  || !strcmp (op, "(hl-)"))
    return "hl";
  if (!strcmp (op, "iyh") || !strcmp (op, "iyl") || strstr (op, "iy"))
    return "iy";
  if (!strcmp (op, "ixh") || !strcmp (op, "ixl") || strstr (op, "ix"))
    return "ix";
  if (!strcmp (op, "a"))
    return "af";
  return op;
}

// canJoinRegs(reg_hi reg_lo [dst]) returns TRUE,
bool i8085_canJoinRegs (const char **regs, char dst[20])
{
  //check for only 2 source registers
  if (!regs[0] || !regs[1] || regs[2])
    return FALSE;
  size_t l1 = strlen (regs[0]);
  size_t l2 = strlen (regs[1]);
  if (l1 + l2 >= 20)
    return FALSE;
  if (l1 == 0 || l2 == 0)
    {
      if (l1 == 0 && l2 == 0)
        return FALSE;
      strcpy (dst, registerBaseName (regs[l1 ? 0 : 1]));
    }
  else
    {
      memcpy (&dst[0], regs[0], l1);
      memcpy (&dst[l1], regs[1], l2 + 1); //copy including \0
    }
  if (!strcmp (dst, "ixhixl") || !strcmp (dst, "iyhiyl"))
    dst[2] = '\0';
  return isRegPair (dst);
}

bool i8085_canSplitReg (const char *reg, char dst[][16], int nDst)
{
  int i;
  if (nDst < 0 || nDst > 2)
    return FALSE;
  if (!strcmp (reg, "bc") || !strcmp (reg, "de") || !strcmp (reg, "hl"))
    {
      for (i = 0; i < nDst; ++i)
        {
          dst[i][0] = reg[i];
          dst[i][1] = '\0';
        }
    }
  else
    return FALSE;

  return TRUE;
}

int i8085_instructionSize (lineNode *pl)
{
  const char *op0start = lineArg (pl, 0);
  const char *op1start = lineArg (pl, 1);

  /* Real, live i8085/i8080 output, byte counts straight from the 8085
     data sheet's instruction set table: mvi and the arithmetic family's
     immediate form are 2 bytes (one opcode byte plus one 8-bit
     immediate); lxi/lda/sta/lhld/shld/jmp/j<cc> are 3 bytes (opcode plus
     a 16-bit address/immediate); everything else in this port's live
     mnemonic set - mov, ldax/stax, xchg/xthl/sphl/pchl, dad/inx/dcx,
     inr/dcr, the arithmetic family's register/M form, rlc/rrc/ral/rar,
     cmc/stc/cma, daa - is 1 byte. */
  {
    bool immediate, writes_a;
    int idx = intelArith8 (pl, &immediate, &writes_a);
    if (idx >= 0)
      return immediate ? 2 : 1;
  }
  if (lineIsInst (pl, "mvi"))
    return 2;
  if (lineIsInst (pl, "lxi") || lineIsInst (pl, "lda") || lineIsInst (pl, "sta") ||
      lineIsInst (pl, "lhld") || lineIsInst (pl, "shld") ||
      lineIsInst (pl, "jmp") || isIntelCondJump (pl, NULL))
    return 3;
  if (lineIsInst (pl, "mov") || lineIsInst (pl, "ldax") || lineIsInst (pl, "stax") ||
      lineIsInst (pl, "xchg") || lineIsInst (pl, "xthl") || lineIsInst (pl, "sphl") || lineIsInst (pl, "pchl") ||
      lineIsInst (pl, "dad") || lineIsInst (pl, "inx") || lineIsInst (pl, "dcx") ||
      lineIsInst (pl, "inr") || lineIsInst (pl, "dcr") ||
      (lineIsInst (pl, "rlc") && !lineArg (pl, 0)) || (lineIsInst (pl, "rrc") && !lineArg (pl, 0)) ||
      lineIsInst (pl, "ral") || lineIsInst (pl, "rar") ||
      lineIsInst (pl, "cmc") || lineIsInst (pl, "stc") || lineIsInst (pl, "cma") || lineIsInst (pl, "daa"))
    return 1;

  /* All ld instructions */
  if(lineIsInst (pl, "ld"))
    {
      // These 4 are the only cases of 4 byte long Z80 ld instructions.
      if(!STRNCASECMP (op0start, "ix", 2) || !STRNCASECMP (op0start, "iy", 2))
        return(4);
      if((argCont (op0start, "(ix)") || argCont (op0start, "(iy)")) && op1start[0] == '#')
        return(4);

      if(op0start[0] == '('               && STRNCASECMP(op0start, "(bc)", 4) &&
         STRNCASECMP(op0start, "(de)", 4) && STRNCASECMP(op0start, "(hl" , 3) &&
         STRNCASECMP(op1start, "hl", 2)   && STRNCASECMP(op1start, "a", 1) ||
         op1start[0] == '('               && STRNCASECMP(op1start, "(bc)", 4) &&
         STRNCASECMP(op0start, "(de)", 4) && STRNCASECMP(op1start, "(hl" , 3) &&
         STRNCASECMP(op0start, "hl", 2)   && STRNCASECMP(op0start, "a", 1))
        return(4);

      /* These 4 are the only remaining cases of 3 byte long ld instructions. */
      if(argCont(op1start, "(ix)") || argCont(op1start, "(iy)"))
        return(3);
      if(argCont(op0start, "(ix)") || argCont(op0start, "(iy)"))
        return(3);
      if((op0start[0] == '(' && STRNCASECMP(op0start, "(bc)", 4) && STRNCASECMP(op0start, "(de)", 4) && STRNCASECMP(op0start, "(hl", 3)) ||
         (op1start[0] == '(' && STRNCASECMP(op1start, "(bc)", 4) && STRNCASECMP(op1start, "(de)", 4) && STRNCASECMP(op1start, "(hl", 3)))
        return(3);
      if(op1start[0] == '#' &&
         (!STRNCASECMP(op0start, "bc", 2) || !STRNCASECMP(op0start, "de", 2) || !STRNCASECMP(op0start, "hl", 2) || !STRNCASECMP(op0start, "sp", 2)))
        return(3);

      /* These 3 are the only remaining cases of 2 byte long ld instructions. */
      if(op1start[0] == '#')
        return(2);
      if(!STRNCASECMP(op0start, "i", 1) || !STRNCASECMP(op0start, "r", 1) ||
         !STRNCASECMP(op1start, "i", 1) || !STRNCASECMP(op1start, "r", 1))
        return(2);
      if(!STRNCASECMP(op1start, "ix", 2) || !STRNCASECMP(op1start, "iy", 2))
        return(2);

      /* All other ld instructions */
      return(1);
    }

  /* Exchange */
  if(lineIsInst (pl, "exx"))
    return(1);
  if(lineIsInst (pl, "ex"))
    {
      if(!op1start)
        {
          werrorfl(pl->ic->filename, pl->ic->lineno, W_UNRECOGNIZED_ASM, __func__, 4, pl->line);
          return(4);
        }
      if (argCont (op0start, "(sp)") && (!STRNCASECMP(op1start, "ix", 2) || !STRNCASECMP(op1start, "iy", 2)))
        return(2);
      return(1);
    }

  /* Push / pop */
  if(lineIsInst (pl, "push") || lineIsInst (pl, "pop"))
    {
      if(!STRNCASECMP(op0start, "ix", 2) || !STRNCASECMP(op0start, "iy", 2))
        return(2);
      return(1);
    }

  /* 16 bit add / subtract / and / or */
  if((lineIsInst (pl, "add") || lineIsInst (pl, "adc") || lineIsInst (pl, "sbc")) &&
     !STRNCASECMP (op0start, "hl", 2))
    {
      if(lineIsInst (pl, "cp") && STRNCASECMP (op0start, "de", 2)) // cp hl, #d
        return(3);
      if(lineIsInst (pl, "add") || lineIsInst (pl, "and") || lineIsInst (pl, "or"))
        return(1);
      return(2);
    }
  if(lineIsInst (pl, "add") && (!STRNCASECMP(op0start, "ix", 2) || !STRNCASECMP(op0start, "iy", 2)))
    return(2);

  /* 8 bit arithmetic, two operands */
  if(op1start && op0start[0] == 'a' &&
     (lineIsInst (pl, "add") || lineIsInst (pl, "adc") || lineIsInst (pl, "sub") || lineIsInst (pl, "sbc") ||
      lineIsInst (pl, "cp")  || lineIsInst (pl, "and") || lineIsInst (pl, "or")  || lineIsInst (pl, "xor")))
    {
      if(argCont(op1start, "(ix)") || argCont(op1start, "(iy)"))
        return(3);
      if(op1start[0] == '#')
        return(2);
      return(1);
    }
  /* 8 bit arithmetic, shorthand for a */
  if(!op1start &&
     (lineIsInst (pl, "add") || lineIsInst (pl, "adc") || lineIsInst (pl, "sub") || lineIsInst (pl, "sbc") ||
      lineIsInst (pl, "cp")  || lineIsInst (pl, "and") || lineIsInst (pl, "or")  || lineIsInst (pl, "xor")))
    {
      if(argCont(op0start, "(ix)") || argCont(op0start, "(iy)"))
        return(3);
      if(op0start[0] == '#')
        return(2);
      return(1);
    }

  if(lineIsInst (pl, "rlca") || lineIsInst (pl, "rla") || lineIsInst (pl, "rrca") || lineIsInst (pl, "rra"))
    return(1);

  /* Increment / decrement */
  if(lineIsInst (pl, "inc") || lineIsInst (pl, "dec"))
    {
      if(!STRNCASECMP(op0start, "ix", 2) || !STRNCASECMP(op0start, "iy", 2))
        return(2);
      if(argCont(op0start, "(ix)") || argCont(op0start, "(iy)"))
        return(3);
      return(1);
    }

  if(lineIsInst (pl, "rlc") || lineIsInst (pl, "rl")  || lineIsInst (pl, "rrc") || lineIsInst (pl, "rr") ||
     lineIsInst (pl, "sla") || lineIsInst (pl, "sra") || lineIsInst (pl, "srl"))
    {
      if(argCont(op0start, "(ix)") || argCont(op0start, "(iy)"))
        return(4);
      return(2);
    }

  if(lineIsInst (pl, "rld") || lineIsInst (pl, "rrd"))
    return(2);

  /* Bit */
  if(lineIsInst (pl, "bit") || lineIsInst (pl, "set") || lineIsInst (pl, "res"))
    {
      if(argCont(op1start, "(ix)") || argCont(op1start, "(iy)"))
        return(4);
      return(2);
    }

  if(lineIsInst (pl, "jr") || lineIsInst (pl, "djnz"))
    return(2);

  if(lineIsInst (pl, "jp"))
    {
      if(!STRNCASECMP(op0start, "(hl)", 4))
        return(1);
      if(!STRNCASECMP(op0start, "(ix)", 4) || !STRNCASECMP(op0start, "(iy)", 4))
        return(2);
      return(3);
    }

  if(lineIsInst (pl, "reti") || lineIsInst (pl, "retn"))
    return(2);

  if(lineIsInst (pl, "ret") || lineIsInst (pl, "reti") || lineIsInst (pl, "rst"))
    return(1);

  if(lineIsInst (pl, "call"))
    return(3);

  if(lineIsInst (pl, "ldi") || lineIsInst (pl, "ldd") || lineIsInst (pl, "cpi") || lineIsInst (pl, "cpd"))
    return(2);

  if(lineIsInst (pl, "neg"))
    return(2);

  if(lineIsInst (pl, "daa") || lineIsInst (pl, "cpl")  || lineIsInst (pl, "ccf") || lineIsInst (pl, "scf") ||
     lineIsInst (pl, "nop") || lineIsInst (pl, "halt") || lineIsInst (pl,  "ei") || lineIsInst (pl, "di"))
    return(1);

  if(lineIsInst (pl, "im"))
    return(2);

  if(lineIsInst (pl, "in") || lineIsInst (pl, "out") || lineIsInst (pl, "ot") ||
     lineIsInst (pl, "ini") || lineIsInst (pl, "inir") || lineIsInst (pl, "ind") ||
     lineIsInst (pl, "indr") || lineIsInst (pl, "outi") || lineIsInst (pl, "otir") ||
     lineIsInst (pl, "outd") || lineIsInst (pl, "otdr"))
    {
      return(2);
    }

  if(lineIsInst (pl, "lddr") || lineIsInst (pl, "ldir") || lineIsInst (pl, "cpir") || lineIsInst (pl, "cpdr"))
    return(2);

  if(lineIsInst (pl, ".db") || lineIsInst (pl, ".byte"))
    {
      int i, j;
      for(i = 1, j = 0; pl->line[j]; i += pl->line[j] == ',', j++);
      return(i);
    }

  if(lineIsInst (pl, ".dw") || lineIsInst (pl, ".word"))
    {
      int i, j;
      for(i = 1, j = 0; pl->line[j]; i += pl->line[j] == ',', j++);
      return(i * 2);
    }
  
  /* 8085 undocumented instructions */
  if(lineIsInst (pl, "dsub") || lineIsInst (pl, "arhl") || lineIsInst (pl, "rdel") ||
     lineIsInst (pl, "rstv") || lineIsInst (pl, "shlx") || lineIsInst (pl, "lhlx"))
    return 1;
  if(lineIsInst (pl, "ldhi") || lineIsInst (pl, "ldsi"))
    return 2;
  if(lineIsInst (pl, "jx5") || lineIsInst (pl, "jnx5"))
    return 3;

  /* If the instruction is unrecognized, we shouldn't try to optimize.  */
  /* For all we know it might be some .ds or similar possibly long line */
  /* Return a large value to discourage optimization.                   */
  if (pl->ic)
    werrorfl(pl->ic->filename, pl->ic->lineno, W_UNRECOGNIZED_ASM, __func__, 999, pl->line);
  else
    werrorfl("unknown", 0, W_UNRECOGNIZED_ASM, __func__, 999, pl->line);
  return(999);
}

bool i8085_symmParmStack (const char *name)
{
  if (!strcmp (name, "___sdcc_enter_ix"))
   return false;
  return i8085_symmParm_in_calls_from_current_function;
}

