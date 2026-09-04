;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20020615_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _line_hints
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
_testTortureExecute_fh_10000_25:
	.ds 18
_testTortureExecute_gsf_10000_25:
	.ds 32
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
;cases/./../tests/gcc-torture-execute-20020615-1.c:64: static font_hints fh[] = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	(_testTortureExecute_fh_10000_25), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x01
	ld	((_testTortureExecute_fh_10000_25 + 2)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, h
	ld	((_testTortureExecute_fh_10000_25 + 4)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_testTortureExecute_fh_10000_25 + 6)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_testTortureExecute_fh_10000_25 + 8)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x01
	ld	((_testTortureExecute_fh_10000_25 + 10)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, h
	ld	((_testTortureExecute_fh_10000_25 + 12)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_testTortureExecute_fh_10000_25 + 14)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_testTortureExecute_fh_10000_25 + 16)), hl
;cases/./../tests/gcc-torture-execute-20020615-1.c:65: static gs_fixed_point gsf[]
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	(_testTortureExecute_gsf_10000_25), hl
;fetchPairLong
	ld	l, #0x03
	ld	(_testTortureExecute_gsf_10000_25+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x3958
	ld	((_testTortureExecute_gsf_10000_25 + 4)), hl
;fetchPairLong
	ld	hl, #0x0001
	ld	((_testTortureExecute_gsf_10000_25 + 4)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, h
	ld	((_testTortureExecute_gsf_10000_25 + 8)), hl
;fetchPairLong
	ld	l, #0x03
	ld	((_testTortureExecute_gsf_10000_25 + 8)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x8189
	ld	((_testTortureExecute_gsf_10000_25 + 12)), hl
;fetchPairLong
	ld	hl, #0x0001
	ld	((_testTortureExecute_gsf_10000_25 + 12)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x3958
	ld	((_testTortureExecute_gsf_10000_25 + 16)), hl
;fetchPairLong
	ld	hl, #0x0001
	ld	((_testTortureExecute_gsf_10000_25 + 16)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, h
	ld	((_testTortureExecute_gsf_10000_25 + 20)), hl
;fetchPairLong
	ld	l, #0x03
	ld	((_testTortureExecute_gsf_10000_25 + 20)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x8189
	ld	((_testTortureExecute_gsf_10000_25 + 24)), hl
;fetchPairLong
	ld	hl, #0x0001
	ld	((_testTortureExecute_gsf_10000_25 + 24)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, h
	ld	((_testTortureExecute_gsf_10000_25 + 28)), hl
;fetchPairLong
	ld	l, #0x03
	ld	((_testTortureExecute_gsf_10000_25 + 28)+2), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-20020615-1.c:27: line_hints(const font_hints *fh, const gs_fixed_point *p0,
;	genLabel
;	genFunction
;	---------------------------------
; Function line_hints
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 25 bytes.
_line_hints::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -25
	ld	iy, #-25
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:30: long dx = p1->x - p0->x;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #23
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPointerGet
;fetchPairLong
	ld	l, -12 (ix)
	ld	h, -11 (ix)
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
	ld	a, -4 (ix)
	sub	a, c
	ld	-8 (ix), a
	ld	a, -3 (ix)
	sbc	a, b
	ld	-7 (ix), a
	ld	a, -2 (ix)
	sbc	a, l
	ld	-6 (ix), a
	ld	a, -1 (ix)
	sbc	a, h
	ld	-5 (ix), a
;cases/./../tests/gcc-torture-execute-20020615-1.c:31: long dy = p1->y - p0->y;
;	genAssign
;	(locations are the same)
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	add	hl, bc
	ld	bc, #0x0004
	ldir
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
	ld	b, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #4
	add	hl, bc
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genMinus
	ld	a, -16 (ix)
	sub	a, c
	ld	-4 (ix), a
	ld	a, -15 (ix)
	sbc	a, b
	ld	-3 (ix), a
	ld	a, -14 (ix)
	sbc	a, e
	ld	-2 (ix), a
	ld	a, -13 (ix)
	sbc	a, d
	ld	-1 (ix), a
;cases/./../tests/gcc-torture-execute-20020615-1.c:33: int xi = fh->x_inverted, yi = fh->y_inverted;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-25 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-24 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #4
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-23 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-22 (ix), a
;cases/./../tests/gcc-torture-execute-20020615-1.c:35: if (xi)
;	genIfx
	ld	a, -24 (ix)
	or	a, -25 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-20020615-1.c:36: dx = -dx;
;	genUminus
	xor	a, a
	sub	a, -8 (ix)
	ld	-8 (ix), a
	ld	a, #0x00
	sbc	a, -7 (ix)
	ld	-7 (ix), a
	ld	a, #0x00
	sbc	a, -6 (ix)
	ld	-6 (ix), a
	sbc	a, a
	sub	a, -5 (ix)
	ld	-5 (ix), a
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:37: if (yi)
;	genIfx
	ld	a, -22 (ix)
	or	a, -23 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/gcc-torture-execute-20020615-1.c:38: dy = -dy;
;	genUminus
	xor	a, a
	sub	a, -4 (ix)
	ld	-4 (ix), a
	ld	a, #0x00
	sbc	a, -3 (ix)
	ld	-3 (ix), a
	ld	a, #0x00
	sbc	a, -2 (ix)
	ld	-2 (ix), a
	sbc	a, a
	sub	a, -1 (ix)
	ld	-1 (ix), a
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:39: if (fh->axes_swapped) {
;	genPointerGet
;fetchPairLong
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	_moveFrom_tpair_()
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through b.
	ld	a, (hl)
	inc	hl
; common peephole 99a removed load by reordering or arguments.
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;cases/./../tests/gcc-torture-execute-20020615-1.c:40: long t = dx;
;	genAssign
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:41: int ti = xi;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	pop	bc
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:42: dx = dy, xi = yi;
;	genAssign
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -23 (ix)
	ld	-25 (ix), a
	ld	a, -22 (ix)
	ld	-24 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:43: dy = t, yi = ti;
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), c
	ld	-22 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:45: adx = dx < 0 ? -dx : dx;
;	genCmpLt
	ld	a, -5 (ix)
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
; common peephole 33 loaded a from a instead of going through -21 (ix).
	ld	-21 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genUminus
	xor	a, a
	sub	a, -8 (ix)
	ld	c, a
	ld	a, #0x00
	sbc	a, -7 (ix)
	ld	b, a
	ld	a, #0x00
	sbc	a, -6 (ix)
	ld	e, a
	sbc	a, a
	sub	a, -5 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;	genLabel
00121$:
;	genAssign
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	e, -6 (ix)
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00122$:
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), c
	ld	-19 (ix), b
	ld	-18 (ix), e
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:46: ady = dy < 0 ? -dy : dy;
;	genCmpLt
	bit	7, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00123$
;	skipping generated iCode
;	genUminus
	xor	a, a
	sub	a, -4 (ix)
	ld	c, a
	ld	a, #0x00
	sbc	a, -3 (ix)
	ld	b, a
	ld	a, #0x00
	sbc	a, -2 (ix)
	ld	e, a
	sbc	a, a
	sub	a, -1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;	genLabel
00123$:
;	genAssign
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	e, -2 (ix)
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00124$:
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), c
	ld	-15 (ix), b
	ld	-14 (ix), e
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:47: if (dy != 0 && (adx <= ady >> 4)) {
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
;	genRightShift
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -16 (ix)
	ld	e, -15 (ix)
	ld	d, -14 (ix)
	ld	l, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x04
00233$:
	sra	l
	rr	d
	rr	e
	rr	c
; common peephole 159 removed unused label 00234$.
	djnz	00233$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, c
	sub	a, -20 (ix)
	ld	a, e
	sbc	a, -19 (ix)
	ld	a, d
	sbc	a, -18 (ix)
	ld	a, l
	sbc	a, -17 (ix)
	jp	po, 00235$
	xor	a, #0x80
00235$:
	jp	m, 00116$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020615-1.c:48: hints = dy > 0 ? 2 : 1;
;	genCmpGt
	xor	a, a
	cp	a, -4 (ix)
	sbc	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	po, 00236$
	xor	a, #0x80
00236$:
	jp	p, 00125$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x02
	ld	-1 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
;	genLabel
00125$:
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genLabel
00126$:
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:49: if (xi)
;	genIfx
	ld	a, -24 (ix)
	or	a, -25 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;cases/./../tests/gcc-torture-execute-20020615-1.c:50: hints ^= 3;
;	genXor
	ld	a, e
	xor	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00116$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:51: } else if (dx != 0 && (ady <= adx >> 4)) {
;	genIfx
	ld	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;	genRightShift
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	c, -18 (ix)
	ld	l, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x04
00237$:
	sra	l
	rr	c
	rr	d
	rr	e
; common peephole 159 removed unused label 00238$.
	djnz	00237$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, e
	sub	a, -16 (ix)
	ld	a, d
	sbc	a, -15 (ix)
	ld	a, c
	sbc	a, -14 (ix)
	ld	a, l
	sbc	a, -13 (ix)
	jp	po, 00239$
	xor	a, #0x80
00239$:
	jp	m, 00112$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020615-1.c:52: hints = dx < 0 ? 8 : 4;
;	genIfx
	ld	a, -21 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00127$
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0008
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00128$
;	genLabel
00127$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0004
;	genLabel
00128$:
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020615-1.c:53: if (yi)
;	genIfx
	ld	a, -22 (ix)
	or	a, -23 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;cases/./../tests/gcc-torture-execute-20020615-1.c:54: hints ^= 12;
;	genXor
	ld	a, e
	xor	a, #0x0c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:56: hints = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:57: return hints;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00119$.
;cases/./../tests/gcc-torture-execute-20020615-1.c:58: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total line_hints function size at codegen: 15 bytes.
;cases/./../tests/gcc-torture-execute-20020615-1.c:61: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20020615-1.c:68: if (line_hints (fh, gsf, gsf + 1) != 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_testTortureExecute_gsf_10000_25 + 8)
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_testTortureExecute_gsf_10000_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_testTortureExecute_fh_10000_25
;	genCall
	call	_line_hints
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020615-1.c:69: || line_hints (fh + 1, gsf + 2, gsf + 3) != 8
;	genPlus
	ld	bc, #_testTortureExecute_gsf_10000_25 + 24
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_testTortureExecute_gsf_10000_25 + 16)
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #(_testTortureExecute_fh_10000_25 + 6)
;	genCall
	call	_line_hints
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020615-1.c:70: || line_hints (fh + 2, gsf + 2, gsf + 3) != 4)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_testTortureExecute_gsf_10000_25 + 16)
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #(_testTortureExecute_fh_10000_25 + 12)
;	genCall
	call	_line_hints
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00127$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20020615-1.c:71: ASSERT (0);
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
	ld	hl, #0x0047
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
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-20020615-1.c:72: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-20020615-1.c:74: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20020615-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20020615-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20020615-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20020615-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020615-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20020615-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20020615-1.c:15: return "gcc-torture-execute-20020615-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020615-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20020615-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
