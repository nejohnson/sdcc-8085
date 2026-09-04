;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr42833
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _helper_neon_rshl_s8
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
;cases/./../tests/gcc-torture-execute-pr42833.c:32: helper_neon_rshl_s8 (uint32_t arg1, uint32_t arg2)
;	genLabel
;	genFunction
;	---------------------------------
; Function helper_neon_rshl_s8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 18 bytes.
_helper_neon_rshl_s8::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -18
	ld	iy, #-18
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:45: conv_u.i = (arg1);
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:47: memcpy (&vsrc1, &(conv_u.v), sizeof (neon_s8));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0004
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:57: conv_u.i = (arg2);
;	genAddrOf
	ld	hl, #12
	add	hl, sp
	ex	de, hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #22
	add	hl, sp
	ld	bc, #0x0004
	ldir
;cases/./../tests/gcc-torture-execute-pr42833.c:59: memcpy (&vsrc2, &(conv_u.v), sizeof (neon_s8));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0004
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:65: tmp = (int8_t) vsrc2.v1;
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:66: if (tmp >= (ssize_t) sizeof (vsrc1.v1) * 8)
;	genCmpLt
	ld	a, c
	xor	a, #0x80
	sub	a, #0x88
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00117$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:68: vdest.v1 = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-pr42833.c:72: vdest.v1 = vsrc1.v1 >> (sizeof (vsrc1.v1) * 8 - 1);
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:70: else if (tmp < -(ssize_t) sizeof (vsrc1.v1) * 8)
;	genCmpLt
	ld	a, c
	xor	a, #0x80
	sub	a, #0x78
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00114$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:72: vdest.v1 = vsrc1.v1 >> (sizeof (vsrc1.v1) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genRightShift
	sra	e
	sra	e
	sra	e
	sra	e
	sra	e
	sra	e
	sra	e
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-pr42833.c:76: vdest.v1 = vsrc1.v1 >> (tmp - 1);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:74: else if (tmp == -(ssize_t) sizeof (vsrc1.v1) * 8)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf8
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00300$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00301$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:76: vdest.v1 = vsrc1.v1 >> (tmp - 1);
;	genAddrOf
	ld	hl, #8
	add	hl, sp
;	genMinus
	ld	a, b
;	genRightShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 156a swap dec a / inc a pair.
; common peephole 156c removed inc a / dec a pair.
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00303$
00302$:
	sra	e
00303$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00302$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), e
;cases/./../tests/gcc-torture-execute-pr42833.c:77: vdest.v1++;
;	genPlus
	inc	e
;	genPointerSet
	ld	(hl), e
;cases/./../tests/gcc-torture-execute-pr42833.c:78: vdest.v1 >>= 1;
;	genRightShift
	sra	e
;	genPointerSet
	ld	(hl), e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-pr42833.c:80: else if (tmp < 0)
;	genCmpLt
	bit	7, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:82: vdest.v1 = (vsrc1.v1 + (1 << (-1 - tmp))) >> -tmp;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, #0xff
	sub	a, b
	ld	c, a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	c
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00305$
00304$:
	add	hl, hl
00305$:
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00304$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	hl, de
;	genUminus
	xor	a, a
	sub	a, b
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00307$
00306$:
	sra	h
	rr	l
00307$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00306$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr42833.c:86: vdest.v1 = vsrc1.v1 << tmp;
;	skipping iCode since result will be rematerialized
;	genLeftShift
	ld	b, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00309$
00308$:
	add	a, a
00309$:
	djnz	00308$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-pr42833.c:93: tmp = (int8_t) vsrc2.v2;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:94: if (tmp >= (ssize_t) sizeof (vsrc1.v2) * 8)
