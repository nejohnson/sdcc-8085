;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr20527_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl _b
	.globl ___numCases
	.globl _f
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
_b::
	.ds 16
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
;cases/./../tests/gcc-torture-execute-pr20527-1.c:72: void f (long *limit, long *base, long minLen, long maxLen)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -12
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20527-1.c:76: vec = 0;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;cases/./../tests/gcc-torture-execute-pr20527-1.c:77: for (i = minLen; i <= maxLen; i++) {
;	genAssign
;	genLabel
00103$:
;	genCmpGt
	ld	a, 8 (ix)
	sub	a, 4 (ix)
	ld	a, 9 (ix)
	sbc	a, 5 (ix)
	ld	a, 10 (ix)
	sbc	a, 6 (ix)
	ld	a, 11 (ix)
	sbc	a, 7 (ix)
	jp	po, 00124$
	xor	a, #0x80
00124$:
	jp	m, 00105$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20527-1.c:78: vec += (base[i+1] - base[i]);
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	dec	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
	ld	h, a
;	genMinus
	ld	a, -12 (ix)
	sub	a, c
	ld	c, a
	ld	a, -11 (ix)
	sbc	a, b
	ld	b, a
	ld	a, -10 (ix)
	sbc	a, l
	ld	l, a
	ld	a, -9 (ix)
	sbc	a, h
	ld	h, a
;	genPlus
	ld	a, c
	add	a, -4 (ix)
	ld	-4 (ix), a
	ld	a, b
	adc	a, -3 (ix)
	ld	-3 (ix), a
	ld	a, l
	adc	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, h
	adc	a, -1 (ix)
	ld	-1 (ix), a
;cases/./../tests/gcc-torture-execute-pr20527-1.c:79: limit[i] = vec-1;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genMinus
	ld	a, -4 (ix)
	add	a, #0xff
	ld	c, a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	b, a
	ld	a, -2 (ix)
	adc	a, #0xff
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0xff
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr20527-1.c:77: for (i = minLen; i <= maxLen; i++) {
;	genPlus
	inc	4 (ix)
	jp	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	5 (ix)
	jp	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	6 (ix)
	jp	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	7 (ix)
; common peephole 159 removed unused label 00125$.
;	genGoto
	jp	00103$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr20527-1.c:81: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total f function size at codegen: 14 bytes.
;cases/./../tests/gcc-torture-execute-pr20527-1.c:87: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -12
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr20527-1.c:91: f (l, b, 0, 2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x02
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_b
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_f
;cases/./../tests/gcc-torture-execute-pr20527-1.c:92: if (l[0] != 3 || l[1] != 9 || l[2] != 21)
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	de
	push	de
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
	or	a, e
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x09
	or	a, b
	or	a, e
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x15
	or	a, b
	or	a, e
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00127$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr20527-1.c:93: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005d
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
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr20527-1.c:94: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-pr20527-1.c:96: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr20527-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr20527-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr20527-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr20527-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr20527-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr20527-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr20527-1.c:15: return "gcc-torture-execute-pr20527-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr20527-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr20527-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__b:
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x0b, #0x00, #0x00, #0x00	;  11
	.byte #0x17, #0x00, #0x00, #0x00	;  23
	.area _CABS (ABS)
