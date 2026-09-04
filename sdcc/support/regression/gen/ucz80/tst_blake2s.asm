;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_blake2s
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBlake
	.globl _blake2s_selftest
	.globl ___prints
	.globl ___numCases
	.globl _blake2s_init
	.globl _blake2s_update
	.globl _blake2s_final
	.globl _blake2s
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
;cases/./../tests/blake2s.c:113: static void blake2s_compress(blake2s_ctx *ctx, int last)
;	genLabel
;	genFunction
;	---------------------------------
; Function blake2s_compress
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 148 bytes.
_blake2s_compress:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -148
	ld	iy, #-148
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:118: for (i = 0; i < 8; i++) {           // init work variables
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0040
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-16 (ix), l
	ld	-15 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00107$:
;cases/./../tests/blake2s.c:119: v[i] = ctx->h[i];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #6
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
	pop	de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #144
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	genPointerSet
; common peephole 50a eliminated dead pop/push de pair.
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #144
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;cases/./../tests/blake2s.c:120: v[i + 8] = blake2s_iv[i];
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x08
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genLeftShift
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #6
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
	pop	de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_blake2s_iv
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
; common peephole 26d moved push bc before de/hl swap.
	push	bc
	ex	de, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #142
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	genPointerSet
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #142
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;cases/./../tests/blake2s.c:118: for (i = 0; i < 8; i++) {           // init work variables
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00107$
;	skipping generated iCode
;cases/./../tests/blake2s.c:123: v[12] ^= ctx->t[0];                 // low 32 bits of offset
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -96 (ix)
	ld	b, -95 (ix)
	ld	e, -94 (ix)
	ld	d, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #144
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0060
	add	hl, bc
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;	genXor
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	xor	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, -5 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-96 (ix), c
	ld	-95 (ix), b
	ld	-94 (ix), e
	ld	-93 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:124: v[13] ^= ctx->t[1];                 // high 32 bits
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -92 (ix)
	ld	b, -91 (ix)
	ld	e, -90 (ix)
	ld	d, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #144
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0064
	add	hl, bc
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;	genXor
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	xor	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, -5 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-92 (ix), c
	ld	-91 (ix), b
	ld	-90 (ix), e
	ld	-89 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:126: v[14] = ~v[14];
;	skipping iCode since result will be rematerialized
;cases/./../tests/blake2s.c:125: if (last)                           // last block flag set ?
;	genIfx
	ld	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
;cases/./../tests/blake2s.c:126: v[14] = ~v[14];
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -88 (ix)
	ld	b, -87 (ix)
	ld	e, -86 (ix)
	ld	d, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
	ld	a, c
	cpl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	cpl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	cpl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	cpl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-88 (ix), c
	ld	-87 (ix), b
	ld	-86 (ix), e
	ld	-85 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:127: for (i = 0; i < 16; i++)            // get little-endian words
;	genLabel
00128$:
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-14 (ix), a
	ld	a, -1 (ix)
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00109$:
;cases/./../tests/blake2s.c:128: m[i] = B2S_GET32(&ctx->b[4 * i]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #70
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
	pop	de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	a, a
	add	a, a
	ld	e, a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genPlus
	ld	a, -2 (ix)
	add	a, e
	ld	-10 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
;	genLeftShift
;	genMove_o size 3 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from l into h.
; common peephole 1 removed dead load from d into l.
; common peephole 9 loaded d from (hl) directly instead of going through e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into e.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
; common peephole 115b used (hl) in subtraction instead of going through d.
	xor	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
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
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into h.
; common peephole 1 removed dead load from #0x0000 into de.
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into de.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
; common peephole 115a used (hl) in xor instead of going through l.
	xor	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9 loaded h from (hl) directly instead of going through e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into de.
; common peephole 1 removed dead load from #0x00 into l.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
; common peephole 115a used (hl) in xor instead of going through h.
	xor	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #142
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;cases/./../tests/blake2s.c:127: for (i = 0; i < 16; i++)            // get little-endian words
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00109$
;	skipping generated iCode
;cases/./../tests/blake2s.c:129: for (i = 0; i < 10; i++) {          // ten rounds
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genLabel
00111$:
;cases/./../tests/blake2s.c:130: B2S_G( 0, 4,  8, 12, m[sigma[i][ 0]], m[sigma[i][ 1]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -128 (ix)
	ld	b, -127 (ix)
	ld	e, -126 (ix)
	ld	d, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, c
	ld	(hl), a
	ld	a, -9 (ix)
; common peephole 96b move inc hl before adc a, b
	inc	hl
	adc	a, b
	ld	(hl), a
	ld	a, -8 (ix)
; common peephole 96b move inc hl before adc a, e
	inc	hl
	adc	a, e
	ld	(hl), a
	ld	a, -7 (ix)
; common peephole 96b move inc hl before adc a, d
	inc	hl
	adc	a, d
	ld	(hl), a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_sigma
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #4
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:123: v[12] ^= ctx->t[0];                 // low 32 bits of offset
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -96 (ix)
	ld	h, -95 (ix)
	ld	c, -94 (ix)
	ld	b, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:130: B2S_G( 0, 4,  8, 12, m[sigma[i][ 0]], m[sigma[i][ 1]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-96 (ix), a
	ld	a, 1 (iy)
	ld	-95 (ix), a
	ld	a, 2 (iy)
	ld	-94 (ix), a
	ld	a, 3 (iy)
	ld	-93 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -112 (ix)
	ld	-14 (ix), a
	ld	a, -111 (ix)
	ld	-13 (ix), a
	ld	a, -110 (ix)
	ld	-12 (ix), a
	ld	a, -109 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-112 (ix), a
	ld	a, -9 (ix)
	ld	-111 (ix), a
	ld	a, -8 (ix)
	ld	-110 (ix), a
	ld	a, -7 (ix)
	ld	-109 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -128 (ix)
	ld	h, -127 (ix)
	ld	c, -126 (ix)
	ld	b, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	ld	a, #0x04
00195$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00196$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00195$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	a, #0x04
00197$:
	add	hl, hl
; common peephole 159 removed unused label 00198$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00197$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -9 (ix)
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, l
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-128 (ix), a
	ld	a, -13 (ix)
	ld	-127 (ix), a
	ld	a, -12 (ix)
	ld	-126 (ix), a
	ld	a, -11 (ix)
	ld	-125 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #4
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:123: v[12] ^= ctx->t[0];                 // low 32 bits of offset
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -96 (ix)
	ld	b, -95 (ix)
	ld	l, -94 (ix)
	ld	h, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:130: B2S_G( 0, 4,  8, 12, m[sigma[i][ 0]], m[sigma[i][ 1]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), b
	ld	-9 (ix), l
	ld	-8 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	h, c
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	l, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-96 (ix), a
	ld	a, 1 (iy)
	ld	-95 (ix), a
	ld	a, 2 (iy)
	ld	-94 (ix), a
	ld	a, 3 (iy)
	ld	-93 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -112 (ix)
	ld	-14 (ix), a
	ld	a, -111 (ix)
	ld	-13 (ix), a
	ld	a, -110 (ix)
	ld	-12 (ix), a
	ld	a, -109 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-112 (ix), a
	ld	a, -9 (ix)
	ld	-111 (ix), a
	ld	a, -8 (ix)
	ld	-110 (ix), a
	ld	a, -7 (ix)
	ld	-109 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -128 (ix)
	ld	h, -127 (ix)
	ld	c, -126 (ix)
	ld	b, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00203$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00204$.
	djnz	00203$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-128 (ix), c
	ld	-127 (ix), b
	ld	-126 (ix), l
	ld	-125 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:131: B2S_G( 1, 5,  9, 13, m[sigma[i][ 2]], m[sigma[i][ 3]]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -124 (ix)
	ld	-10 (ix), a
	ld	a, -123 (ix)
	ld	-9 (ix), a
	ld	a, -122 (ix)
	ld	-8 (ix), a
	ld	a, -121 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:124: v[13] ^= ctx->t[1];                 // high 32 bits
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -92 (ix)
	ld	h, -91 (ix)
	ld	c, -90 (ix)
	ld	b, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:131: B2S_G( 1, 5,  9, 13, m[sigma[i][ 2]], m[sigma[i][ 3]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-92 (ix), a
	ld	a, 1 (iy)
	ld	-91 (ix), a
	ld	a, 2 (iy)
	ld	-90 (ix), a
	ld	a, 3 (iy)
	ld	-89 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -108 (ix)
	ld	-14 (ix), a
	ld	a, -107 (ix)
	ld	-13 (ix), a
	ld	a, -106 (ix)
	ld	-12 (ix), a
	ld	a, -105 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-108 (ix), a
	ld	a, -9 (ix)
	ld	-107 (ix), a
	ld	a, -8 (ix)
	ld	-106 (ix), a
	ld	a, -7 (ix)
	ld	-105 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -124 (ix)
	ld	h, -123 (ix)
	ld	c, -122 (ix)
	ld	b, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	ld	a, #0x04
00211$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00212$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00211$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	a, #0x04
00213$:
	add	hl, hl
; common peephole 159 removed unused label 00214$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00213$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -9 (ix)
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, l
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-124 (ix), a
	ld	a, -13 (ix)
	ld	-123 (ix), a
	ld	a, -12 (ix)
	ld	-122 (ix), a
	ld	a, -11 (ix)
	ld	-121 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:124: v[13] ^= ctx->t[1];                 // high 32 bits
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -92 (ix)
	ld	h, -91 (ix)
	ld	c, -90 (ix)
	ld	b, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:131: B2S_G( 1, 5,  9, 13, m[sigma[i][ 2]], m[sigma[i][ 3]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	h, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-92 (ix), a
	ld	a, 1 (iy)
	ld	-91 (ix), a
	ld	a, 2 (iy)
	ld	-90 (ix), a
	ld	a, 3 (iy)
	ld	-89 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -108 (ix)
	ld	-14 (ix), a
	ld	a, -107 (ix)
	ld	-13 (ix), a
	ld	a, -106 (ix)
	ld	-12 (ix), a
	ld	a, -105 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-108 (ix), a
	ld	a, -9 (ix)
	ld	-107 (ix), a
	ld	a, -8 (ix)
	ld	-106 (ix), a
	ld	a, -7 (ix)
	ld	-105 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -124 (ix)
	ld	h, -123 (ix)
	ld	c, -122 (ix)
	ld	b, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00219$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00220$.
	djnz	00219$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-124 (ix), c
	ld	-123 (ix), b
	ld	-122 (ix), l
	ld	-121 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:132: B2S_G( 2, 6, 10, 14, m[sigma[i][ 4]], m[sigma[i][ 5]]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #12
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -120 (ix)
	ld	-10 (ix), a
	ld	a, -119 (ix)
	ld	-9 (ix), a
	ld	a, -118 (ix)
	ld	-8 (ix), a
	ld	a, -117 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #4
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #12
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -88 (ix)
	ld	h, -87 (ix)
	ld	c, -86 (ix)
	ld	b, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-88 (ix), a
	ld	a, 1 (iy)
	ld	-87 (ix), a
	ld	a, 2 (iy)
	ld	-86 (ix), a
	ld	a, 3 (iy)
	ld	-85 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -104 (ix)
	ld	-14 (ix), a
	ld	a, -103 (ix)
	ld	-13 (ix), a
	ld	a, -102 (ix)
	ld	-12 (ix), a
	ld	a, -101 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-104 (ix), a
	ld	a, -9 (ix)
	ld	-103 (ix), a
	ld	a, -8 (ix)
	ld	-102 (ix), a
	ld	a, -7 (ix)
	ld	-101 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -120 (ix)
	ld	h, -119 (ix)
	ld	c, -118 (ix)
	ld	b, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	push	af
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	pop	af
	ld	b, #0x04
00227$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00228$.
	djnz	00227$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x04
00229$:
	add	hl, hl
; common peephole 159 removed unused label 00230$.
	djnz	00229$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-120 (ix), a
	ld	a, -13 (ix)
	ld	-119 (ix), a
	ld	a, -12 (ix)
	ld	-118 (ix), a
	ld	a, -11 (ix)
	ld	-117 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #12
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #5
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #12
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -88 (ix)
	ld	h, -87 (ix)
	ld	c, -86 (ix)
	ld	b, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	h, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-88 (ix), a
	ld	a, 1 (iy)
	ld	-87 (ix), a
	ld	a, 2 (iy)
	ld	-86 (ix), a
	ld	a, 3 (iy)
	ld	-85 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -104 (ix)
	ld	-14 (ix), a
	ld	a, -103 (ix)
	ld	-13 (ix), a
	ld	a, -102 (ix)
	ld	-12 (ix), a
	ld	a, -101 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-104 (ix), a
	ld	a, -9 (ix)
	ld	-103 (ix), a
	ld	a, -8 (ix)
	ld	-102 (ix), a
	ld	a, -7 (ix)
	ld	-101 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -120 (ix)
	ld	h, -119 (ix)
	ld	c, -118 (ix)
	ld	b, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00235$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00236$.
	djnz	00235$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-120 (ix), c
	ld	-119 (ix), b
	ld	-118 (ix), l
	ld	-117 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:133: B2S_G( 3, 7, 11, 15, m[sigma[i][ 6]], m[sigma[i][ 7]]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -116 (ix)
	ld	-10 (ix), a
	ld	a, -115 (ix)
	ld	-9 (ix), a
	ld	a, -114 (ix)
	ld	-8 (ix), a
	ld	a, -113 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #6
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #16
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -84 (ix)
	ld	h, -83 (ix)
	ld	c, -82 (ix)
	ld	b, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-84 (ix), a
	ld	a, 1 (iy)
	ld	-83 (ix), a
	ld	a, 2 (iy)
	ld	-82 (ix), a
	ld	a, 3 (iy)
	ld	-81 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -100 (ix)
	ld	-14 (ix), a
	ld	a, -99 (ix)
	ld	-13 (ix), a
	ld	a, -98 (ix)
	ld	-12 (ix), a
	ld	a, -97 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-100 (ix), a
	ld	a, -9 (ix)
	ld	-99 (ix), a
	ld	a, -8 (ix)
	ld	-98 (ix), a
	ld	a, -7 (ix)
	ld	-97 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -116 (ix)
	ld	h, -115 (ix)
	ld	c, -114 (ix)
	ld	b, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	push	af
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	pop	af
	ld	b, #0x04
00243$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00244$.
	djnz	00243$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x04
00245$:
	add	hl, hl
; common peephole 159 removed unused label 00246$.
	djnz	00245$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-116 (ix), a
	ld	a, -13 (ix)
	ld	-115 (ix), a
	ld	a, -12 (ix)
	ld	-114 (ix), a
	ld	a, -11 (ix)
	ld	-113 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #7
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #16
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -84 (ix)
	ld	h, -83 (ix)
	ld	c, -82 (ix)
	ld	b, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	h, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-84 (ix), a
	ld	a, 1 (iy)
	ld	-83 (ix), a
	ld	a, 2 (iy)
	ld	-82 (ix), a
	ld	a, 3 (iy)
	ld	-81 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -100 (ix)
	ld	-14 (ix), a
	ld	a, -99 (ix)
	ld	-13 (ix), a
	ld	a, -98 (ix)
	ld	-12 (ix), a
	ld	a, -97 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-100 (ix), a
	ld	a, -9 (ix)
	ld	-99 (ix), a
	ld	a, -8 (ix)
	ld	-98 (ix), a
	ld	a, -7 (ix)
	ld	-97 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -116 (ix)
	ld	h, -115 (ix)
	ld	c, -114 (ix)
	ld	b, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00251$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00252$.
	djnz	00251$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-116 (ix), c
	ld	-115 (ix), b
	ld	-114 (ix), l
	ld	-113 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:134: B2S_G( 0, 5, 10, 15, m[sigma[i][ 8]], m[sigma[i][ 9]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -124 (ix)
	ld	-10 (ix), a
	ld	a, -123 (ix)
	ld	-9 (ix), a
	ld	a, -122 (ix)
	ld	-8 (ix), a
	ld	a, -121 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #8
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #4
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:133: B2S_G( 3, 7, 11, 15, m[sigma[i][ 6]], m[sigma[i][ 7]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -84 (ix)
	ld	h, -83 (ix)
	ld	c, -82 (ix)
	ld	b, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:134: B2S_G( 0, 5, 10, 15, m[sigma[i][ 8]], m[sigma[i][ 9]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-84 (ix), a
	ld	a, 1 (iy)
	ld	-83 (ix), a
	ld	a, 2 (iy)
	ld	-82 (ix), a
	ld	a, 3 (iy)
	ld	-81 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -104 (ix)
	ld	-14 (ix), a
	ld	a, -103 (ix)
	ld	-13 (ix), a
	ld	a, -102 (ix)
	ld	-12 (ix), a
	ld	a, -101 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-104 (ix), a
	ld	a, -9 (ix)
	ld	-103 (ix), a
	ld	a, -8 (ix)
	ld	-102 (ix), a
	ld	a, -7 (ix)
	ld	-101 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:131: B2S_G( 1, 5,  9, 13, m[sigma[i][ 2]], m[sigma[i][ 3]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -124 (ix)
	ld	h, -123 (ix)
	ld	c, -122 (ix)
	ld	b, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:134: B2S_G( 0, 5, 10, 15, m[sigma[i][ 8]], m[sigma[i][ 9]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	push	af
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	pop	af
	ld	b, #0x04
00259$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00260$.
	djnz	00259$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x04
00261$:
	add	hl, hl
; common peephole 159 removed unused label 00262$.
	djnz	00261$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-124 (ix), a
	ld	a, -13 (ix)
	ld	-123 (ix), a
	ld	a, -12 (ix)
	ld	-122 (ix), a
	ld	a, -11 (ix)
	ld	-121 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #9
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #4
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:133: B2S_G( 3, 7, 11, 15, m[sigma[i][ 6]], m[sigma[i][ 7]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -84 (ix)
	ld	h, -83 (ix)
	ld	c, -82 (ix)
	ld	b, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:134: B2S_G( 0, 5, 10, 15, m[sigma[i][ 8]], m[sigma[i][ 9]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	h, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-84 (ix), a
	ld	a, 1 (iy)
	ld	-83 (ix), a
	ld	a, 2 (iy)
	ld	-82 (ix), a
	ld	a, 3 (iy)
	ld	-81 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -104 (ix)
	ld	-14 (ix), a
	ld	a, -103 (ix)
	ld	-13 (ix), a
	ld	a, -102 (ix)
	ld	-12 (ix), a
	ld	a, -101 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-104 (ix), a
	ld	a, -9 (ix)
	ld	-103 (ix), a
	ld	a, -8 (ix)
	ld	-102 (ix), a
	ld	a, -7 (ix)
	ld	-101 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:131: B2S_G( 1, 5,  9, 13, m[sigma[i][ 2]], m[sigma[i][ 3]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -124 (ix)
	ld	h, -123 (ix)
	ld	c, -122 (ix)
	ld	b, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:134: B2S_G( 0, 5, 10, 15, m[sigma[i][ 8]], m[sigma[i][ 9]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00267$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00268$.
	djnz	00267$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-124 (ix), c
	ld	-123 (ix), b
	ld	-122 (ix), l
	ld	-121 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:135: B2S_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -120 (ix)
	ld	-10 (ix), a
	ld	a, -119 (ix)
	ld	-9 (ix), a
	ld	a, -118 (ix)
	ld	-8 (ix), a
	ld	a, -117 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #10
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:123: v[12] ^= ctx->t[0];                 // low 32 bits of offset
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -96 (ix)
	ld	h, -95 (ix)
	ld	c, -94 (ix)
	ld	b, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:135: B2S_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-96 (ix), a
	ld	a, 1 (iy)
	ld	-95 (ix), a
	ld	a, 2 (iy)
	ld	-94 (ix), a
	ld	a, 3 (iy)
	ld	-93 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -100 (ix)
	ld	-14 (ix), a
	ld	a, -99 (ix)
	ld	-13 (ix), a
	ld	a, -98 (ix)
	ld	-12 (ix), a
	ld	a, -97 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-100 (ix), a
	ld	a, -9 (ix)
	ld	-99 (ix), a
	ld	a, -8 (ix)
	ld	-98 (ix), a
	ld	a, -7 (ix)
	ld	-97 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:132: B2S_G( 2, 6, 10, 14, m[sigma[i][ 4]], m[sigma[i][ 5]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -120 (ix)
	ld	h, -119 (ix)
	ld	c, -118 (ix)
	ld	b, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:135: B2S_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	push	af
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	pop	af
	ld	b, #0x04
00275$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00276$.
	djnz	00275$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x04
00277$:
	add	hl, hl
; common peephole 159 removed unused label 00278$.
	djnz	00277$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-120 (ix), a
	ld	a, -13 (ix)
	ld	-119 (ix), a
	ld	a, -12 (ix)
	ld	-118 (ix), a
	ld	a, -11 (ix)
	ld	-117 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #11
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:123: v[12] ^= ctx->t[0];                 // low 32 bits of offset
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -96 (ix)
	ld	h, -95 (ix)
	ld	c, -94 (ix)
	ld	b, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:135: B2S_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	h, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-96 (ix), a
	ld	a, 1 (iy)
	ld	-95 (ix), a
	ld	a, 2 (iy)
	ld	-94 (ix), a
	ld	a, 3 (iy)
	ld	-93 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -100 (ix)
	ld	-14 (ix), a
	ld	a, -99 (ix)
	ld	-13 (ix), a
	ld	a, -98 (ix)
	ld	-12 (ix), a
	ld	a, -97 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-100 (ix), a
	ld	a, -9 (ix)
	ld	-99 (ix), a
	ld	a, -8 (ix)
	ld	-98 (ix), a
	ld	a, -7 (ix)
	ld	-97 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:132: B2S_G( 2, 6, 10, 14, m[sigma[i][ 4]], m[sigma[i][ 5]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -120 (ix)
	ld	h, -119 (ix)
	ld	c, -118 (ix)
	ld	b, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:135: B2S_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00283$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00284$.
	djnz	00283$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-120 (ix), c
	ld	-119 (ix), b
	ld	-118 (ix), l
	ld	-117 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:136: B2S_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #12
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -116 (ix)
	ld	-10 (ix), a
	ld	a, -115 (ix)
	ld	-9 (ix), a
	ld	a, -114 (ix)
	ld	-8 (ix), a
	ld	a, -113 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #12
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #12
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:124: v[13] ^= ctx->t[1];                 // high 32 bits
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -92 (ix)
	ld	h, -91 (ix)
	ld	c, -90 (ix)
	ld	b, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:136: B2S_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-92 (ix), a
	ld	a, 1 (iy)
	ld	-91 (ix), a
	ld	a, 2 (iy)
	ld	-90 (ix), a
	ld	a, 3 (iy)
	ld	-89 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -112 (ix)
	ld	-14 (ix), a
	ld	a, -111 (ix)
	ld	-13 (ix), a
	ld	a, -110 (ix)
	ld	-12 (ix), a
	ld	a, -109 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-112 (ix), a
	ld	a, -9 (ix)
	ld	-111 (ix), a
	ld	a, -8 (ix)
	ld	-110 (ix), a
	ld	a, -7 (ix)
	ld	-109 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:133: B2S_G( 3, 7, 11, 15, m[sigma[i][ 6]], m[sigma[i][ 7]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -116 (ix)
	ld	h, -115 (ix)
	ld	c, -114 (ix)
	ld	b, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:136: B2S_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	push	af
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	pop	af
	ld	b, #0x04
00291$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00292$.
	djnz	00291$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x04
00293$:
	add	hl, hl
; common peephole 159 removed unused label 00294$.
	djnz	00293$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-116 (ix), a
	ld	a, -13 (ix)
	ld	-115 (ix), a
	ld	a, -12 (ix)
	ld	-114 (ix), a
	ld	a, -11 (ix)
	ld	-113 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #12
	add	iy, sp
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -14 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	adc	a, -13 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -7 (ix)
	adc	a, -11 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #13
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #12
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:124: v[13] ^= ctx->t[1];                 // high 32 bits
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -92 (ix)
	ld	h, -91 (ix)
	ld	c, -90 (ix)
	ld	b, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:136: B2S_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
	ld	h, #0x00
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -8 (ix)
	ld	2 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-92 (ix), a
	ld	a, 1 (iy)
	ld	-91 (ix), a
	ld	a, 2 (iy)
	ld	-90 (ix), a
	ld	a, 3 (iy)
	ld	-89 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -112 (ix)
	ld	-14 (ix), a
	ld	a, -111 (ix)
	ld	-13 (ix), a
	ld	a, -110 (ix)
	ld	-12 (ix), a
	ld	a, -109 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-112 (ix), a
	ld	a, -9 (ix)
	ld	-111 (ix), a
	ld	a, -8 (ix)
	ld	-110 (ix), a
	ld	a, -7 (ix)
	ld	-109 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:133: B2S_G( 3, 7, 11, 15, m[sigma[i][ 6]], m[sigma[i][ 7]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -116 (ix)
	ld	h, -115 (ix)
	ld	c, -114 (ix)
	ld	b, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:136: B2S_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	-8 (ix), c
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x07
00299$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00300$.
	djnz	00299$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into c.
	add	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	l, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-116 (ix), c
	ld	-115 (ix), b
	ld	-114 (ix), l
	ld	-113 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:137: B2S_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -128 (ix)
	ld	-10 (ix), a
	ld	a, -127 (ix)
	ld	-9 (ix), a
	ld	a, -126 (ix)
	ld	-8 (ix), a
	ld	a, -125 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, -10 (ix)
	ld	(hl), a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	inc	hl
	ld	(hl), a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #14
	add	hl, bc
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	iy, #16
	add	iy, sp
	ld	0 (iy), a
	ld	a, -9 (ix)
	ld	1 (iy), a
	ld	a, -8 (ix)
	ld	2 (iy), a
	ld	a, -7 (ix)
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:132: B2S_G( 2, 6, 10, 14, m[sigma[i][ 4]], m[sigma[i][ 5]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -88 (ix)
	ld	h, -87 (ix)
	ld	c, -86 (ix)
	ld	b, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:137: B2S_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into bc.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 2 result type 12 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	ld	a, -10 (ix)
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
; common peephole 50a eliminated dead pop/push hl pair.
	ld	a, -9 (ix)
	ld	1 (iy), a
	pop	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, l
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, h
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-88 (ix), a
	ld	a, 1 (iy)
	ld	-87 (ix), a
	ld	a, 2 (iy)
	ld	-86 (ix), a
	ld	a, 3 (iy)
	ld	-85 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -108 (ix)
	ld	-14 (ix), a
	ld	a, -107 (ix)
	ld	-13 (ix), a
	ld	a, -106 (ix)
	ld	-12 (ix), a
	ld	a, -105 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-108 (ix), a
	ld	a, -9 (ix)
	ld	-107 (ix), a
	ld	a, -8 (ix)
	ld	-106 (ix), a
	ld	a, -7 (ix)
	ld	-105 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:130: B2S_G( 0, 4,  8, 12, m[sigma[i][ 0]], m[sigma[i][ 1]]);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -128 (ix)
	ld	h, -127 (ix)
	ld	c, -126 (ix)
	ld	b, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:137: B2S_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	push	af
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), h
	ld	-9 (ix), c
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
	pop	af
	ld	b, #0x04
00307$:
	srl	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00308$.
	djnz	00307$
;	genMove_o size 4 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x04
00309$:
	add	hl, hl
; common peephole 159 removed unused label 00310$.
	djnz	00309$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, -10 (ix)
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	xor	a, -9 (ix)
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	1 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -8 (ix)
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
	ld	-128 (ix), a
	ld	a, 1 (iy)
	ld	-127 (ix), a
	ld	a, 2 (iy)
	ld	-126 (ix), a
	ld	a, 3 (iy)
	ld	-125 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	a, 0 (iy)
	ld	-14 (ix), a
	ld	a, 1 (iy)
	ld	-13 (ix), a
	ld	a, 2 (iy)
	ld	-12 (ix), a
	ld	a, 3 (iy)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -14 (ix)
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	add	a, (hl)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	inc	hl
	adc	a, (hl)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	hl
	adc	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	inc	hl
	adc	a, (hl)
	ld	-7 (ix), a
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	hl, #15
	add	hl, de
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerGet
;fetchPairLong
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
;	genPlus
	ld	a, -10 (ix)
	add	a, c
	ld	c, a
	ld	a, -9 (ix)
	adc	a, b
	ld	b, a
	ld	a, -8 (ix)
	adc	a, e
	ld	e, a
	ld	a, -7 (ix)
	adc	a, d
	ld	d, a
;	genPointerSet
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	0 (iy), c
	ld	1 (iy), b
	ld	2 (iy), e
	ld	3 (iy), d
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:132: B2S_G( 2, 6, 10, 14, m[sigma[i][ 4]], m[sigma[i][ 5]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -88 (ix)
	ld	-10 (ix), a
	ld	a, -87 (ix)
	ld	-9 (ix), a
	ld	a, -86 (ix)
	ld	-8 (ix), a
	ld	a, -85 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:137: B2S_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);
;	genXor
	ld	a, c
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), b
	ld	-9 (ix), e
	ld	-8 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	d, c
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into hl.
; common peephole 1 removed dead load from #0x00 into e.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	e, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	xor	a, d
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-88 (ix), c
	ld	-87 (ix), b
	ld	-86 (ix), e
	ld	-85 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -108 (ix)
	ld	-10 (ix), a
	ld	a, -107 (ix)
	ld	-9 (ix), a
	ld	a, -106 (ix)
	ld	-8 (ix), a
	ld	a, -105 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -10 (ix)
	add	a, c
	ld	c, a
	ld	a, -9 (ix)
	adc	a, b
	ld	b, a
	ld	a, -8 (ix)
	adc	a, e
	ld	e, a
	ld	a, -7 (ix)
	adc	a, d
	ld	d, a
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-108 (ix), c
	ld	-107 (ix), b
	ld	-106 (ix), e
	ld	-105 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:130: B2S_G( 0, 4,  8, 12, m[sigma[i][ 0]], m[sigma[i][ 1]]);
;	genPointerGet
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -128 (ix)
	ld	-10 (ix), a
	ld	a, -127 (ix)
	ld	-9 (ix), a
	ld	a, -126 (ix)
	ld	-8 (ix), a
	ld	a, -125 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:137: B2S_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);
;	genXor
	ld	a, -10 (ix)
	xor	a, c
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, b
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, e
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, d
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x07
00315$:
	srl	d
	rr	e
	rr	b
	rr	c
; common peephole 159 removed unused label 00316$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00315$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	-7 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), #0x00
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x00
	sla	-7 (ix)
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genXor
;	genMove_o size 3 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-128 (ix), c
	ld	-127 (ix), b
	ld	-126 (ix), e
	ld	-125 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:129: for (i = 0; i < 10; i++) {          // ten rounds
;	genPlus
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00319$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, #0x0a
	jp	c, 00111$
;	skipping generated iCode
;cases/./../tests/blake2s.c:139: for( i = 0; i < 8; ++i )
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genLabel
00113$:
;cases/./../tests/blake2s.c:140: ctx->h[i] ^= v[i] ^ v[i + 8];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
	ld	a, -16 (ix)
	add	a, e
	ld	c, a
	ld	a, -15 (ix)
	adc	a, d
	ld	b, a
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #140
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x08
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	dec	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
	ld	h, a
;	genXor
	ld	a, -10 (ix)
	xor	a, e
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, d
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, l
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, h
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genXor
	push	af
	ld	a, e
	xor	a, -10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	pop	af
	xor	a, -8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/blake2s.c:139: for( i = 0; i < 8; ++i )
;	genPlus
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00320$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, #0x08
	jp	c, 00113$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00115$.
;cases/./../tests/blake2s.c:141: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total blake2s_compress function size at codegen: 97 bytes.
_blake2s_iv:
	.byte #0x67, #0xe6, #0x09, #0x6a	; 1779033703
	.byte #0x85, #0xae, #0x67, #0xbb	; 3144134277
	.byte #0x72, #0xf3, #0x6e, #0x3c	; 1013904242
	.byte #0x3a, #0xf5, #0x4f, #0xa5	; 2773480762
	.byte #0x7f, #0x52, #0x0e, #0x51	; 1359893119
	.byte #0x8c, #0x68, #0x05, #0x9b	; 2600822924
	.byte #0xab, #0xd9, #0x83, #0x1f	; 528734635
	.byte #0x19, #0xcd, #0xe0, #0x5b	; 1541459225
_sigma:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0d	; 13
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x00	; 0
;cases/./../tests/blake2s.c:145: int blake2s_init(blake2s_ctx *ctx, size_t outlen,
;	genLabel
;	genFunction
;	---------------------------------
; Function blake2s_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_blake2s_init::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:149: if (outlen == 0 || outlen > 32 || keylen > 32)
;	genIfx
; common peephole 33 loaded a from d instead of going through -1 (ix).
	ld	-1 (ix), d
	ld	a, d
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;	genCmpGt
	ld	a, #0x20
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00101$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x20
	cp	a, 6 (ix)
	ld	a, #0x00
	sbc	a, 7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00125$
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/blake2s.c:150: return -1;                      // illegal parameters
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	jp	00114$
;cases/./../tests/blake2s.c:151: for (i = 0; i < 8; i++)             // state, "param block"
;	genLabel
00125$:
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00109$:
;cases/./../tests/blake2s.c:152: ctx->h[i] = blake2s_iv[i];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, h
	adc	a, -9 (ix)
	ld	-7 (ix), a
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_blake2s_iv
	add	hl, de
	pop	de
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	genPointerSet
; common peephole 50a eliminated dead pop/push de pair.
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;cases/./../tests/blake2s.c:151: for (i = 0; i < 8; i++)             // state, "param block"
;	genPlus
	inc	de
;	genCmpLt
	ld	a, e
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00109$
;	skipping generated iCode
;cases/./../tests/blake2s.c:153: ctx->h[0] ^= 0x01010000 ^ (keylen << 8) ^ outlen;
;	genPlus
;fetchPairLong
	ld	hl, #0x0040
	add	hl, bc
;	genLeftShift
	ld	e, 6 (ix)
	ld	a, #0x00
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	ld	-11 (ix), e
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	ld	de, #0x0000
;	genXor
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	af
	ld	a, e
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
; common peephole 50a eliminated dead pop/push af pair.
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	pop	af
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
;	genXor
	xor	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	push	hl
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
	pop	hl
;	genXor
	xor	a, -6 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	iy
	ld	a, -11 (ix)
	pop	iy
	xor	a, -5 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	xor	a, -4 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	xor	a, -3 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;cases/./../tests/blake2s.c:154: ctx->t[0] = 0;                      // input count low word
;	genPlus
;fetchPairLong
	ld	hl, #0x0060
	add	hl, bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/blake2s.c:155: ctx->t[1] = 0;                      // input count high word
;	genPlus
;fetchPairLong
	ld	hl, #0x0064
	add	hl, bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/blake2s.c:156: ctx->c = 0;                         // pointer within buffer
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0068
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/blake2s.c:157: ctx->outlen = outlen;
;	genPlus
;fetchPairLong
	ld	hl, #0x006a
	add	hl, bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/blake2s.c:158: for (i = keylen; i < 64; i++)       // zero input block
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 6 (ix)
	ld	d, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00112$:
;	genCmpLt
	ld	a, e
	sub	a, #0x40
	ld	a, d
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00106$
;	skipping generated iCode
;cases/./../tests/blake2s.c:159: ctx->b[i] = 0;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/blake2s.c:158: for (i = keylen; i < 64; i++)       // zero input block
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00106$:
;cases/./../tests/blake2s.c:160: if (keylen > 0) {
;	genIfx
	ld	a, 7 (ix)
	or	a, 6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/blake2s.c:161: blake2s_update(ctx, key, keylen);
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_update
;cases/./../tests/blake2s.c:162: ctx->c = 64;                    // at the end
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x40
	inc	hl
	ld	(hl), #0x00
;	genLabel
00108$:
;cases/./../tests/blake2s.c:164: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00114$:
;cases/./../tests/blake2s.c:165: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total blake2s_init function size at codegen: 24 bytes.
;cases/./../tests/blake2s.c:167: void blake2s_update(blake2s_ctx *ctx,
;	genLabel
;	genFunction
;	---------------------------------
; Function blake2s_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 20 bytes.
_blake2s_update::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -20
	ld	iy, #-20
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:171: for (i = 0; i < inlen; i++) {
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0068
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
	ld	-18 (ix), a
	ld	a, -19 (ix)
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-16 (ix), a
	ld	a, -3 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00107$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, 4 (ix)
	ld	a, -1 (ix)
	sbc	a, 5 (ix)
	jp	nc, 00109$
;	skipping generated iCode
;cases/./../tests/blake2s.c:172: if (ctx->c == 64) {             // buffer full ?
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
	or	a, -7 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
	jp	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;cases/./../tests/blake2s.c:173: ctx->t[0] += ctx->c;        // add counters
;	genPlus
	ld	a, -4 (ix)
	add	a, #0x60
	ld	e, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	d, a
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #0x0000
;	genPlus
	ld	a, c
	add	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, b
	adc	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, l
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, h
	adc	a, -11 (ix)
	ld	-7 (ix), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #10
	add	hl, sp
	ld	bc, #0x0004
	ldir
;cases/./../tests/blake2s.c:174: if (ctx->t[0] < ctx->c)     // carry overflow ?
;	genPointerGet
;fetchPairLong
	pop	de
	pop	hl
	push	hl
	push	de
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genCmpLt
	ld	a, -10 (ix)
	sub	a, c
	ld	a, -9 (ix)
	sbc	a, b
	ld	a, -8 (ix)
	sbc	a, e
	ld	a, -7 (ix)
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/blake2s.c:175: ctx->t[1]++;            // high word
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0064
	add	hl, de
;	genPointerGet
	push	hl
;fetchPairLong
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
	pop	hl
;	genPlus
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00146$
	inc	b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00146$
	inc	de
00146$:
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genLabel
00102$:
;cases/./../tests/blake2s.c:176: blake2s_compress(ctx, 0);   // compress (not last)
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_compress
;cases/./../tests/blake2s.c:177: ctx->c = 0;                 // counter to zero
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genLabel
00104$:
;cases/./../tests/blake2s.c:179: ctx->b[ctx->c++] = ((const uint8_t *) in)[i];
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, bc
;	genPlus
	ld	a, -6 (ix)
	add	a, -2 (ix)
	ld	c, a
	ld	a, -5 (ix)
	adc	a, -1 (ix)
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;cases/./../tests/blake2s.c:171: for (i = 0; i < inlen; i++) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00147$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00147$.
;	genGoto
	jp	00107$
;	genLabel
00109$:
;cases/./../tests/blake2s.c:181: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total blake2s_update function size at codegen: 15 bytes.
;cases/./../tests/blake2s.c:184: void blake2s_final(blake2s_ctx *ctx, void *out)
;	genLabel
;	genFunction
;	---------------------------------
; Function blake2s_final
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_blake2s_final::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -12
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:187: ctx->t[0] += ctx->c;                // mark last block offset
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0060
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0068
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;	_moveFrom_tpair_()
	ld	a, (de)
	ld	-4 (ix), a
	inc	de
;	_moveFrom_tpair_()
	ld	a, (de)
	ld	-3 (ix), a
	dec	de
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	push	iy
	ex	(sp), hl
	ld	l, -3 (ix)
	ex	(sp), hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #0x0000
;	genPlus
	add	a, -10 (ix)
	ld	-6 (ix), a
	push	iy
	ld	a, -14 (ix)
	pop	iy
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, l
	adc	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, h
	adc	a, -7 (ix)
	ld	-3 (ix), a
;	genPointerSet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #10
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;cases/./../tests/blake2s.c:188: if (ctx->t[0] < ctx->c)             // carry overflow
;	genPointerGet
;fetchPairLong
	ld	l, e
	ld	h, d
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
	ld	-9 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, -10 (ix)
	ld	a, -5 (ix)
	sbc	a, -9 (ix)
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	ld	a, -3 (ix)
	sbc	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00119$
;	skipping generated iCode
;cases/./../tests/blake2s.c:189: ctx->t[1]++;                    // high word
;	genPlus
;fetchPairLong
	ld	hl, #0x0064
	add	hl, bc
;	genPointerGet
	push	hl
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
	pop	hl
;	genPlus
	ld	a, -10 (ix)
	add	a, #0x01
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;	genPointerSet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #10
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;cases/./../tests/blake2s.c:190: while (ctx->c < 64)                 // fill up with zeros
;	genLabel
00119$:
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), c
	ld	-5 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00103$:
;cases/./../tests/blake2s.c:187: ctx->t[0] += ctx->c;                // mark last block offset
;	genPointerGet
;fetchPairLong
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;cases/./../tests/blake2s.c:190: while (ctx->c < 64)                 // fill up with zeros
;	genCmpLt
	ld	l, a
; common peephole 98 removed redundant load from l into a.
	sub	a, #0x40
	ld	a, h
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/blake2s.c:191: ctx->b[ctx->c++] = 0;
;	genPlus
	ld	a, l
	add	a, #0x01
	ld	-4 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-3 (ix), a
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	pop	hl
;	genPlus
	ld	a, -6 (ix)
	add	a, l
	ld	l, a
	ld	a, -5 (ix)
	adc	a, h
	ld	h, a
;	genPointerSet
	ld	(hl), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00105$:
;cases/./../tests/blake2s.c:192: blake2s_compress(ctx, 1);           // final block flag = 1
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_compress
	pop	bc
;cases/./../tests/blake2s.c:194: for (i = 0; i < ctx->outlen; i++) {
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	bc
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00108$:
;	genPointerGet
	ld	c, 106 (iy)
	ld	b, 107 (iy)
;	genCmpLt
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00110$
;	skipping generated iCode
;cases/./../tests/blake2s.c:195: ((uint8_t *) out)[i] =
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/blake2s.c:196: (ctx->h[i >> 2] >> (8 * (i & 3))) & 0xFF;
;	genRightShift
;fetchPairLong
	ld	l, e
	ld	h, d
	srl	h
	rr	l
	srl	h
	rr	l
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genAnd
	and	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
	add	a, a
	add	a, a
	add	a, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
	inc	hl
	push	af
;	_moveFrom_tpair_()
	ld	a, (hl)
	dec	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
	ld	h, a
	pop	af
;	genRightShift
;	genMove_o size 4 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	srl	a
	srl	a
	srl	a
	inc	a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00154$
00153$:
;	genMove_o size 4 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, b
	ld	b, l
	ld	l, h
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
00154$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(hl), c
;cases/./../tests/blake2s.c:194: for (i = 0; i < ctx->outlen; i++) {
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00110$:
;cases/./../tests/blake2s.c:198: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total blake2s_final function size at codegen: 24 bytes.
;cases/./../tests/blake2s.c:200: int blake2s(void *out, size_t outlen,
;	genLabel
;	genFunction
;	---------------------------------
; Function blake2s
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 108 bytes.
_blake2s::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -108
	ld	iy, #-108
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:205: if (blake2s_init(&ctx, outlen, key, keylen))
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genCast
;	(locations are the same)
;	genIpush
	push	hl
	push	bc
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genIpush
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_init
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/blake2s.c:206: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/./../tests/blake2s.c:207: blake2s_update(&ctx, in, inlen);
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 10 (ix)
	ld	d, 11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 8 (ix)
	ld	d, 9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_update
	pop	bc
	pop	hl
;cases/./../tests/blake2s.c:208: blake2s_final(&ctx, out);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_final
;cases/./../tests/blake2s.c:209: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00103$:
;cases/./../tests/blake2s.c:210: }
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
;	Total blake2s function size at codegen: 10 bytes.
;cases/./../tests/blake2s.c:218: static void selftest_seq(uint8_t *out, size_t len, uint32_t seed)
;	genLabel
;	genFunction
;	---------------------------------
; Function selftest_seq
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 14 bytes.
_selftest_seq:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -14
	ld	iy, #-14
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:222: a = 0xDEAD4BAD * seed;              // prime
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x4bad
	ld	hl, #0xdead
;cases/./../tests/blake2s.c:223: b = 1;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), #0x01
	xor	a, a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
;cases/./../tests/blake2s.c:224: for (i = 0; i < len; i++) {         // fill the buf
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00103$:
;	genCmpLt
	ld	a, c
	sub	a, -4 (ix)
	ld	a, b
	sbc	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/blake2s.c:225: t = a + b;
;	genPlus
	ld	a, -14 (ix)
	add	a, -10 (ix)
	ld	e, a
	ld	a, -13 (ix)
	adc	a, -9 (ix)
	ld	d, a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	ld	l, a
	ld	a, -11 (ix)
	adc	a, -7 (ix)
	ld	h, a
;cases/./../tests/blake2s.c:226: a = b;
;	genAssign
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -9 (ix)
	ld	-13 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:227: b = t;
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/blake2s.c:228: out[i] = (t >> 24) & 0xFF;
;	genPlus
	ld	a, -2 (ix)
	add	a, c
	ld	-6 (ix), a
	ld	a, -1 (ix)
	adc	a, b
	ld	-5 (ix), a
;	genGetByte
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/blake2s.c:224: for (i = 0; i < len; i++) {         // fill the buf
;	genPlus
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00105$:
;cases/./../tests/blake2s.c:230: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total selftest_seq function size at codegen: 8 bytes.
;cases/./../tests/blake2s.c:233: int blake2s_selftest()
;	genLabel
;	genFunction
;	---------------------------------
; Function blake2s_selftest
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1254 bytes.
_blake2s_selftest::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1254
	ld	hl, #-1254
	add	hl, sp
	ld	sp, hl
;cases/./../tests/blake2s.c:236: const uint8_t blake2s_res[32] = {
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), #0x6a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x41
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x1f
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x08
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xce
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x25
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xad
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xcd
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xfb
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x02
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xab
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xa6
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x41
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x45
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x1c
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xec
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x53
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xc5
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x98
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xb2
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x4f
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x4f
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xc7
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x87
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xfb
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xdc
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x88
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x79
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x7f
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x4c
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x1d
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0xfe
;cases/./../tests/blake2s.c:243: const size_t b2s_md_len[4] = { 16, 20, 28, 32 };
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x10
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x14
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x1c
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/blake2s.c:244: const size_t b2s_in_len[6] = { 0,  3,  64, 65, 255, 1024 };
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	inc	iy
	inc	iy
	ld	0 (iy), a
	ld	1 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x03
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x40
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x41
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0xff
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x00
	ld	1 (iy), #0x04
;cases/./../tests/blake2s.c:249: if (blake2s_init(&ctx, 32, NULL, 0))
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0020
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1146
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_init
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 33 loaded a from d instead of going through -1 (ix).
	ld	-1 (ix), d
	ld	a, d
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00127$
;cases/./../tests/blake2s.c:250: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	jp	00114$
;cases/./../tests/blake2s.c:251: for (i = 0; i < 4; i++) {
;	genLabel
00127$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genLabel
00110$:
;cases/./../tests/blake2s.c:252: outlen = b2s_md_len[i];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	hl, #34
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-2 (ix), l
	ld	-1 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -2 (ix) -1 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	1 (iy), a
;cases/./../tests/blake2s.c:253: for (j = 0; j < 6; j++) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00108$:
;cases/./../tests/blake2s.c:254: inlen = b2s_in_len[j];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ex	de, hl
	ld	hl, #42
	add	hl, sp
	ex	de, hl
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;cases/./../tests/blake2s.c:255: selftest_seq(in, inlen, inlen);     // unkeyed hash
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	hl
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #60
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_selftest_seq
	pop	bc
;cases/./../tests/blake2s.c:256: blake2s(md, outlen, NULL, 0, in, inlen);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #58
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 62 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1088
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s
;cases/./../tests/blake2s.c:257: blake2s_update(&ctx, md, outlen);   // hash the hash
;	genIpush
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #1082
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1146
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_update
	pop	bc
;cases/./../tests/blake2s.c:258: selftest_seq(key, outlen, outlen);  // keyed hash
;	genCast
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	hl
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 62 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #6
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1116
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_selftest_seq
;cases/./../tests/blake2s.c:259: blake2s(md, outlen, key, outlen, in, inlen);
;	skipping iCode since result will be rematerialized
;	genIpush
; common peephole 50a eliminated dead pop/push bc pair.
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #56
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #1116
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 0 (iy)
	ld	d, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1086
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s
;cases/./../tests/blake2s.c:260: blake2s_update(&ctx, md, outlen);   // hash the hash
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #1080
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1144
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_update
;cases/./../tests/blake2s.c:253: for (j = 0; j < 6; j++) {
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00183$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x06
	jp	c, 00108$
;	skipping generated iCode
;cases/./../tests/blake2s.c:251: for (i = 0; i < 4; i++) {
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00184$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, #0x04
	jp	c, 00110$
;	skipping generated iCode
;cases/./../tests/blake2s.c:264: blake2s_final(&ctx, md);
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #1078
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #1142
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_blake2s_final
;cases/./../tests/blake2s.c:265: for (i = 0; i < 32; i++) {
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00112$:
;cases/./../tests/blake2s.c:266: if (md[i] != blake2s_res[i])
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #1078
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-3 (ix), l
	ld	-2 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -3 (ix) -2 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-3 (ix), l
	ld	-2 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -3 (ix) -2 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00185$.
;	skipping generated iCode
;cases/./../tests/blake2s.c:267: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/blake2s.c:265: for (i = 0; i < 32; i++) {
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00112$
;	skipping generated iCode
;cases/./../tests/blake2s.c:269: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00114$:
;cases/./../tests/blake2s.c:270: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total blake2s_selftest function size at codegen: 5 bytes.
;cases/./../tests/blake2s.c:273: void testBlake(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBlake
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBlake::
;cases/./../tests/blake2s.c:280: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBlake function size at codegen: 1 bytes.
;cases/tst_blake2s.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_blake2s.c:6: __prints("Running testBlake\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_blake2s.c:7: testBlake();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_blake2s.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBlake"
	.db 0x0a
	.db 0x00
;cases/tst_blake2s.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_blake2s.c:15: return "blake2s.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_blake2s.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "blake2s.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
