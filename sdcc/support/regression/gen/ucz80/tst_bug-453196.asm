;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_453196
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDhry
	.globl ___prints
	.globl _Ch_2_Glob
	.globl ___numCases
	.globl _Func_1
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_Ch_2_Glob::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area _DABS (ABS)
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/bug-453196.c:26: testDhry(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDhry
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testDhry::
;cases/./../tests/bug-453196.c:40: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index) {
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x01
;	genLabel
00112$:
;	genCmpGt
	ld	a, #0x32
	sub	a, c
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/bug-453196.c:46: while (Int_1_Loc < Int_2_Loc)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
;	genLabel
00101$:
;	genCmpLt
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
;	skipping generated iCode
;cases/./../tests/bug-453196.c:49: Int_1_Loc += 1;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
;cases/./../tests/bug-453196.c:53: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x41
;	genLabel
00109$:
;	genCmpGt
	ld	a, (_Ch_2_Glob+0)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00106$
;	skipping generated iCode
;cases/./../tests/bug-453196.c:55: if (Enum_Loc == Func_1 (Ch_Index, 'C'))
;	genSend
	push	bc
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x43
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_Func_1
	pop	bc
;cases/./../tests/bug-453196.c:53: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
;	genPlus
	inc	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00106$:
;cases/./../tests/bug-453196.c:40: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index) {
;	genPlus
	inc	c
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00114$.
;cases/./../tests/bug-453196.c:66: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
; common peephole 152 removed unused ret.
;	Total testDhry function size at codegen: 1 bytes.
;cases/./../tests/bug-453196.c:68: Enumeration Func_1 (Capital_Letter Ch_1_Par_Val, Capital_Letter Ch_2_Par_Val)
;	genLabel
;	genFunction
;	---------------------------------
; Function Func_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Func_1::
;cases/./../tests/bug-453196.c:73: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-453196.c:74: }
;	genEndFunction
	ret
;	Total Func_1 function size at codegen: 1 bytes.
;cases/tst_bug-453196.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-453196.c:6: __prints("Running testDhry\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-453196.c:7: testDhry();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-453196.c:8: }
;	genEndFunction
	jp	_testDhry
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testDhry"
	.db 0x0a
	.db 0x00
;cases/tst_bug-453196.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-453196.c:15: return "bug-453196.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-453196.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-453196.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
