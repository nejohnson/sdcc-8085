;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug1509084
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _leds_name_repaint
	.globl ___prints
	.globl ___fail
	.globl _ee
	.globl _dd
	.globl _cc
	.globl _bb
	.globl _aa
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
_aa::
	.ds 1
_bb::
	.ds 1
_cc::
	.ds 1
_dd::
	.ds 1
_ee::
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
;cases/./../tests/bug1509084.c:19: void leds_name_repaint(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function leds_name_repaint
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_leds_name_repaint::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/bug1509084.c:22: unsigned char dg = aa;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_aa)
	ld	c, a
;cases/./../tests/bug1509084.c:25: for( an = 0; an < 5; an ++ )
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x05
;	genLabel
00106$:
;cases/./../tests/bug1509084.c:27: s = (  (long) aa >> 1 ) > 0;
;	genCast
;	genMove_o size 1 result type 6 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_aa+0)
	ld	-4 (ix), a
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genRightShift
	sra	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpGt
	xor	a, a
	cp	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;cases/./../tests/bug1509084.c:28: if( s )
;	skipping generated iCode
;cases/./../tests/bug1509084.c:30: aa += dg + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	e, b
	inc	e
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_aa+0)
;	genPlus
	add	a, e
	ld	(_aa+0), a
;cases/./../tests/bug1509084.c:31: bb += dg + 2;
;	genPlus
	ld	e, b
	inc	e
	inc	e
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_bb+0)
;	genPlus
	add	a, e
	ld	(_bb+0), a
;cases/./../tests/bug1509084.c:32: cc += dg + 3;
;	genPlus
	ld	e, b
	inc	e
	inc	e
	inc	e
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_cc+0)
;	genPlus
	add	a, e
	ld	(_cc+0), a
;cases/./../tests/bug1509084.c:33: dd += dg + 4;
;	genPlus
	ld	e, b
	inc	e
	inc	e
	inc	e
	inc	e
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_dd+0)
;	genPlus
	add	a, e
	ld	(_dd+0), a
;cases/./../tests/bug1509084.c:34: ee += dg + 5;
;	genPlus
	ld	a, b
	add	a, #0x05
	ld	e, a
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_ee+0)
;	genPlus
	add	a, e
	ld	(_ee+0), a
;	genLabel
00102$:
;	genMinus
	dec	l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/bug1509084.c:25: for( an = 0; an < 5; an ++ )
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug1509084.c:37: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total leds_name_repaint function size at codegen: 5 bytes.
;cases/./../tests/bug1509084.c:40: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug1509084.c:42: aa = 2;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_aa
	ld	(hl), #0x02
;cases/./../tests/bug1509084.c:43: leds_name_repaint();
;	genCall
	call	_leds_name_repaint
;cases/./../tests/bug1509084.c:44: ASSERT(aa == 17);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_aa)
	sub	a, #0x11
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1509084.c:45: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "aa == 17"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug1509084.c"
	.db 0x00
;cases/tst_bug1509084.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug1509084.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug1509084.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1509084.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug1509084.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug1509084.c:15: return "bug1509084.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1509084.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug1509084.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
