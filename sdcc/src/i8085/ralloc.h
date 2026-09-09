/*-------------------------------------------------------------------------

  SDCCralloc.h - header file register allocation

                Written By -  Sandeep Dutta . sandeep.dutta@usa.net (1998)

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
#include "SDCCicode.h"
#include "SDCCBBlock.h"
#ifndef SDCCRALLOC_H
#define SDCCRALLOC_H 1

#define USE_OLDSALLOC 0 // Change to 1 to use old stack allocator

// For register pairs, the upper byte shall be directly past the lower byte.
enum
{
  A_IDX = 0,
  C_IDX,
  B_IDX,
  E_IDX,
  D_IDX,
  L_IDX,
  H_IDX,
  // IYL_IDX/IYH_IDX (iy register pair - not for sm83) removed as of #25:
  // every live reference (aopInReg()/isRegDead() checks throughout gen.c,
  // the [IYH_IDX+1]-sized bookkeeping arrays, the asmop_iyh/asmop_iyl
  // storage, and peep.c's callSurelyWrites()/
  // mightBeParmInCallFromCurrentFunction() preserved_regs[]/parms[]
  // reads) traced exhaustively and resolved - no IY hardware on
  // i8080/i8085. Closing this required a real fix, not just a proof:
  // main.c's _getRegByName() still recognized "iyl"/"iyh" as valid
  // register names, and SDCCy.c's "__preserves_regs(...)" attribute
  // parser accepts any name getRegByName() recognizes with no further
  // validation - unlike every other IY-dead fact in this file (pure
  // register-allocator invariants, immune to anything user code could
  // write), user source really could have set
  // funcAttrs.preserved_regs[IYL_IDX/IYH_IDX] = true via that attribute
  // until _getRegByName() stopped recognizing those names too.
  // K_IDX/J_IDX (jk register pair - only for r4k, r5k, r6k) removed as of
  // #25: no JK hardware on i8080/i8085, and every call site that ever
  // checked for it was itself dead (see gen.c's own comments).
  CND_IDX,

  // These pairs are for internal use in code generation only.
  BC_IDX,
  DE_IDX,
  HL_IDX
  // IY_IDX removed as of #25: its last caller, isRegDead(IY_IDX,ic), was
  // collapsed to literal true throughout gen.c (always true - IY is
  // never register-allocated), leaving no live reference anywhere.
  // JK_IDX removed along with K_IDX/J_IDX above (#25).
};

enum
{
  REG_PTR = 1,
  REG_GPR = 2,
  REG_CND = 4,
  REG_PAIR = 8
};

/* definition for the registers */
typedef struct reg_info
{
  short type;                   /* can have value 
                                   REG_GPR, REG_PTR or REG_CND */
  short rIdx;                   /* index into register table */
  const char *name;
  unsigned i8085_isFree:1;            /* is currently unassigned  */
} reg_info;

extern reg_info *i8085_regs;

void assignRegisters (eBBlock **, int);
reg_info *i8085_regWithIdx (int);

void i8085_assignRegisters (ebbIndex *);
bitVect *i8085_rUmaskForOp (const operand * op);

void i8085_SpillThis (symbol *);
iCode *i8085_ralloc2_cc(ebbIndex *ebbi);

void i8085_RegFix (eBBlock ** ebbs, int count);
#endif

