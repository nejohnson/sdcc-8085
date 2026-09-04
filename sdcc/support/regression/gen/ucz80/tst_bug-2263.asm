;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2263
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _f
	.globl _g
	.globl ___prints
	.globl ___fail
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
;cases/./../tests/bug-2263.c:9: unsigned long g()
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g::
;cases/./../tests/bug-2263.c:11: return 0xFFFFFFFF;
;	genRet
;fetchPairLong
	ld	de, #0xffff
	ld	l, e
	ld	h, e
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2263.c:12: }
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
;cases/./../tests/bug-2263.c:14: void f(unsigned short m)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2263.c:16: unsigned long e = g() + m;
;	genCall
	push	hl
	call	_g
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	iy, #0x0000
;	genPlus
	ld	a, e
	add	a, l
	ld	-4 (ix), a
	ld	a, d
	adc	a, h
	ld	-3 (ix), a
	push	iy
	ld	a, -6 (ix)
	pop	iy
	adc	a, c
	ld	-2 (ix), a
	push	iy
	ld	a, -5 (ix)
	pop	iy
	adc	a, b
	ld	-1 (ix), a
;cases/./../tests/bug-2263.c:17: while (e)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00101$:
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/bug-2263.c:18: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00104$:
;cases/./../tests/bug-2263.c:19: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total f function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-2263.c"
	.db 0x00
;cases/./../tests/bug-2263.c:21: void testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2263.c:24: f(1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2263.c:26: }
;	genEndFunction
	jp	_f
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-2263.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2263.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-2263.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2263.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2263.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2263.c:15: return "bug-2263.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2263.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-2263.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
