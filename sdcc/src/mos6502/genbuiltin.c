/*-------------------------------------------------------------------------
  genbuiltin.c - builtin functions for MOS6502

  Copyright (C) 2026, Gabriele Gorla

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

#include "m6502.h"
#include "ralloc.h"
#include "gen.h"


const char m6502_builtins[] =
  "extern float __builtin_fabsf (float f) __builtin__;\n"
  ;


static void
genBuiltInFabs(const iCode *ic, int nparams, operand **pparams)
{
  operand *src, *result;
  int offset;

  m6502_emitComment (TRACEGEN, "  %s", __func__);

  src = pparams[0];
  result = IC_RESULT (ic);

  m6502_aopOp (src, ic);
  m6502_aopOp (result, ic);

  bool needpulla = storeRegTempIfSurv (m6502_reg_a);


  for(offset=0;offset<(AOP_SIZE(result)-1);offset++)
    m6502_transferAopAop(AOP(src), offset, AOP(result), offset);

  m6502_loadRegFromAop (m6502_reg_a, AOP (src), 3);
  m6502_emitOp("and","#0x7f");
  m6502_storeRegToAop (m6502_reg_a, AOP (result), 3);

  m6502_loadOrFreeRegTemp(m6502_reg_a, needpulla);

  m6502_freeAsmop (src, NULL);
  m6502_freeAsmop (result, NULL);
}

/* NOTE: this does not produce a result.  memset() returns its destination,
   but nothing here writes IC_RESULT, so a use of the return value gets
   whatever the register restores at the end happen to leave in A:X.  It is
   unreachable today - m6502_builtins[] declares only __builtin_fabsf, so
   only a hand-written __builtin_memset declaration can get here at all -
   and it stays that way until the port can route the cases this function
   cannot do back to a real call.

   That routing is the thing to fix, and it is not local to this file.  The
   z80 family arm of convertToFcall() in SDCCopt.c turns a builtin back into
   a library call whenever the return value is used or the length is not a
   literal, which is why z80's genBuiltInMemset can simply assert AOP_LIT
   and ignore the result.  Adding mos6502 to that arm gets the dispatch
   right but breaks the call: convert: emits stack pushes, while mos6502
   passes memset's extra arguments in the static _memset_PARM_2 and
   _memset_PARM_3 and the first in A:X, so the arguments never arrive.
   Measured 2026-09-22 - uc6502 67 failures, uc65c02 7, uc6502-stack-auto 3,
   the gradient tracking how nearly each model's library really is stack
   based.  Teaching convert: the target's parameter passing is shared core
   work affecting every builtin-using port, so it wants its own change.

   Two traps for whoever does it.  OP_USES is an optimizer structure and is
   NULL by the time the back end runs, so !bitVectIsZero (OP_USES (result))
   is always false here and cannot be used to decide whether to materialise
   the result.  And the result has to be written after the
   m6502_loadOrFreeRegTemp calls below, which would otherwise overwrite a
   result the allocator placed in A or X.  */
