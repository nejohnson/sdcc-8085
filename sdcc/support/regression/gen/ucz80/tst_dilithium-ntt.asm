;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_dilithium_ntt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDilithiumNTT
	.globl ___prints
	.globl ___fail
	.globl _buf
	.globl ___numCases
	.globl _pqcrystals_dilithium2_ref_ntt
	.globl _pqcrystals_dilithium2_ref_invntt_tomont
	.globl _pqcrystals_dilithium2_ref_montgomery_reduce
	.globl _pqcrystals_dilithium2_ref_reduce32
	.globl _pqcrystals_dilithium2_ref_caddq
	.globl _pqcrystals_dilithium2_ref_freeze
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_buf::
	.ds 1024
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
;cases/./../tests/dilithium-ntt.c:227: void ntt(int32_t a[N]) {
;	genLabel
;	genFunction
;	---------------------------------
; Function pqcrystals_dilithium2_ref_ntt
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 28 bytes.
_pqcrystals_dilithium2_ref_ntt::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -28
	ld	iy, #-28
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:231: k = 0;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;cases/./../tests/dilithium-ntt.c:232: for(len = 128; len > 0; len >>= 1) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), #0x80
	ld	-5 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genLabel
00109$:
;cases/./../tests/dilithium-ntt.c:233: for(start = 0; start < N; start = j + len) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genAssign
;	(locations are the same)
;	genLabel
00107$:
;cases/./../tests/dilithium-ntt.c:234: zeta = zetas[++k];
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00158$
	inc	-3 (ix)
00158$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-12 (ix), a
	ld	a, -3 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00159$:
	sla	-12 (ix)
	rl	-11 (ix)
	djnz	00159$