;	genCmpLt
	ld	a, b
	xor	a, #0x80
	sub	a, #0x88
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00132$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:96: vdest.v2 = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00135$
;	genLabel
00132$:
;cases/./../tests/gcc-torture-execute-pr42833.c:100: vdest.v2 = vsrc1.v2 >> (sizeof (vsrc1.v2) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:98: else if (tmp < -(ssize_t) sizeof (vsrc1.v2) * 8)
;	genCmpLt
	ld	a, b
	xor	a, #0x80
	sub	a, #0x78
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00129$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:100: vdest.v2 = vsrc1.v2 >> (sizeof (vsrc1.v2) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genRightShift
	sra	e
	sra	e
	sra	e
	sra	e
	sra	e
	sra	e
	sra	e
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00135$
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-pr42833.c:104: vdest.v2 = vsrc1.v2 >> (tmp - 1);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:102: else if (tmp == -(ssize_t) sizeof (vsrc1.v2) * 8)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf8
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00310$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00126$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00311$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:104: vdest.v2 = vsrc1.v2 >> (tmp - 1);
;	genAddrOf
	ld	hl, #9
	add	hl, sp
;	genMinus
;	genRightShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 156a swap dec c / inc c pair.
; common peephole 156c removed inc c / dec c pair.
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00313$
00312$:
	sra	e
00313$:
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00312$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), e
;cases/./../tests/gcc-torture-execute-pr42833.c:105: vdest.v2++;
;	genPlus
	inc	e
;	genPointerSet
	ld	(hl), e
;cases/./../tests/gcc-torture-execute-pr42833.c:106: vdest.v2 >>= 1;
;	genRightShift
	sra	e
;	genPointerSet
	ld	(hl), e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00135$
;	genLabel
00126$:
;cases/./../tests/gcc-torture-execute-pr42833.c:108: else if (tmp < 0)
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00123$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:110: vdest.v2 = (vsrc1.v2 + (1 << (-1 - tmp))) >> -tmp;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, #0xff
	sub	a, c
;	genLeftShift
; common peephole 9 loaded b from a directly instead of going through l.
	ld	b, a
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00315$
00314$:
	add	hl, hl
00315$:
	djnz	00314$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	hl, de
;	genUminus
	xor	a, a
	sub	a, c
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00317$
00316$:
	sra	h
	rr	l
00317$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00316$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00135$
;	genLabel
00123$:
;cases/./../tests/gcc-torture-execute-pr42833.c:114: vdest.v2 = vsrc1.v2 << tmp;
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00319$
00318$:
	add	a, a
00319$:
	djnz	00318$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00135$:
;cases/./../tests/gcc-torture-execute-pr42833.c:121: tmp = (int8_t) vsrc2.v3;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:122: if (tmp >= (ssize_t) sizeof (vsrc1.v3) * 8)
;	genCmpLt
	ld	a, c
	xor	a, #0x80
	sub	a, #0x88
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00147$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:124: vdest.v3 = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x00
;	genGoto
	jp	00150$
;	genLabel
00147$:
;cases/./../tests/gcc-torture-execute-pr42833.c:128: vdest.v3 = vsrc1.v3 >> (sizeof (vsrc1.v3) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:126: else if (tmp < -(ssize_t) sizeof (vsrc1.v3) * 8)
;	genCmpLt
	ld	a, c
	xor	a, #0x80
	sub	a, #0x78
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00144$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:128: vdest.v3 = vsrc1.v3 >> (sizeof (vsrc1.v3) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genRightShift
	ld	a, -1 (ix)
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00144$:
;cases/./../tests/gcc-torture-execute-pr42833.c:132: vdest.v3 = vsrc1.v3 >> (tmp - 1);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:130: else if (tmp == -(ssize_t) sizeof (vsrc1.v3) * 8)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a,c
	ld	e,a
; common peephole 103 loaded value in a first and used it next
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf8
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00320$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00321$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:132: vdest.v3 = vsrc1.v3 >> (tmp - 1);
;	genAddrOf
	ld	hl, #10
	add	hl, sp
;	genMinus
	ld	b, e
	dec	b
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00323$
00322$:
	sra	a
00323$:
	djnz	00322$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr42833.c:133: vdest.v3++;
;	genPlus
	inc	a
;	genPointerSet
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr42833.c:134: vdest.v3 >>= 1;
;	genRightShift
	sra	a
;	genPointerSet
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00141$:
;cases/./../tests/gcc-torture-execute-pr42833.c:136: else if (tmp < 0)
;	genCmpLt
	bit	7, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00138$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:138: vdest.v3 = (vsrc1.v3 + (1 << (-1 - tmp))) >> -tmp;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 0 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-2 (ix), a
	rlca
	sbc	a, a
	ld	-1 (ix), a
;	genMinus
	ld	a, #0xff
	sub	a, e
	ld	b, a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00325$
00324$:
	add	hl, hl
00325$:
	djnz	00324$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genUminus
	xor	a, a
	sub	a, e
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00327$
00326$:
	sra	h
	rr	l
00327$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00326$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00138$:
;cases/./../tests/gcc-torture-execute-pr42833.c:142: vdest.v3 = vsrc1.v3 << tmp;
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	c
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00329$
00328$:
	add	a, a
00329$:
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00328$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00150$:
;cases/./../tests/gcc-torture-execute-pr42833.c:149: tmp = (int8_t) vsrc2.v4;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:150: if (tmp >= (ssize_t) sizeof (vsrc1.v4) * 8)
;	genCmpLt
	ld	a, c
	xor	a, #0x80
	sub	a, #0x88
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00162$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:152: vdest.v4 = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
;	genLabel
00162$:
;cases/./../tests/gcc-torture-execute-pr42833.c:156: vdest.v4 = vsrc1.v4 >> (sizeof (vsrc1.v4) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:154: else if (tmp < -(ssize_t) sizeof (vsrc1.v4) * 8)
;	genCmpLt
	ld	a, c
	xor	a, #0x80
	sub	a, #0x78
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00159$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:156: vdest.v4 = vsrc1.v4 >> (sizeof (vsrc1.v4) * 8 - 1);
;	skipping iCode since result will be rematerialized
;	genRightShift
	sra	b
	sra	b
	sra	b
	sra	b
	sra	b
	sra	b
	sra	b
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
;	genLabel
00159$:
;cases/./../tests/gcc-torture-execute-pr42833.c:160: vdest.v4 = vsrc1.v4 >> (tmp - 1);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:158: else if (tmp == -(ssize_t) sizeof (vsrc1.v4) * 8)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a,c
	ld	e,a
; common peephole 103 loaded value in a first and used it next
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf8
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00330$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00331$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:160: vdest.v4 = vsrc1.v4 >> (tmp - 1);
;	genAddrOf
	ld	hl, #11
	add	hl, sp
;	genMinus
;	genRightShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 156a swap dec e / inc e pair.
; common peephole 156c removed inc e / dec e pair.
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00333$
00332$:
	sra	b
00333$:
	dec	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00332$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), b
;cases/./../tests/gcc-torture-execute-pr42833.c:161: vdest.v4++;
;	genPlus
	inc	b
;	genPointerSet
	ld	(hl), b
;cases/./../tests/gcc-torture-execute-pr42833.c:162: vdest.v4 >>= 1;
;	genRightShift
	sra	b
;	genPointerSet
	ld	(hl), b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
;	genLabel
00156$:
;cases/./../tests/gcc-torture-execute-pr42833.c:164: else if (tmp < 0)
;	genCmpLt
	bit	7, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00153$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:166: vdest.v4 = (vsrc1.v4 + (1 << (-1 - tmp))) >> -tmp;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genMinus
	ld	a, #0xff
	sub	a, e
	ld	d, a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00335$
00334$:
	add	hl, hl
00335$:
	dec	d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00334$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	hl, bc
;	genUminus
	xor	a, a
	sub	a, e
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00337$
00336$:
	sra	h
	rr	l
00337$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00336$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
;	genLabel
00153$:
;cases/./../tests/gcc-torture-execute-pr42833.c:170: vdest.v4 = vsrc1.v4 << tmp;
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	c
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00339$
00338$:
	add	a, a
00339$:
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00338$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00165$:
;cases/./../tests/gcc-torture-execute-pr42833.c:182: memcpy (&conv_u.v, &(vdest), sizeof (neon_s8));
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
	ex	de, hl
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
;fetchPairLong
	ld	bc, #0x0004
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:183: res = conv_u.i;
;	genAddrOf
	ld	hl, #12
	add	hl, sp
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;cases/./../tests/gcc-torture-execute-pr42833.c:186: return res;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00170$.
;cases/./../tests/gcc-torture-execute-pr42833.c:187: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total helper_neon_rshl_s8 function size at codegen: 15 bytes.
;cases/./../tests/gcc-torture-execute-pr42833.c:191: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr42833.c:196: uint32_t r = helper_neon_rshl_s8 (0x05050505, 0x01010101);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0101
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0505
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_helper_neon_rshl_s8
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr42833.c:197: if (r != 0x0a0a0a0a)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
	ld	de, #0x0a0a
	cp	a, a
	sbc	hl, de
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00113$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr42833.c:198: ASSERT (0);
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
	ld	hl, #0x00c6
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
;cases/./../tests/gcc-torture-execute-pr42833.c:199: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-pr42833.c:203: }
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
	.ascii "cases/./../tests/gcc-torture-execute-pr42833.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr42833.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr42833.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr42833.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr42833.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr42833.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr42833.c:15: return "gcc-torture-execute-pr42833.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr42833.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr42833.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
