;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2363
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___prints
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_Durak_hand:
	.ds 148
_Durak_desk:
	.ds 26
_Durak_deskN:
	.ds 1
_Durak_trump:
	.ds 1
_Durak_badSuit:
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
;cases/./../tests/bug-2363.c:21: static void Durak_CpuMoves (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Durak_CpuMoves
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_Durak_CpuMoves:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/bug-2363.c:28: if (Durak_deskN != 0) {
;	genIfx
	ld	a, (_Durak_deskN+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/bug-2363.c:29: if (Durak_desk[X(Durak_deskN, 13)].suit == Durak_trump && Durak_desk[X(i - 1, 13)].suit != Durak_trump) {
;	genAddrOf
	ld	bc, #_Durak_desk+0
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Durak_deskN)
	ld	l, a
	rlca
	sbc	a, a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	add	hl, bc
;	genPointerGet
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_Durak_trump)
; common peephole 115a used (hl) in sub instead of going through e.
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;	genLeftShift
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
	add	hl, hl
;	genPlus
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Durak_trump)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00151$.
;	skipping generated iCode
;cases/./../tests/bug-2363.c:30: Durak_badSuit = Durak_desk[X(i - 1, 13)].suit;
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_Durak_badSuit
	ld	(hl), c
;cases/./../tests/bug-2363.c:33: while (l <= _for__14) {
;	genLabel
00109$:
;	genCmpGt
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	po, 00152$
	xor	a, #0x80
00152$:
	jp	m, 00114$
;	skipping generated iCode
;	genLabel
00112$:
;cases/./../tests/bug-2363.c:37: z = Durak_hand[1][X(i, 37)].rank * 10 + (signed char)(Durak_hand[1][X(i, 37)].suit == Durak_trump) * 111;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00114$:
;cases/./../tests/bug-2363.c:42: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total Durak_CpuMoves function size at codegen: 5 bytes.
;cases/./../tests/bug-2363.c:44: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2363.c:46: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-2363.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2363.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-2363.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2363.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2363.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2363.c:15: return "bug-2363.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2363.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-2363.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
