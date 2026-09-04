;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_strcmp_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _test
	.globl _strcmp
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
_u1:
	.ds 34
_u2:
	.ds 34
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
;cases/./../tests/gcc-torture-execute-strcmp-1.c:42: test (const unsigned char *s1, const unsigned char *s2, int expected)
;	genLabel
;	genFunction
;	---------------------------------
; Function test
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:44: int value = strcmp ((char *) s1, (char *) s2);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:47: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:46: if (expected < 0 && value >= 0)
;	genCmpLt
	bit	7, 5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;	skipping generated iCode
;	genCmpLt
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:47: ASSERT (0);
;	genAssign
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
	ld	hl, #0x002f
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
	jr	00112$
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:48: else if (expected == 0 && value != 0)
;	genIfx
	ld	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/gcc-torture-execute-strcmp-1.c:49: ASSERT (0);
;	genAssign
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
	ld	hl, #0x0031
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
	jr	00112$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:50: else if (expected > 0 && value <= 0)
;	genCmpGt
	xor	a, a
	cp	a, 4 (ix)
	sbc	a, 5 (ix)
	jp	po, 00162$
	xor	a, #0x80
00162$:
	jp	p, 00112$
;	skipping generated iCode
;	genCmpGt
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	po, 00163$
	xor	a, #0x80
00163$:
	jp	m, 00112$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:51: ASSERT (0);
