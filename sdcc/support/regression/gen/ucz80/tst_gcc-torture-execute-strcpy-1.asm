;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_strcpy_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
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
	.ds 41
_u2:
	.ds 41
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
;cases/./../tests/gcc-torture-execute-strcpy-1.c:43: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 15 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -15
	ld	hl, #-15
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-strcpy-1.c:49: for (off1 = 0; off1 < MAX_OFFSET; off1++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;cases/./../tests/gcc-torture-execute-strcpy-1.c:50: for (off2 = 0; off2 < MAX_OFFSET; off2++)
;	genLabel
00179$:
;	genPlus
	ld	a, #<(_u1)
	add	a, -6 (ix)
	ld	-15 (ix), a
	ld	a, #>(_u1)
	adc	a, -5 (ix)
	ld	-14 (ix), a
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x00
;cases/./../tests/gcc-torture-execute-strcpy-1.c:51: for (len = 1; len < MAX_COPY; len++)
;	genLabel
00177$:
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_u2
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-13 (ix), l
	ld	-12 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genLabel
00133$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:53: for (i = 0, c = 'A'; i < MAX_LENGTH; i++, c++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x41
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genLabel
00123$:
;	genCmpLt
	ld	a, -8 (ix)
	sub	a, #0x29
	ld	a, -7 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:55: u1.buf[i] = 'a';
;	genPlus
	ld	a, #<(_u1)
	add	a, -8 (ix)
	ld	l, a
	ld	a, #>(_u1)
	adc	a, -7 (ix)
	ld	h, a
;	genPointerSet
	ld	(hl), #0x61
;cases/./../tests/gcc-torture-execute-strcpy-1.c:56: if (c >= 'A' + SEQUENCE_LENGTH)
;	genCmpLt
	ld	a, c
	sub	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:57: c = 'A';
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x41
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:58: u2.buf[i] = c;
;	genPlus
	ld	a, #<(_u2)
	add	a, -8 (ix)
	ld	l, a
	ld	a, #>(_u2)
	adc	a, -7 (ix)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
;cases/./../tests/gcc-torture-execute-strcpy-1.c:53: for (i = 0, c = 'A'; i < MAX_LENGTH; i++, c++)
;	genPlus
	inc	-8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00316$
	inc	-7 (ix)
00316$:
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:60: u2.buf[off2 + len] = '\0';
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	add	a, -1 (ix)
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_u2
	add	hl, de
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-strcpy-1.c:62: p = strcpy (u1.buf + off1, u2.buf + off2);
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
	push	de
	xor	a, a
	push	de
00317$:
	cp	a, (hl)
	ldi
	jr	nz, 00317$
	pop	hl
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:63: if (p != u1.buf + off1)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00318$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:64: ASSERT (0);
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
	ld	hl, #0x0040
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
00105$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:66: q = u1.buf;
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #<(_u1)
	ld	-7 (ix), #>(_u1)
;cases/./../tests/gcc-torture-execute-strcpy-1.c:67: for (i = 0; i < off1; i++, q++)
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;	genLabel
00126$:
;	genCmpLt
	ld	a, -10 (ix)
	sub	a, -6 (ix)
	ld	a, -9 (ix)
	sbc	a, -5 (ix)
	jp	po, 00319$
	xor	a, #0x80
00319$:
	jp	p, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:68: if (*q != 'a')
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x61
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00320$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:69: ASSERT (0);
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
	ld	hl, #0x0045
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
00127$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:67: for (i = 0; i < off1; i++, q++)
;	genPlus
	inc	-10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00321$
	inc	-9 (ix)
00321$:
;	genPlus
	inc	-8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00126$
; common peephole 84 jumped to 00126$ directly instead of via 00322$.
	inc	-7 (ix)
; common peephole 159 removed unused label 00322$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:71: for (i = 0, c = 'A' + off2; i < len; i++, q++, c++)
;	genPlus
	ld	a, -1 (ix)
	add	a, #0x41
	ld	-1 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:64: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), l
	ld	-10 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcpy-1.c:75: if (*q != c)
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-strcpy-1.c:71: for (i = 0, c = 'A' + off2; i < len; i++, q++, c++)
;	genPlus
	inc	de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, c
	sub	a, -3 (ix)
	ld	a, b
	sbc	a, -2 (ix)
	jp	po, 00323$
	xor	a, #0x80
00323$:
	jp	p, 00113$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:73: if (c >= 'A' + SEQUENCE_LENGTH)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00110$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:74: c = 'A';
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x41
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:75: if (*q != c)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00324$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:76: ASSERT (0);
;	genAssign
;fetchPairLong
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004c
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
	pop	bc
;	genLabel
00130$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:71: for (i = 0, c = 'A' + off2; i < len; i++, q++, c++)
;	genPlus
	inc	bc
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:79: if (*q++ != '\0')
;	genAssign
;	(locations are the same)
;	genIfx
	ld	a, -9 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00175$
;cases/./../tests/gcc-torture-execute-strcpy-1.c:80: ASSERT (0);
;	genAssign
;fetchPairLong
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0050
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
;cases/./../tests/gcc-torture-execute-strcpy-1.c:81: for (i = 0; i < MAX_EXTRA; i++, q++)
;	genLabel
00175$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genAssign
;	(locations are the same)
;	genLabel
00131$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:82: if (*q != 'a')
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x61
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00132$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00325$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:83: ASSERT (0);
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
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0053
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
	pop	bc
;	genLabel
00132$:
;cases/./../tests/gcc-torture-execute-strcpy-1.c:81: for (i = 0; i < MAX_EXTRA; i++, q++)
;	genPlus
	inc	c
;	genPlus
	inc	-8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00326$
	inc	-7 (ix)
00326$:
;	genCmpLt
	ld	a, c
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00131$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:51: for (len = 1; len < MAX_COPY; len++)
;	genPlus
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00327$
	inc	-2 (ix)
00327$:
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, #0x18
	ld	a, -2 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00133$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:50: for (off2 = 0; off2 < MAX_OFFSET; off2++)
;	genPlus
	inc	-4 (ix)
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, #0x08
	jp	c, 00177$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:49: for (off1 = 0; off1 < MAX_OFFSET; off1++)
;	genPlus
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00328$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, #0x08
	jp	c, 00179$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-strcpy-1.c:86: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00139$.
;cases/./../tests/gcc-torture-execute-strcpy-1.c:87: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 10 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-strcpy-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-strcpy-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-strcpy-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-strcpy-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-strcpy-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-strcpy-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-strcpy-1.c:15: return "gcc-torture-execute-strcpy-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-strcpy-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-strcpy-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