static void
genBuiltInMemset(const iCode *ic, int nparams, operand **pparams)
{
  operand *dst, *val, *len;
  symbol *page_label = m6502_safeNewiTempLabel (NULL);
  symbol *loop_label = m6502_safeNewiTempLabel (NULL);
  symbol *tail_label = m6502_safeNewiTempLabel (NULL);
  symbol *tail_loop_label = m6502_safeNewiTempLabel (NULL);
  symbol *done_label = m6502_safeNewiTempLabel (NULL);
  bool needpulla = false;
  bool needpully = false;
  bool needpullx = false;
  bool use_dptr = false;
  bool islit;
  bool onepage;
  unsigned long litlen = 0;

  m6502_emitComment (TRACEGEN, "  %s", __func__);

  dst = pparams[0];
  val = pparams[1];
  len = pparams[2];

  m6502_aopOp (dst, ic);
  m6502_aopOp (val, ic);
  m6502_aopOp (len, ic);

  needpulla = storeRegTempIfSurv (m6502_reg_a);
  needpully = storeRegTempIfSurv (m6502_reg_y);

  /* A literal length of at most one page can be done with the plain
     countdown in Y.  Anything else - a longer literal, or a length not
     known until run time - needs the page loop below, which walks DPTR,
     so the destination has to be copied there even when it already is a
     direct-page pointer of our own: writing through the caller's pointer
     and incrementing it in place would corrupt the variable.  */
  islit = (AOP_TYPE (len) == AOP_LIT);
  if (islit)
    litlen = (unsigned long) ulFromVal (AOP (len)->aopu.aop_lit);
  onepage = islit && litlen <= 256;

  if (!onepage)
    {
      needpullx = storeRegTempIfSurv (m6502_reg_x);

      /* Read a run-time length before anything else runs: the first
         argument arrives in A:X, and both the DPTR setup and the load of
         the fill value go through A.  The low half has to outlive the page
         loop, which owns Y, so it goes to a temp.  */
      if (islit)
        m6502_loadRegFromConst (m6502_reg_x, (litlen >> 8) & 0xff);
      else
        {
          m6502_loadRegFromAop (m6502_reg_y, AOP (len), 0);
          storeRegTemp (m6502_reg_y, true);
          m6502_loadRegFromAop (m6502_reg_x, AOP (len), 1);
        }
    }

  if (AOP_TYPE(dst) != AOP_DIR || !onepage)
    {
      //storeOperToDPTR (operand *oper, int size, iCode *ic)
      m6502_loadRegFromAop (m6502_reg_a, AOP (dst), 0);
      m6502_storeRegToDPTR(m6502_reg_a, 0);
      m6502_loadRegFromAop (m6502_reg_a, AOP (dst), 1);
      m6502_storeRegToDPTR(m6502_reg_a, 1);
      use_dptr=true;
    }

  m6502_loadRegFromAop (m6502_reg_a, AOP (val), 0);

  if (onepage)
    {
      /* 1..256 bytes: count down in Y, storing at Y-1 .. 0.  A literal 256
         arrives as 0 and wraps to 255 on the first dey, which is right. */
      m6502_loadRegFromAop (m6502_reg_y, AOP (len), 0);
      m6502_safeEmitLabel(loop_label);
      m6502_rmwWithReg ("dec", m6502_reg_y);

      if(use_dptr)
        m6502_emitOp ("sta", INDFMT_IY, "DPTR");
      else
        m6502_emitOp("sta", INDFMT_IY, AOP(dst)->aopu.aop_dir);
      m6502_emitBranch ("bne", loop_label);
    }
  else
    {
      /* X counts whole pages and Y the odd bytes left over.  The full pages
         go first so the page number only ever has to be stepped with an inc
         of the high half of DPTR - no 16 bit address arithmetic, and nothing
         that disturbs A, which holds the fill value throughout.  The counts
         are tested explicitly rather than off the flags of whatever loaded
         them, since a load the register tracker can prove redundant emits
         no instruction at all.  A literal only reaches here with at least
         one whole page, so its zero tests fold away.  */
      if (!islit)
        {
          m6502_emitOp ("cpx", "#0x00");
          m6502_emitBranch ("beq", tail_label);
        }

      m6502_safeEmitLabel (page_label);
      m6502_loadRegFromConst (m6502_reg_y, 0);
      m6502_safeEmitLabel (loop_label);
      m6502_rmwWithReg ("dec", m6502_reg_y);
      m6502_emitOp ("sta", INDFMT_IY, "DPTR");
      m6502_emitBranch ("bne", loop_label);
      m6502_emitOp ("inc", DPTRFMT, 1);
      m6502_rmwWithReg ("dec", m6502_reg_x);
      m6502_emitBranch ("bne", page_label);

      m6502_safeEmitLabel (tail_label);
      if (!islit)
        {
          m6502_loadRegTemp (m6502_reg_y);
          m6502_emitOp ("cpy", "#0x00");
          m6502_emitBranch ("beq", done_label);
        }
      else if (litlen & 0xff)
        {
          m6502_loadRegFromConst (m6502_reg_y, litlen & 0xff);
        }

      if (!islit || (litlen & 0xff))
        {
          m6502_safeEmitLabel (tail_loop_label);
          m6502_rmwWithReg ("dec", m6502_reg_y);
          m6502_emitOp ("sta", INDFMT_IY, "DPTR");
          m6502_emitBranch ("bne", tail_loop_label);
        }

      m6502_safeEmitLabel (done_label);
    }

  m6502_loadOrFreeRegTemp(m6502_reg_x, needpullx);
  m6502_loadOrFreeRegTemp(m6502_reg_y, needpully);
  m6502_loadOrFreeRegTemp(m6502_reg_a, needpulla);

  m6502_freeAsmop (dst, NULL);
  m6502_freeAsmop (val, NULL);
  m6502_freeAsmop (len, NULL);
}

/*-----------------------------------------------------------------*/
/* genBuiltIn - calls the appropriate function to generate code    */
/* for a built in function                                         */
/*-----------------------------------------------------------------*/
void
m6502_genBuiltIn (iCode *ic)
{
  operand *bi_parms[MAX_BUILTIN_ARGS];
  int nbi_parms;
  iCode *bi_iCode;
  symbol *bif;

  m6502_emitComment (TRACEGEN, "  %s", __func__);

  /* get all the arguments for a built in function */
  //  if(!regalloc_dry_run)
  bi_iCode = getBuiltinParms (ic, &nbi_parms, bi_parms);

  /* which function is it */
  bif = OP_SYMBOL (IC_LEFT (bi_iCode));

  //wassertl (!ic->prev || ic->prev->op != SEND || !ic->prev->builtinSEND, "genBuiltIn() must be called on first SEND icode only.");

  if (!strcmp (bif->name, "__builtin_fabsf"))
    {
      genBuiltInFabs (bi_iCode, nbi_parms, bi_parms);
    }
  else if (!strcmp (bif->name, "__builtin_memset"))
    {
      genBuiltInMemset (bi_iCode, nbi_parms, bi_parms);
    }
  else
    {
      m6502_emitComment (ALWAYS, "ERROR: %s - unknowns builtin %s", __func__, bif->name);
      //      wassertl (0, "Unknown builtin function encountered");
    }
}

