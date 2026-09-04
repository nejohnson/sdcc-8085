;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_critical
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCritical
	.globl _critical_function
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
;cases/./../tests/critical.c:31: long critical_function(long a, long b, long c) __critical
;	genLabel
;	genFunction
;	---------------------------------
; Function critical_function
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_critical_function::
	ld	a,i
	di
	push	af
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/critical.c:34: return a + b + c;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
	adc	a, 8 (ix)
	ld	-2 (ix), a
	ld	a, d
	adc	a, 9 (ix)
	ld	-1 (ix), a
;cases/./../tests/critical.c:33: if (a > 10L)
;	genCmpGt
	ld	a, #0x0a
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	ld	a, #0x00
	sbc	a, e
	ld	a, #0x00
	sbc	a, d
	jp	po, 00125$
	xor	a, #0x80
00125$:
	jp	p, 00105$
;	skipping generated iCode
;cases/./../tests/critical.c:34: return a + b + c;
;	genPlus
	ld	a, -4 (ix)
	add	a, 10 (ix)
	ld	e, a
	ld	a, -3 (ix)
	adc	a, 11 (ix)
	ld	d, a
	ld	a, -2 (ix)
	adc	a, 12 (ix)
	ld	l, a
	ld	a, -1 (ix)
	adc	a, 13 (ix)
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00105$:
;cases/./../tests/critical.c:35: else if (b < 10L)
;	genCmpLt
	ld	a, 6 (ix)
	sub	a, #0x0a
	ld	a, 7 (ix)
	sbc	a, #0x00
	ld	a, 8 (ix)
	sbc	a, #0x00
	ld	a, 9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/critical.c:36: return a - b - c;
;	genMinus
	ld	a, c
	sub	a, 6 (ix)
	ld	c, a
	ld	a, b
	sbc	a, 7 (ix)
	ld	b, a
	ld	a, e
	sbc	a, 8 (ix)
	ld	l, a
	ld	a, d
	sbc	a, 9 (ix)
	ld	h, a
;	genMinus
	ld	a, c
	sub	a, 10 (ix)
	ld	e, a
	ld	a, b
	sbc	a, 11 (ix)
	ld	d, a
	ld	a, l
	sbc	a, 12 (ix)
	ld	l, a
	ld	a, h
	sbc	a, 13 (ix)
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00102$:
;cases/./../tests/critical.c:38: return a + b - c;
;	genMinus
	ld	a, -4 (ix)
	sub	a, 10 (ix)
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, 11 (ix)
	ld	d, a
	ld	a, -2 (ix)
	sbc	a, 12 (ix)
	ld	l, a
	ld	a, -1 (ix)
	sbc	a, 13 (ix)
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00107$:
;cases/./../tests/critical.c:39: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	af
	ret	po
; common peephole 161 replaced jump by return.
	ei
; common peephole 159 removed unused label 00126$.
	ret
;	Total critical_function function size at codegen: 8 bytes.
;cases/./../tests/critical.c:52: testCritical (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCritical
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testCritical::
;cases/./../tests/critical.c:84: ASSERT (1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/critical.c:88: ASSERT(critical_function(11, 1, 1) == 13);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000b
	ld	l, h
;	genCall
	call	_critical_function
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0d
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00169$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00125$:
;cases/./../tests/critical.c:89: ASSERT(critical_function(5, 1, 1) == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
	ld	l, h
;	genCall
	call	_critical_function
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00170$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0059
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00127$:
;cases/./../tests/critical.c:90: ASSERT(critical_function(5, 11, 1) == 15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x0b
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
	ld	l, h
;	genCall
	call	_critical_function
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0f
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00171$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/critical.c:91: ASSERT(critical_function_inline(11, 1, 1) == 13);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCritical
; common peephole 1 removed dead load from i into a.
	di
;	genEndCritical
; common peephole 50b eliminated dead push/pop pair.
	jp	po, 00173$
	ei
00173$:
;cases/./../tests/critical.c:92: ASSERT(critical_function_inline(5, 1, 1) == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCritical
; common peephole 1 removed dead load from i into a.
	di
;	genEndCritical
; common peephole 50b eliminated dead push/pop pair.
	jp	po, 00175$
	ei
00175$:
;cases/./../tests/critical.c:93: ASSERT(critical_function_inline(5, 11, 1) == 15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCritical
; common peephole 1 removed dead load from i into a.
	di
;	genEndCritical
; common peephole 50b eliminated dead push/pop pair.
	ret	po
; common peephole 161 replaced jump by return.
	ei
; common peephole 159 removed unused label 00177$.
;	genLabel
; common peephole 159 removed unused label 00122$.
;cases/./../tests/critical.c:95: }
;	genEndFunction
	ret
;	Total testCritical function size at codegen: 13 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/critical.c"
	.db 0x00
___str_3:
	.ascii "critical_function(11, 1, 1) == 13"
	.db 0x00
___str_4:
	.ascii "critical_function(5, 1, 1) == 3"
	.db 0x00
___str_5:
	.ascii "critical_function(5, 11, 1) == 15"
	.db 0x00
___str_6:
	.ascii "critical_function_inline(11, 1, 1) == 13"
	.db 0x00
___str_7:
	.ascii "critical_function_inline(5, 1, 1) == 3"
	.db 0x00
___str_8:
	.ascii "critical_function_inline(5, 11, 1) == 15"
	.db 0x00
;cases/tst_critical.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_critical.c:6: __prints("Running testCritical\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___prints
;cases/tst_critical.c:7: testCritical();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_critical.c:8: }
;	genEndFunction
	jp	_testCritical
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_9:
	.ascii "Running testCritical"
	.db 0x0a
	.db 0x00
;cases/tst_critical.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_critical.c:15: return "critical.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_critical.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_10:
	.ascii "critical.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