;	genAssign
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
	ld	hl, #0x0033
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
00112$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:52: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total test function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-strcmp-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:55: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 14 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -14
	ld	hl, #-14
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:63: for (off1 = 0; off1 < MAX_OFFSET; off1++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:64: for (off2 = 0; off2 < MAX_OFFSET; off2++)
;	genLabel
00168$:
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:65: for (len = 0; len < MAX_TEST; len++)
;	genLabel
00166$:
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00128$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:67: p1 = u1.buf;
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_u1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:68: for (i = 0; i < off1; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00111$:
;	genCmpLt
	ld	a, e
	sub	a, -6 (ix)
	ld	a, d
	sbc	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00101$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:69: *p1++ = '\0';
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	inc	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:68: for (i = 0; i < off1; i++)
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:71: buf1 = p1;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:72: for (i = 0; i < len; i++)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genLabel
00114$:
;	genCmpLt
	ld	a, -8 (ix)
	sub	a, -2 (ix)
	ld	a, -7 (ix)
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:73: *p1++ = 'a';
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x61
;	genPlus
	inc	-10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00289$
	inc	-9 (ix)
00289$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:72: for (i = 0; i < len; i++)
;	genPlus
	inc	-8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00290$.
	inc	-7 (ix)
; common peephole 159 removed unused label 00290$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:75: mod1 = p1;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:76: for (i = 0; i < MAX_EXTRA+2; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0a
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:77: *p1++ = 'x';
;	genPointerSet
	ld	(hl), #0x78
;	genPlus
	inc	hl
;	genMinus
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00118$
;cases/./../tests/gcc-torture-execute-strcmp-1.c:76: for (i = 0; i < MAX_EXTRA+2; i++)
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:79: p2 = u2.buf;
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_u2
;cases/./../tests/gcc-torture-execute-strcmp-1.c:80: for (i = 0; i < off2; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00120$:
;	genCmpLt
	ld	a, e
	sub	a, -4 (ix)
	ld	a, d
	sbc	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:81: *p2++ = '\0';
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	inc	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:80: for (i = 0; i < off2; i++)
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:83: buf2 = p2;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:84: for (i = 0; i < len; i++)
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00123$:
;	genCmpLt
	ld	a, e
	sub	a, -2 (ix)
	ld	a, d
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:85: *p2++ = 'a';
;	genPointerSet
	ld	(hl), #0x61
;	genPlus
	inc	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:84: for (i = 0; i < len; i++)
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:87: mod2 = p2;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcmp-1.c:88: for (i = 0; i < MAX_EXTRA+2; i++)
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0a
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-strcmp-1.c:89: *p2++ = 'x';
;	genPointerSet
	ld	(hl), #0x78
;	genPlus
	inc	hl
;	genMinus
;cases/./../tests/gcc-torture-execute-strcmp-1.c:88: for (i = 0; i < MAX_EXTRA+2; i++)
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:91: mod1[0] = '\0';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
; common peephole 154b removed redundant zeroing of a (which has just been tested to be #0x00).
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:92: mod2[0] = '\0';
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:93: test (buf1, buf2, 0);
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
;cases/./../tests/gcc-torture-execute-strcmp-1.c:95: mod1[0] = 'a';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x61
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:96: mod1[1] = '\0';
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, c
	ld	h, b
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:97: mod2[0] = '\0';
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:98: test (buf1, buf2, +1);
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
;cases/./../tests/gcc-torture-execute-strcmp-1.c:100: mod1[0] = '\0';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:101: mod2[0] = 'a';
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x61
;cases/./../tests/gcc-torture-execute-strcmp-1.c:102: mod2[1] = '\0';
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:103: test (buf1, buf2, -1);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:105: mod1[0] = 'b';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x62
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:106: mod1[1] = '\0';
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:107: mod2[0] = 'c';
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x63
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:108: mod2[1] = '\0';
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:109: test (buf1, buf2, -1);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:111: mod1[0] = 'c';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x63
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:112: mod1[1] = '\0';
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:113: mod2[0] = 'b';
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x62
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:114: mod2[1] = '\0';
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:115: test (buf1, buf2, +1);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:117: mod1[0] = 'b';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x62
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:118: mod1[1] = '\0';
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:119: mod2[0] = (unsigned char)'\251';
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0xa9
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:120: mod2[1] = '\0';
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:121: test (buf1, buf2, -1);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:123: mod1[0] = (unsigned char)'\251';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xa9
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:124: mod1[1] = '\0';
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:125: mod2[0] = 'b';
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x62
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:126: mod2[1] = '\0';
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:127: test (buf1, buf2, +1);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:129: mod1[0] = (unsigned char)'\251';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xa9
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:130: mod1[1] = '\0';
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:131: mod2[0] = (unsigned char)'\252';
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0xaa
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:132: mod2[1] = '\0';
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:133: test (buf1, buf2, -1);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
	pop	bc
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:135: mod1[0] = (unsigned char)'\252';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xaa
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-strcmp-1.c:136: mod1[1] = '\0';
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:137: mod2[0] = (unsigned char)'\251';
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0xa9
	pop	hl
;cases/./../tests/gcc-torture-execute-strcmp-1.c:138: mod2[1] = '\0';
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcmp-1.c:139: test (buf1, buf2, +1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test
;cases/./../tests/gcc-torture-execute-strcmp-1.c:65: for (len = 0; len < MAX_TEST; len++)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00291$
	inc	-1 (ix)
00291$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x10
	ld	a, -1 (ix)
	sbc	a, #0x00
	jp	c, 00128$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:64: for (off2 = 0; off2 < MAX_OFFSET; off2++)
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00292$
	inc	-3 (ix)
00292$:
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, #0x08
	ld	a, -3 (ix)
	sbc	a, #0x00
	jp	c, 00166$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:63: for (off1 = 0; off1 < MAX_OFFSET; off1++)
;	genPlus
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00293$
	inc	-5 (ix)
00293$:
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, #0x08
	ld	a, -5 (ix)
	sbc	a, #0x00
	jp	c, 00168$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcmp-1.c:142: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00134$.
;cases/./../tests/gcc-torture-execute-strcmp-1.c:143: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
;cases/tst_gcc-torture-execute-strcmp-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-strcmp-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-strcmp-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-strcmp-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-strcmp-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-strcmp-1.c:15: return "gcc-torture-execute-strcmp-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-strcmp-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-strcmp-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
