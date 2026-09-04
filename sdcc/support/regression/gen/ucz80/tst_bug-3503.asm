;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3503
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _RayDraw
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
;cases/./../tests/bug-3503.c:18: void RayDraw() {
;	genLabel
;	genFunction
;	---------------------------------
; Function RayDraw
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 44 bytes.
_RayDraw::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -44
	ld	hl, #-44
	add	hl, sp
;cases/./../tests/bug-3503.c:21: SegmentData *segment = segments;
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3503.c:24: do {
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00103$:
;cases/./../tests/bug-3503.c:26: if ( segment >= segments + 1 ) // Assertion in codegen triggered.
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/bug-3503.c:27: segment--;
;	genMinus
	dec	bc
	dec	bc
;	genLabel
00104$:
;cases/./../tests/bug-3503.c:29: } while( pos++ < 32 );
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	e
;	genCmpLt
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/bug-3503.c:30: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total RayDraw function size at codegen: 5 bytes.
;cases/./../tests/bug-3503.c:33: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3503.c:35: RayDraw();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3503.c:36: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3503.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3503.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-3503.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3503.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3503.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3503.c:15: return "bug-3503.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3503.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3503.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