;	genPlus
	ld	a, #<(_zetas)
	add	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, #>(_zetas)
	adc	a, -11 (ix)
	ld	-9 (ix), a
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;cases/./../tests/dilithium-ntt.c:235: for(j = start; j < start + len; ++j) {
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -2 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-24 (ix), l
	ld	-23 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	(locations are the same)
;	genLabel
00105$:
;cases/./../tests/dilithium-ntt.c:236: t = montgomery_reduce((int64_t)zeta * a[j + len]);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/dilithium-ntt.c:235: for(j = start; j < start + len; ++j) {
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -24 (ix)
	ld	a, -1 (ix)
	sbc	a, -23 (ix)
	jp	nc, 00108$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:236: t = montgomery_reduce((int64_t)zeta * a[j + len]);
;	genAssign
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	iy
	push	iy
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, h
	adc	a, -7 (ix)
	ld	-9 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genIpush
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
; common peephole 50a eliminated dead pop/push hl pair.
	ld	hl, #0x0010
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	___mulslong2slonglong
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_pqcrystals_dilithium2_ref_montgomery_reduce
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), e
	ld	-21 (ix), d
	ld	-20 (ix), l
	ld	-19 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:237: a[j + len] = a[j] - t;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -8 (ix)
	ld	-18 (ix), a
	ld	a, h
	adc	a, -7 (ix)
	ld	-17 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -18 (ix)
	ld	h, -17 (ix)
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
	ld	a, c
	sub	a, -22 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -21 (ix)
	ld	b, a
	ld	a, e
	sbc	a, -20 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -19 (ix)
	ld	d, a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/./../tests/dilithium-ntt.c:238: a[j] = a[j] + t;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -18 (ix)
	ld	d, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -22 (ix)
	ld	d, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -14 (ix)
	adc	a, -20 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	adc	a, -19 (ix)
	ld	-9 (ix), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -18 (ix)
	ld	d, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #16
	add	hl, sp
	ld	bc, #0x0004
	ldir
;cases/./../tests/dilithium-ntt.c:235: for(j = start; j < start + len; ++j) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00105$
; common peephole 84 jumped to 00105$ directly instead of via 00160$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00160$.
;	genGoto
	jp	00105$
;	genLabel
00108$:
;cases/./../tests/dilithium-ntt.c:233: for(start = 0; start < N; start = j + len) {
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, #0x01
	jp	c, 00107$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:232: for(len = 128; len > 0; len >>= 1) {
;	genAssign
;	(locations are the same)
;	genRightShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	-5 (ix)
	rr	-6 (ix)
;	genIfx
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, -6 (ix)
	jp	nz, 00109$
;	genLabel
; common peephole 159 removed unused label 00111$.
;cases/./../tests/dilithium-ntt.c:242: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total pqcrystals_dilithium2_ref_ntt function size at codegen: 30 bytes.
_zetas:
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0xf7, #0x64, #0x00, #0x00	;  25847
	.byte #0x02, #0x31, #0xd8, #0xff	; -2608894
	.byte #0x03, #0x15, #0xf8, #0xff	; -518909
	.byte #0x44, #0x9e, #0x03, #0x00	;  237124
	.byte #0x18, #0x21, #0xf4, #0xff	; -777960
	.byte #0x28, #0xa1, #0xf2, #0xff	; -876248
	.byte #0x24, #0x1e, #0x07, #0x00	;  466468
	.byte #0x2b, #0xde, #0x1b, #0x00	;  1826347
	.byte #0x2b, #0xe9, #0x23, #0x00	;  2353451
	.byte #0xad, #0x84, #0xfa, #0xff	; -359251
	.byte #0x7f, #0x14, #0xe0, #0xff	; -2091905
	.byte #0x75, #0x9a, #0x2f, #0x00	;  3119733
	.byte #0x09, #0xfb, #0xd3, #0xff	; -2884855
	.byte #0x49, #0x7a, #0x2f, #0x00	;  3111497
	.byte #0x27, #0xe5, #0x28, #0x00	;  2680103
	.byte #0x58, #0x96, #0x29, #0x00	;  2725464
	.byte #0x70, #0xa0, #0x0f, #0x00	;  1024112
	.byte #0xa4, #0x85, #0xef, #0xff	; -1079900
	.byte #0x88, #0xb7, #0x36, #0x00	;  3585928
	.byte #0x90, #0x9d, #0xf7, #0xff	; -549488
	.byte #0xa0, #0xea, #0xee, #0xff	; -1119584
	.byte #0x68, #0xf9, #0x27, #0x00	;  2619752
	.byte #0x7b, #0xd3, #0xdf, #0xff	; -2108549
	.byte #0xd6, #0xad, #0xdf, #0xff	; -2118186
	.byte #0xe7, #0x1a, #0xc5, #0xff	; -3859737
	.byte #0xf7, #0xa4, #0xea, #0xff	; -1399561
	.byte #0x98, #0xfc, #0xcd, #0xff	; -3277672
	.byte #0x35, #0xd0, #0x1a, #0x00	;  1757237
	.byte #0x22, #0xb4, #0xff, #0xff	; -19422
	.byte #0x01, #0x32, #0x3d, #0x00	;  4010497
	.byte #0xc5, #0x45, #0x04, #0x00	;  280005
	.byte #0x67, #0x4a, #0x29, #0x00	;  2706023
	.byte #0x20, #0x76, #0x01, #0x00	;  95776
	.byte #0xcd, #0xf4, #0x2e, #0x00	;  3077325
	.byte #0xc5, #0xde, #0x35, #0x00	;  3530437
	.byte #0x03, #0xa5, #0xe6, #0xff	; -1661693
	.byte #0x2c, #0x30, #0xc9, #0xff	; -3592148
	.byte #0xd4, #0x47, #0xd9, #0xff	; -2537516
	.byte #0xaf, #0xbe, #0x3b, #0x00	;  3915439
	.byte #0x85, #0x15, #0xc5, #0xff	; -3861115
	.byte #0x7c, #0x8e, #0xd1, #0xff	; -3043716
	.byte #0x96, #0x8a, #0x36, #0x00	;  3574422
	.byte #0x41, #0x3e, #0xd4, #0xff	; -2867647
	.byte #0x00, #0x04, #0x36, #0x00	;  3539968
	.byte #0x4d, #0x6a, #0xfb, #0xff	; -300467
	.byte #0x9c, #0xd6, #0x23, #0x00	;  2348700
	.byte #0x5d, #0xc5, #0xf7, #0xff	; -539299
	.byte #0x3d, #0x12, #0xe6, #0xff	; -1699267
	.byte #0xd6, #0xea, #0xe6, #0xff	; -1643818
	.byte #0x1e, #0x7e, #0x35, #0x00	;  3505694
	.byte #0x59, #0xaf, #0xc5, #0xff	; -3821735
	.byte #0x3f, #0x84, #0x35, #0x00	;  3507263
	.byte #0x17, #0x56, #0xdf, #0xff	; -2140649
	.byte #0x5c, #0x94, #0xe7, #0xff	; -1600420
	.byte #0x8c, #0x73, #0x38, #0x00	;  3699596
	.byte #0xa8, #0x63, #0x0c, #0x00	;  811944
	.byte #0x9a, #0x1b, #0x08, #0x00	;  531354
	.byte #0x76, #0x8f, #0x0e, #0x00	;  954230
	.byte #0x53, #0x38, #0x3b, #0x00	;  3881043
	.byte #0x34, #0x85, #0x3b, #0x00	;  3900724
	.byte #0x30, #0xfc, #0xd8, #0xff	; -2556880
	.byte #0x54, #0x9d, #0x1f, #0x00	;  2071892
	.byte #0x2d, #0x4f, #0xd5, #0xff	; -2797779
	.byte #0xe5, #0x06, #0xc4, #0xff	; -3930395
	.byte #0x81, #0xac, #0xe8, #0xff	; -1528703
	.byte #0xcf, #0xe1, #0xc7, #0xff	; -3677745
	.byte #0x19, #0x98, #0xd1, #0xff	; -3041255
	.byte #0x5d, #0xd6, #0xe9, #0xff	; -1452451
	.byte #0xee, #0x09, #0x35, #0x00	;  3475950
	.byte #0xc7, #0x35, #0x21, #0x00	;  2176455
	.byte #0xbb, #0xcf, #0xe7, #0xff	; -1585221
	.byte #0x75, #0xcf, #0xec, #0xff	; -1257611
	.byte #0x72, #0x97, #0x1d, #0x00	;  1939314
	.byte #0x72, #0xb0, #0xc1, #0xff	; -4083598
	.byte #0xf6, #0xbc, #0xf0, #0xff	; -1000202
	.byte #0x80, #0x52, #0xcf, #0xff	; -3190144
	.byte #0xae, #0xd2, #0xcf, #0xff	; -3157330
	.byte #0xe0, #0x90, #0xc8, #0xff	; -3632928
	.byte #0xca, #0xef, #0x01, #0x00	;  126922
	.byte #0xf2, #0x10, #0x34, #0x00	;  3412210
	.byte #0x85, #0xfe, #0xf0, #0xff	; -983419
	.byte #0x38, #0xc6, #0x20, #0x00	;  2147896
	.byte #0x9f, #0x6e, #0x29, #0x00	;  2715295
	.byte #0xa3, #0xb7, #0xd2, #0xff	; -2967645
	.byte #0x4b, #0xa4, #0xc7, #0xff	; -3693493
	.byte #0x6d, #0xba, #0xf9, #0xff	; -411027
	.byte #0x09, #0x34, #0xda, #0xff	; -2477047
	.byte #0x82, #0xc2, #0xf5, #0xff	; -671102
	.byte #0x13, #0x41, #0xed, #0xff	; -1228525
	.byte #0x3b, #0xa6, #0xff, #0xff	; -22981
	.byte #0xf7, #0x09, #0xec, #0xff	; -1308169
	.byte #0xdd, #0x2b, #0xfa, #0xff	; -381987
	.byte #0xd4, #0x95, #0x14, #0x00	;  1349076
	.byte #0x63, #0x45, #0x1c, #0x00	;  1852771
	.byte #0x62, #0x2c, #0xea, #0xff	; -1430430
	.byte #0xe9, #0xfb, #0xcc, #0xff	; -3343383
	.byte #0xf0, #0x0a, #0x04, #0x00	;  264944
	.byte #0x17, #0xc4, #0x07, #0x00	;  508951
	.byte #0x88, #0x45, #0x2f, #0x00	;  3097992
	.byte #0x00, #0xad, #0x00, #0x00	;  44288
	.byte #0xbe, #0x36, #0xef, #0xff	; -1100098
	.byte #0x44, #0xcd, #0x0d, #0x00	;  904516
	.byte #0x5a, #0x67, #0x3c, #0x00	;  3958618
	.byte #0xca, #0x2b, #0xc7, #0xff	; -3724342
	.byte #0x7e, #0xde, #0xff, #0xff	; -8578
	.byte #0x48, #0x39, #0x19, #0x00	;  1653064
	.byte #0xc0, #0x69, #0xce, #0xff	; -3249728
	.byte #0x6c, #0x75, #0x24, #0x00	;  2389356
	.byte #0xdf, #0xc7, #0xfc, #0xff	; -210977
	.byte #0xa1, #0x98, #0x0b, #0x00	;  759969
	.byte #0x08, #0xe8, #0xeb, #0xff	; -1316856
	.byte #0x6c, #0xe4, #0x02, #0x00	;  189548
	.byte #0x08, #0xc8, #0xc9, #0xff	; -3553272
	.byte #0xc2, #0x36, #0x30, #0x00	;  3159746
	.byte #0xf6, #0xbf, #0xe3, #0xff	; -1851402
	.byte #0x93, #0x3c, #0xdb, #0xff	; -2409325
	.byte #0xe0, #0x4a, #0xfd, #0xff	; -177440
	.byte #0x05, #0x13, #0x14, #0x00	;  1315589
	.byte #0x92, #0x77, #0x14, #0x00	;  1341330
	.byte #0x25, #0x9e, #0x13, #0x00	;  1285669
	.byte #0xe0, #0xd0, #0xe7, #0xff	; -1584928
	.byte #0x44, #0x99, #0xf3, #0xff	; -812732
	.byte #0x02, #0x08, #0xea, #0xff	; -1439742
	.byte #0xa2, #0xee, #0xd1, #0xff	; -3019102
	.byte #0x9c, #0xc7, #0xc4, #0xff	; -3881060
	.byte #0x57, #0xa0, #0xc8, #0xff	; -3628969
	.byte #0xd9, #0x97, #0x3a, #0x00	;  3839961
	.byte #0x93, #0xea, #0x1f, #0x00	;  2091667
	.byte #0x5a, #0xff, #0x33, #0x00	;  3407706
	.byte #0xd4, #0x58, #0x23, #0x00	;  2316500
	.byte #0xf8, #0x41, #0x3a, #0x00	;  3817976
	.byte #0x72, #0xff, #0xcc, #0xff	; -3342478
	.byte #0xfb, #0x3d, #0x22, #0x00	;  2244091
	.byte #0x9f, #0xab, #0xda, #0xff	; -2446433
	.byte #0x22, #0xa4, #0xc9, #0xff	; -3562462
	.byte #0xf5, #0x12, #0x04, #0x00	;  266997
	.byte #0x87, #0x25, #0x25, #0x00	;  2434439
	.byte #0xf0, #0x24, #0xed, #0xff	; -1235728
	.byte #0x5d, #0x9b, #0x35, #0x00	;  3513181
	.byte #0xa0, #0x48, #0xca, #0xff	; -3520352
	.byte #0xfc, #0xa2, #0xc6, #0xff	; -3759364
	.byte #0x56, #0xbb, #0xed, #0xff	; -1197226
	.byte #0xde, #0x45, #0xcf, #0xff	; -3193378
	.byte #0x5e, #0xbe, #0x0d, #0x00	;  900702
	.byte #0x1a, #0x5e, #0x1c, #0x00	;  1859098
	.byte #0xe6, #0xe0, #0x0d, #0x00	;  909542
	.byte #0x5a, #0x7f, #0x0c, #0x00	;  819034
	.byte #0x83, #0x8f, #0x07, #0x00	;  495491
	.byte #0x8a, #0x62, #0xe7, #0xff	; -1613174
	.byte #0x04, #0x57, #0xff, #0xff	; -43260
	.byte #0xfc, #0x06, #0xf8, #0xff	; -522500
	.byte #0x21, #0x00, #0xf6, #0xff	; -655327
	.byte #0xf6, #0x5a, #0xd0, #0xff	; -3122442
	.byte #0x84, #0x00, #0x1f, #0x00	;  2031748
	.byte #0x86, #0xef, #0x30, #0x00	;  3207046
	.byte #0x7d, #0xb9, #0xc9, #0xff	; -3556995
	.byte #0xd6, #0xfc, #0xf7, #0xff	; -525098
	.byte #0x92, #0x45, #0xf4, #0xff	; -768622
	.byte #0xc2, #0x21, #0xc9, #0xff	; -3595838
	.byte #0x19, #0x39, #0x05, #0x00	;  342297
	.byte #0x0c, #0x61, #0x04, #0x00	;  286988
	.byte #0x41, #0xcd, #0xda, #0xff	; -2437823
	.byte #0x1b, #0xb0, #0x3e, #0x00	;  4108315
	.byte #0xe7, #0x72, #0x34, #0x00	;  3437287
	.byte #0x3b, #0x00, #0xcd, #0xff	; -3342277
	.byte #0xc7, #0x7c, #0x1a, #0x00	;  1735879
	.byte #0x24, #0x19, #0x03, #0x00	;  203044
	.byte #0xe5, #0x5e, #0x2b, #0x00	;  2842341
	.byte #0x99, #0x11, #0x29, #0x00	;  2691481
	.byte #0x3a, #0x7a, #0xd8, #0xff	; -2590150
	.byte #0x71, #0x4d, #0x13, #0x00	;  1265009
	.byte #0x1c, #0xe1, #0x3d, #0x00	;  4055324
	.byte #0x84, #0x09, #0x13, #0x00	;  1247620
	.byte #0x51, #0xf0, #0x25, #0x00	;  2486353
	.byte #0x46, #0x5a, #0x18, #0x00	;  1595974
	.byte #0x18, #0x85, #0xc6, #0xff	; -3767016
	.byte #0xbe, #0x14, #0x13, #0x00	;  1250494
	.byte #0x91, #0x38, #0x28, #0x00	;  2635921
	.byte #0x90, #0xdb, #0xc9, #0xff	; -3548272
	.byte #0x89, #0x50, #0xd2, #0xff	; -2994039
	.byte #0x3f, #0x85, #0x1c, #0x00	;  1869119
	.byte #0x4b, #0x0b, #0x1d, #0x00	;  1903435
	.byte #0xa6, #0xf6, #0xef, #0xff	; -1050970
	.byte #0xbe, #0xa8, #0xeb, #0xff	; -1333058
	.byte #0x1b, #0xe1, #0x12, #0x00	;  1237275
	.byte #0x3e, #0x5e, #0xcd, #0xff	; -3318210
	.byte #0x2f, #0x2d, #0xea, #0xff	; -1430225
	.byte #0xe4, #0x1d, #0xf9, #0xff	; -451100
	.byte #0xc7, #0x06, #0x14, #0x00	;  1312455
	.byte #0x83, #0x72, #0x32, #0x00	;  3306115
	.byte #0x6e, #0x0d, #0xe2, #0xff	; -1962642
	.byte #0x53, #0x79, #0xec, #0xff	; -1279661
	.byte #0x99, #0x40, #0x1d, #0x00	;  1917081
	.byte #0x78, #0x25, #0xd9, #0xff	; -2546312
	.byte #0xad, #0x05, #0xeb, #0xff	; -1374803
	.byte #0x05, #0xe4, #0x16, #0x00	;  1500165
	.byte #0xe7, #0xdb, #0x0b, #0x00	;  777191
	.byte #0xe8, #0x1d, #0x22, #0x00	;  2235880
	.byte #0xcf, #0xf8, #0x33, #0x00	;  3406031
	.byte #0x34, #0xb9, #0xf7, #0xff	; -542412
	.byte #0x0c, #0xca, #0xd4, #0xff	; -2831860
	.byte #0xf8, #0x7f, #0xe6, #0xff	; -1671176
	.byte #0x57, #0xd1, #0xe3, #0xff	; -1846953
	.byte #0x1b, #0x91, #0xd8, #0xff	; -2584293
	.byte #0x12, #0x2c, #0xc7, #0xff	; -3724270
	.byte #0xd8, #0x10, #0x09, #0x00	;  594136
	.byte #0x1f, #0x5e, #0xc6, #0xff	; -3776993
	.byte #0x58, #0x46, #0xe1, #0xff	; -2013608
	.byte #0x8b, #0x1d, #0x25, #0x00	;  2432395
	.byte #0xb7, #0x73, #0x25, #0x00	;  2454455
	.byte #0x8f, #0x7c, #0xfd, #0xff	; -164721
	.byte #0x98, #0xdd, #0x1d, #0x00	;  1957272
	.byte #0x98, #0x68, #0x33, #0x00	;  3369112
	.byte #0xbb, #0xd4, #0x02, #0x00	;  185531
	.byte #0xa7, #0x93, #0xed, #0xff	; -1207385
	.byte #0xbe, #0x6c, #0xcf, #0xff	; -3183426
	.byte #0x1c, #0x7c, #0x02, #0x00	;  162844
	.byte #0x08, #0xaa, #0x18, #0x00	;  1616392
	.byte #0x71, #0xfd, #0x2d, #0x00	;  3014001
	.byte #0xa5, #0x5c, #0x0c, #0x00	;  810149
	.byte #0x9a, #0x37, #0x19, #0x00	;  1652634
	.byte #0x67, #0xa1, #0xc7, #0xff	; -3694233
	.byte #0x3d, #0x8c, #0xe4, #0xff	; -1799107
	.byte #0x3c, #0xa1, #0xd1, #0xff	; -3038916
	.byte #0x39, #0xc5, #0x35, #0x00	;  3523897
	.byte #0x15, #0x01, #0x3b, #0x00	;  3866901
	.byte #0xc0, #0x1d, #0x04, #0x00	;  269760
	.byte #0xf7, #0xc4, #0x21, #0x00	;  2213111
	.byte #0xf4, #0x1b, #0xf1, #0xff	; -975884
	.byte #0xe7, #0x35, #0x1a, #0x00	;  1717735
	.byte #0x0e, #0x34, #0x07, #0x00	;  472078
	.byte #0x45, #0x7d, #0xf9, #0xff	; -426683
	.byte #0xd0, #0x4c, #0x1a, #0x00	;  1723600
	.byte #0xae, #0x7c, #0xe4, #0xff	; -1803090
	.byte #0x68, #0x26, #0x1d, #0x00	;  1910376
	.byte #0x98, #0x8e, #0xe6, #0xff	; -1667432
	.byte #0x33, #0x26, #0xef, #0xff	; -1104333
	.byte #0xda, #0x05, #0xfc, #0xff	; -260646
	.byte #0xdb, #0x7f, #0xc5, #0xff	; -3833893
	.byte #0x64, #0x27, #0xd3, #0xff	; -2939036
	.byte #0xaf, #0xe1, #0xdd, #0xff	; -2235985
	.byte #0xdd, #0x93, #0xf9, #0xff	; -420899
	.byte #0x09, #0x1d, #0xdd, #0xff	; -2286327
	.byte #0x93, #0xcc, #0x02, #0x00	;  183443
	.byte #0x05, #0x18, #0xf1, #0xff	; -976891
	.byte #0x2a, #0x9c, #0x18, #0x00	;  1612842
	.byte #0xa9, #0xe5, #0xc9, #0xff	; -3545687
	.byte #0x50, #0x8a, #0xf7, #0xff	; -554416
	.byte #0x2c, #0xcf, #0x3b, #0x00	;  3919660
	.byte #0x4e, #0x43, #0xff, #0xff	; -48306
	.byte #0xdf, #0x36, #0xeb, #0xff	; -1362209
	.byte #0xca, #0x15, #0x3c, #0x00	;  3937738
	.byte #0x68, #0x5e, #0x15, #0x00	;  1400424
	.byte #0xb6, #0x16, #0xf3, #0xff	; -846154
	.byte #0xce, #0x29, #0x1e, #0x00	;  1976782
;cases/./../tests/dilithium-ntt.c:255: void invntt_tomont(int32_t a[N]) {
;	genLabel
;	genFunction
;	---------------------------------
; Function pqcrystals_dilithium2_ref_invntt_tomont
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 32 bytes.
_pqcrystals_dilithium2_ref_invntt_tomont::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -32
	ld	iy, #-32
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:260: k = 256;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x01
;cases/./../tests/dilithium-ntt.c:261: for(len = 1; len < N; len <<= 1) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genLabel
00110$:
;cases/./../tests/dilithium-ntt.c:262: for(start = 0; start < N; start = j + len) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genAssign
;	(locations are the same)
;	genLabel
00108$:
;cases/./../tests/dilithium-ntt.c:263: zeta = -zetas[--k];
;	genMinus
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	dec	hl
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_zetas
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genUminus
	neg
	ld	-24 (ix), a
	ld	a, #0x00
	sbc	a, c
	ld	-23 (ix), a
	ld	a, #0x00
	sbc	a, e
	ld	-22 (ix), a
	sbc	a, a
	sub	a, b
	ld	-21 (ix), a
;cases/./../tests/dilithium-ntt.c:264: for(j = start; j < start + len; ++j) {
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-20 (ix), l
	ld	-19 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	(locations are the same)
;	genLabel
00106$:
;cases/./../tests/dilithium-ntt.c:266: a[j] = t + a[j + len];
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/dilithium-ntt.c:264: for(j = start; j < start + len; ++j) {
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -20 (ix)
	ld	a, -1 (ix)
	sbc	a, -19 (ix)
	jp	nc, 00109$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:265: t = a[j];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -8 (ix)
	ld	e, a
	ld	a, h
	adc	a, -7 (ix)
	ld	d, a
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;cases/./../tests/dilithium-ntt.c:266: a[j] = t + a[j + len];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, h
	adc	a, -7 (ix)
	ld	-13 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -14 (ix)
	ld	h, -13 (ix)
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
;	genPlus
	ld	a, c
	add	a, -18 (ix)
	ld	c, a
	ld	a, b
	adc	a, -17 (ix)
	ld	b, a
	ld	a, l
	adc	a, -16 (ix)
	ld	l, a
	ld	a, h
	adc	a, -15 (ix)
	ld	h, a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/dilithium-ntt.c:267: a[j + len] = t - a[j + len];
;	genPointerGet
;fetchPairLong
	ld	l, -14 (ix)
	ld	h, -13 (ix)
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
	ld	a, -18 (ix)
	sub	a, c
	ld	-12 (ix), a
	ld	a, -17 (ix)
	sbc	a, b
	ld	-11 (ix), a
	ld	a, -16 (ix)
	sbc	a, e
	ld	-10 (ix), a
	ld	a, -15 (ix)
	sbc	a, d
	ld	-9 (ix), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #20
	add	hl, sp
	ld	bc, #0x0004
	ldir
;cases/./../tests/dilithium-ntt.c:268: a[j + len] = montgomery_reduce((int64_t)zeta * a[j + len]);
;	genAssign
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	push	iy
	ex	(sp), hl
	ld	l, -10 (ix)
	ex	(sp), hl
; common peephole 50a eliminated dead pop/push iy pair.
	ex	(sp), hl
	ld	h, -9 (ix)
	ex	(sp), hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIpush
; common peephole 50a eliminated dead pop/push iy pair.
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	push	hl
	ld	hl, #0x0006
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	___mulslong2slonglong
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -26 (ix)
	ld	h, -25 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -30 (ix)
	ld	h, -29 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -32 (ix)
	ld	h, -31 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_pqcrystals_dilithium2_ref_montgomery_reduce
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dilithium-ntt.c:264: for(j = start; j < start + len; ++j) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00106$
; common peephole 84 jumped to 00106$ directly instead of via 00175$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00175$.
;	genGoto
	jp	00106$
;	genLabel
00109$:
;cases/./../tests/dilithium-ntt.c:262: for(start = 0; start < N; start = j + len) {
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, #0x01
	jp	c, 00108$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:261: for(len = 1; len < N; len <<= 1) {
;	genAssign
;	(locations are the same)
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-6 (ix)
	rl	-5 (ix)
;	genCmpLt
	ld	a, -5 (ix)
	sub	a, #0x01
	jp	c, 00110$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:273: for(j = 0; j < N; ++j) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00112$:
;cases/./../tests/dilithium-ntt.c:274: a[j] = montgomery_reduce((int64_t)f * a[j]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
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
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xa3fa
	ld	hl, #0x0000
;	genCall
	push	hl
	ld	hl, #0x0018
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	___mulslong2slonglong
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -16 (ix)
	ld	d, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genCall
	call	_pqcrystals_dilithium2_ref_montgomery_reduce
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dilithium-ntt.c:273: for(j = 0; j < N; ++j) {
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00177$
	inc	-1 (ix)
00177$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00112$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00114$.
;cases/./../tests/dilithium-ntt.c:276: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total pqcrystals_dilithium2_ref_invntt_tomont function size at codegen: 13 bytes.
;cases/./../tests/dilithium-ntt.c:294: int32_t montgomery_reduce(int64_t a) {
;	genLabel
;	genFunction
;	---------------------------------
; Function pqcrystals_dilithium2_ref_montgomery_reduce
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_pqcrystals_dilithium2_ref_montgomery_reduce::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/dilithium-ntt.c:297: t = (int64_t)(int32_t)a*QINV;
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	e, 6 (ix)
	ld	d, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2001
	ld	hl, #0x0380
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:298: t = (a - (int64_t)t*Q) >> 32;
;	genAssign
;	(locations are the same)
;	genIpush
; common peephole 142 used ex to move hl onto the stack.
	ex	(sp),hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xe001
	ld	hl, #0x007f
;	genCall
	push	hl
	ld	hl, #0x0006
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	___mulslong2slonglong
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genMinus
	ld	a, 4 (ix)
	sub	a, -8 (ix)
	ld	-8 (ix), a
	ld	a, 5 (ix)
	sbc	a, -7 (ix)
	ld	-7 (ix), a
	ld	a, 6 (ix)
	sbc	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, 7 (ix)
	sbc	a, -5 (ix)
	ld	-5 (ix), a
	ld	a, 8 (ix)
	sbc	a, -4 (ix)
	ld	-4 (ix), a
	ld	a, 9 (ix)
	sbc	a, -3 (ix)
	ld	-3 (ix), a
	ld	a, 10 (ix)
	sbc	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, 11 (ix)
	sbc	a, -1 (ix)
	ld	-1 (ix), a
;	genRightShift
	ld	b, #0x20
00103$:
	sra	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:299: return t;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dilithium-ntt.c:300: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total pqcrystals_dilithium2_ref_montgomery_reduce function size at codegen: 5 bytes.
;cases/./../tests/dilithium-ntt.c:312: int32_t reduce32(int32_t a) {
;	genLabel
;	genFunction
;	---------------------------------
; Function pqcrystals_dilithium2_ref_reduce32
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_pqcrystals_dilithium2_ref_reduce32::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
;	genReceive
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:315: t = (a + (1l << 22)) >> 23;
;	genPlus
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	a, -2 (ix)
	add	a, #0x40
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0x00
;	genRightShift
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x17
00103$:
	sra	a
	rr	c
	rr	d
	rr	e
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:316: t = a - t*Q;
;	genIpush
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	bc
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xe001
	ld	hl, #0x007f
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	ld	a, -4 (ix)
	sub	a, e
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, d
	ld	d, a
	ld	a, -2 (ix)
	sbc	a, l
	ld	l, a
	ld	a, -1 (ix)
	sbc	a, h
	ld	h, a
;cases/./../tests/dilithium-ntt.c:317: return t;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dilithium-ntt.c:318: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total pqcrystals_dilithium2_ref_reduce32 function size at codegen: 5 bytes.
;cases/./../tests/dilithium-ntt.c:329: int32_t caddq(int32_t a) {
;	genLabel
;	genFunction
;	---------------------------------
; Function pqcrystals_dilithium2_ref_caddq
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_pqcrystals_dilithium2_ref_caddq::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
;	genReceive
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:330: a += (a >> 31) & Q;
;	genRightShift
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x1f
00103$:
	sra	h
	rr	l
	rr	d
	rr	e
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, e
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	and	a, #0xe0
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	res	7, l
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genPlus
	ld	a, -4 (ix)
	add	a, c
	ld	e, a
	ld	a, -3 (ix)
	adc	a, b
	ld	d, a
	ld	a, -2 (ix)
	adc	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
;cases/./../tests/dilithium-ntt.c:331: return a;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dilithium-ntt.c:332: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total pqcrystals_dilithium2_ref_caddq function size at codegen: 5 bytes.
;cases/./../tests/dilithium-ntt.c:344: int32_t freeze(int32_t a) {
;	genLabel
;	genFunction
;	---------------------------------
; Function pqcrystals_dilithium2_ref_freeze
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_pqcrystals_dilithium2_ref_freeze::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:345: a = reduce32(a);
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pqcrystals_dilithium2_ref_reduce32
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:346: a = caddq(a);
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dilithium-ntt.c:347: return a;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dilithium-ntt.c:348: }
;	genEndFunction
	jp	_pqcrystals_dilithium2_ref_caddq
; common peephole 152 removed unused ret.
;	Total pqcrystals_dilithium2_ref_freeze function size at codegen: 1 bytes.
;cases/./../tests/dilithium-ntt.c:360: void testDilithiumNTT(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDilithiumNTT
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_testDilithiumNTT::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;cases/./../tests/dilithium-ntt.c:363: for(int32_t i = 0; i < N; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00104$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00101$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:364: buf[i] = montgomery_reduce(i);
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_buf
	add	hl, de
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
; common peephole 99b removed load by reordering.
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genIpush
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	de, #0x0
	push	de
; common peephole 94d pushed register pair twice.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	de, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genCall
	call	_pqcrystals_dilithium2_ref_montgomery_reduce
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dilithium-ntt.c:363: for(int32_t i = 0; i < N; i++)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00155$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00155$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00101$:
;cases/./../tests/dilithium-ntt.c:366: ntt(buf);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_buf
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pqcrystals_dilithium2_ref_ntt
	pop	hl
;cases/./../tests/dilithium-ntt.c:368: invntt_tomont(buf);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pqcrystals_dilithium2_ref_invntt_tomont
;cases/./../tests/dilithium-ntt.c:370: for(int32_t i = 0; i < N; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00107$:
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, #0x01
	jp	nc, 00109$
;	skipping generated iCode
;cases/./../tests/dilithium-ntt.c:371: ASSERT(buf[i] == i);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00156$:
	sla	-8 (ix)
	rl	-7 (ix)
	djnz	00156$
;	genPlus
	ld	a, #<(_buf)
	add	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, #>(_buf)
	adc	a, -7 (ix)
	ld	-5 (ix), a
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00157$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0173
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
00108$:
;cases/./../tests/dilithium-ntt.c:370: for(int32_t i = 0; i < N; i++)
;	genPlus
	inc	-4 (ix)
	jp	nz, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00158$.
	inc	-3 (ix)
; common peephole 84 jumped to 00107$ directly instead of via 00158$.
; common peephole 159 removed unused label 00158$.
;	genGoto
; common peephole 78 removed redundant jp
	jp	00107$
;	genLabel
00109$:
;cases/./../tests/dilithium-ntt.c:373: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testDilithiumNTT function size at codegen: 9 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "buf[i] == i"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/dilithium-ntt.c"
	.db 0x00
;cases/tst_dilithium-ntt.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_dilithium-ntt.c:6: __prints("Running testDilithiumNTT\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_dilithium-ntt.c:7: testDilithiumNTT();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_dilithium-ntt.c:8: }
;	genEndFunction
	jp	_testDilithiumNTT
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testDilithiumNTT"
	.db 0x0a
	.db 0x00
;cases/tst_dilithium-ntt.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_dilithium-ntt.c:15: return "dilithium-ntt.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_dilithium-ntt.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "dilithium-ntt.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
