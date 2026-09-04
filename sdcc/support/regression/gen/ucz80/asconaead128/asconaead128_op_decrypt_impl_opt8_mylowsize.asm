;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module asconaead128_op_decrypt_impl_opt8_mylowsize
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testAscon
	.globl _ascon_verify
	.globl _ascon_gettag
	.globl _ascon_final
	.globl _ascon_initaead
	.globl _ascon_loadkey
	.globl _ROUND
	.globl _NONLINEAR_LAYER
	.globl _VERIFY
	.globl _DECRYPT
	.globl _ENCRYPT
	.globl _ABSORB
	.globl ___prints
	.globl _blen
	.globl _buf
	.globl ___numCases
	.globl _ctlen
	.globl _ct
	.globl _adlen
	.globl _ad
	.globl _ptlen
	.globl _pt
	.globl _nonce
	.globl _key
	.globl _P
	.globl _ascon_update
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
	.ds 32
_blen::
	.ds 8
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
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4459: /*forceinline*/ void ABSORB(uint8_t* s, const uint8_t* d, uint_fast8_t n) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ABSORB
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_ABSORB::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4460: while (n > 0) {
;	genAssign
;	genLabel
00101$:
;	genIfx
	ld	a, 4 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4461: *s++ ^= *d++;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	hl
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	de
;	genXor
	xor	a, -1 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4462: --n;
;	genMinus
	dec	4 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00104$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4464: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total ABSORB function size at codegen: 6 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4466: /*forceinline*/ void ENCRYPT(uint8_t* s, uint8_t* c, const uint8_t* m, uint_fast8_t n) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ENCRYPT
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_ENCRYPT::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4467: while (n > 0) {
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	iy
	ex	(sp), hl
	ld	l, 4 (ix)
	ex	(sp), hl
; common peephole 50a eliminated dead pop/push iy pair.
	ex	(sp), hl
	ld	h, 5 (ix)
	ex	(sp), hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genLabel
00101$:
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4468: *c++ = (*s++ ^= *m++);
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	-1 (ix)
00123$:
;	genPointerGet
	ld	a, (hl)
;	genPointerGet
	ld	b, (iy)
;	genPlus
	inc	iy
;fetchPairLong
;	genXor
	xor	a, b
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	(de), a
;	genPlus
	inc	de
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4469: --n;
;	genMinus
	dec	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00104$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4471: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 3
	pop	af
	inc	sp
	jp	(hl)
;	Total ENCRYPT function size at codegen: 8 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4473: /*forceinline*/ void DECRYPT(uint8_t* s, uint8_t* m, const uint8_t* c, uint_fast8_t n) {
;	genLabel
;	genFunction
;	---------------------------------
; Function DECRYPT
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_DECRYPT::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4474: while (n > 0) {
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genLabel
00101$:
;	genIfx
	ld	a, 6 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4475: uint8_t t = *c++;
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4476: *m++ = *s ^ t;
;	genPointerGet
	ld	a, (hl)
;	genXor
	xor	a, -1 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genPlus
	inc	de
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4477: *s++ = t;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;	genPlus
	inc	hl
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4478: --n;
;	genMinus
	dec	6 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00104$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4480: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	pop	hl
;	adjustStack by 3
	pop	af
	inc	sp
	jp	(hl)
;	Total DECRYPT function size at codegen: 7 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4482: /*forceinline*/ uint8_t VERIFY(const uint8_t* s, const uint8_t* d, uint_fast8_t n) {
;	genLabel
;	genFunction
;	---------------------------------
; Function VERIFY
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_VERIFY::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4483: uint8_t r = 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4484: while (n > 0) {
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, 4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00101$:
;	genIfx
	ld	a, b
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4485: r |= *s++ ^ *d++;
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	hl
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	de
;	genXor
	xor	a, -1 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genOr
	or	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4486: --n;
;	genMinus
	dec	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4488: return r;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4489: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total VERIFY function size at codegen: 6 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4518: /*forceinline*/ void NONLINEAR_LAYER(ascon_state_t* s, word_t* xtemp, uint8_t pos) {
;	genLabel
;	genFunction
;	---------------------------------
; Function NONLINEAR_LAYER
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 20 bytes.
_NONLINEAR_LAYER::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -20
	ld	iy, #-20
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
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4525: t0 = XOR8(s->b[1][pos], s->b[2][pos]);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0010
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
; common peephole 11 loaded ed from lh directly instead of going through -6 (ix) -5 (ix).
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, 4 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-18 (ix), l
	ld	-17 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0008
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded ed from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, 4 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-16 (ix), l
	ld	-15 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -16 (ix) -15 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
; common peephole 33 loaded a from a instead of going through -5 (ix).
	ld	-5 (ix), a
; common peephole 0a removed redundant load from a into a.
	xor	a, -6 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4526: t1 = XOR8(s->b[0][pos], s->b[4][pos]);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0020
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, 4 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-13 (ix), l
	ld	-12 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -13 (ix) -12 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, 4 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-11 (ix), l
	ld	-10 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -11 (ix) -10 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
; common peephole 33 loaded a from a instead of going through -5 (ix).
	ld	-5 (ix), a
; common peephole 0a removed redundant load from a into a.
	xor	a, -6 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4527: t2 = XOR8(s->b[3][pos], s->b[4][pos]);
;	genPointerGet
;fetchPairLong
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0018
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, 4 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	ld	a, -6 (ix)
	xor	a, -5 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4528: s->b[4][pos] = OR8(s->b[3][pos], NOT8(s->b[4][pos]));
;	genPointerGet
;fetchPairLong
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4388: forceinline uint8_t NOT8(uint8_t a) { return ~a; }
;	genXor
; common peephole 33 loaded a from a instead of going through -5 (ix).
	ld	-5 (ix), a
; common peephole 0a removed redundant load from a into a.
	cpl
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4528: s->b[4][pos] = OR8(s->b[3][pos], NOT8(s->b[4][pos]));
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4394: forceinline uint8_t OR8(uint8_t a, uint8_t b) { return a | b; }
;	genOr
	or	a, -5 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4528: s->b[4][pos] = OR8(s->b[3][pos], NOT8(s->b[4][pos]));
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	xor	a, -14 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4529: s->b[4][pos] = XOR8(s->b[4][pos], t0);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4530: s->b[3][pos] = XOR8(s->b[3][pos], s->b[1][pos]);
;	genPointerGet
;fetchPairLong
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
; common peephole 22a used (hl) in xor directly instead of going through c.
	xor	a, (hl)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4530: s->b[3][pos] = XOR8(s->b[3][pos], s->b[1][pos]);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4394: forceinline uint8_t OR8(uint8_t a, uint8_t b) { return a | b; }
;	genOr
	or	a, -14 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4531: s->b[3][pos] = OR8(s->b[3][pos], t0);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4532: s->b[3][pos] = XOR8(s->b[3][pos], t1);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4533: s->b[2][pos] = XOR8(s->b[2][pos], t1);
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	xor	a, -9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4533: s->b[2][pos] = XOR8(s->b[2][pos], t1);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4534: s->b[2][pos] = OR8(s->b[2][pos], s->b[1][pos]);
;	genPointerGet
;fetchPairLong
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	_moveFrom_tpair_()
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4394: forceinline uint8_t OR8(uint8_t a, uint8_t b) { return a | b; }
;	genOr
; common peephole 22a used (hl) in or directly instead of going through c.
	or	a, (hl)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4534: s->b[2][pos] = OR8(s->b[2][pos], s->b[1][pos]);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	xor	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4535: s->b[2][pos] = XOR8(s->b[2][pos], t2);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4388: forceinline uint8_t NOT8(uint8_t a) { return ~a; }
;	genXor
	ld	a, -9 (ix)
	cpl
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4536: s->b[1][pos] = AND8(s->b[1][pos], NOT8(t1));
;	genPointerGet
;fetchPairLong
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4392: forceinline uint8_t AND8(uint8_t a, uint8_t b) { return a & b; }
;	genAnd
; common peephole 33 loaded a from a instead of going through -7 (ix).
	ld	-7 (ix), a
; common peephole 0a removed redundant load from a into a.
	and	a, -5 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4536: s->b[1][pos] = AND8(s->b[1][pos], NOT8(t1));
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	xor	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4537: s->b[1][pos] = XOR8(s->b[1][pos], t2);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4538: s->b[0][pos] = OR8(s->b[0][pos], t2);
;	genPointerGet
;fetchPairLong
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4394: forceinline uint8_t OR8(uint8_t a, uint8_t b) { return a | b; }
;	genOr
	or	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4538: s->b[0][pos] = OR8(s->b[0][pos], t2);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4539: (*xtemp).b[pos] = XOR8(s->b[0][pos], t0);
;	genPlus
	ld	a, -4 (ix)
	add	a, 4 (ix)
	ld	c, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	b, a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	ld	a, e
	xor	a, -14 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4539: (*xtemp).b[pos] = XOR8(s->b[0][pos], t0);
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;	genLabel
; common peephole 159 removed unused label 00118$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4540: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total NONLINEAR_LAYER function size at codegen: 7 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4542: /*forceinline*/ void ROUND(ascon_state_t* s, uint8_t C) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ROUND
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 47 bytes.
_ROUND::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -47
	ld	iy, #-47
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4545: s->b[2][0] = XOR8(s->b[2][0], C);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -2 (ix) -1 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0010
	add	hl, de
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	c, (hl)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4390: forceinline uint8_t XOR8(uint8_t a, uint8_t b) { return a ^ b; }
;	genXor
	xor	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4545: s->b[2][0] = XOR8(s->b[2][0], C);
;	genPointerSet
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4547: for (uint_fast8_t i = 0; i < 8; i++) NONLINEAR_LAYER(s, &xtemp, i);
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genLabel
00197$:
;	genCmpLt
	ld	a, b
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00101$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	bc
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_NONLINEAR_LAYER
	pop	bc
;	genPlus
	inc	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00197$
;	genLabel
00101$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4549: LINEAR_LAYER(s, xtemp.x);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4506: temp = s->x[2] ^ stdc_rotate_right(s->x[2], 28 - 19);
;	genPlus
	ld	a, -2 (ix)
	add	a, #0x10
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	d, a
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #39
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-47 (ix), a
	ld	a, -8 (ix)
	ld	-46 (ix), a
	ld	a, -7 (ix)
	ld	-45 (ix), a
	ld	a, -6 (ix)
	ld	-44 (ix), a
	ld	a, -5 (ix)
	ld	-43 (ix), a
	ld	a, -4 (ix)
	ld	-42 (ix), a
	ld	a, -3 (ix)
	ld	-41 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-40 (ix), #0x00
	srl	-41 (ix)
	rr	-42 (ix)
	rr	-43 (ix)
	rr	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	b, #0x07
00220$:
	sla	-4 (ix)
	rl	-3 (ix)
; common peephole 159 removed unused label 00221$.
	djnz	00220$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -6 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -5 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -4 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -3 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4506: temp = s->x[2] ^ stdc_rotate_right(s->x[2], 28 - 19);
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #39
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genXor
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	xor	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	xor	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	xor	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
	xor	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-47 (ix), a
	ld	a, -7 (ix)
	ld	-46 (ix), a
	ld	a, -6 (ix)
	ld	-45 (ix), a
	ld	a, -5 (ix)
	ld	-44 (ix), a
	ld	a, -4 (ix)
	ld	-43 (ix), a
	ld	a, -3 (ix)
	ld	-42 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-41 (ix), a
	ld	-40 (ix), a
	ld	b, #0x03
00222$:
	srl	-42 (ix)
	rr	-43 (ix)
	rr	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
; common peephole 159 removed unused label 00223$.
	djnz	00222$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-5 (ix), a
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	b, #0x05
00224$:
	sla	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
; common peephole 159 removed unused label 00225$.
	djnz	00224$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -6 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -5 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -4 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -3 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4507: s->x[0] = s->x[2] ^ stdc_rotate_right(temp, 19);
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #39
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genXor
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	xor	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	xor	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	xor	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
	xor	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #39
	add	hl, sp
	ld	bc, #0x0008
	ldir
	pop	de
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4508: temp = s->x[4] ^ stdc_rotate_right(s->x[4], 6 - 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	bc, #0x0020
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #37
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-47 (ix), a
	ld	a, -11 (ix)
	ld	-46 (ix), a
	ld	a, -10 (ix)
	ld	-45 (ix), a
	ld	a, -9 (ix)
	ld	-44 (ix), a
	ld	a, -8 (ix)
	ld	-43 (ix), a
	ld	a, -7 (ix)
	ld	-42 (ix), a
	ld	a, -6 (ix)
	ld	-41 (ix), a
	ld	a, -5 (ix)
	ld	-40 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x05
00226$:
	srl	-40 (ix)
	rr	-41 (ix)
	rr	-42 (ix)
	rr	-43 (ix)
	rr	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
; common peephole 159 removed unused label 00227$.
	djnz	00226$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	b, #0x03
00228$:
	sla	-5 (ix)
; common peephole 159 removed unused label 00229$.
	djnz	00228$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-21 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -11 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -6 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -5 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4508: temp = s->x[4] ^ stdc_rotate_right(s->x[4], 6 - 1);
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #37
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genXor
	ld	a, -12 (ix)
	xor	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	xor	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	xor	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRot
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-21 (ix), a
	ld	a, -11 (ix)
	ld	-20 (ix), a
	ld	a, -10 (ix)
	ld	-19 (ix), a
	ld	a, -9 (ix)
	ld	-18 (ix), a
	ld	a, -8 (ix)
	ld	-17 (ix), a
	ld	a, -7 (ix)
	ld	-16 (ix), a
	ld	a, -6 (ix)
	ld	-15 (ix), a
	ld	a, -5 (ix)
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through -14 (ix).
	ld	-14 (ix), a
; common peephole 0a removed redundant load from a into a.
	rra
	rr	-15 (ix)
	rr	-16 (ix)
	rr	-17 (ix)
	rr	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
	rr	-21 (ix)
	rr	-14 (ix)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4509: s->x[2] = s->x[4] ^ stdc_rotate_right(temp, 1);
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #37
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genXor
	ld	a, -12 (ix)
	xor	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	xor	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	xor	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #35
	add	hl, sp
	ld	bc, #0x0008
	ldir
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4510: temp = s->x[1] ^ stdc_rotate_right(s->x[1], 41 - 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0008
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
; common peephole 11 loaded ed from lh directly instead of going through -6 (ix) -5 (ix).
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-47 (ix), a
	ld	a, -9 (ix)
	ld	-46 (ix), a
	ld	a, -8 (ix)
	ld	-45 (ix), a
	ld	a, -7 (ix)
	ld	-44 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-43 (ix), a
	ld	-42 (ix), a
	ld	-41 (ix), a
	ld	-40 (ix), a
	ld	b, #0x02
00230$:
	srl	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
; common peephole 159 removed unused label 00231$.
	djnz	00230$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	ld	-10 (ix), a
	ld	a, -14 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	b, #0x06
00232$:
	sla	-11 (ix)
	rl	-10 (ix)
	rl	-9 (ix)
	rl	-8 (ix)
	rl	-7 (ix)
; common peephole 159 removed unused label 00233$.
	djnz	00232$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -11 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4510: temp = s->x[1] ^ stdc_rotate_right(s->x[1], 41 - 7);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genXor
	ld	a, -14 (ix)
	xor	a, -23 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
	xor	a, -22 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	xor	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-47 (ix), a
	ld	a, -13 (ix)
	ld	-46 (ix), a
	ld	a, -12 (ix)
	ld	-45 (ix), a
	ld	a, -11 (ix)
	ld	-44 (ix), a
	ld	a, -10 (ix)
	ld	-43 (ix), a
	ld	a, -9 (ix)
	ld	-42 (ix), a
	ld	a, -8 (ix)
	ld	-41 (ix), a
	ld	a, -7 (ix)
	ld	-40 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x07
00234$:
	srl	-40 (ix)
	rr	-41 (ix)
	rr	-42 (ix)
	rr	-43 (ix)
	rr	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
; common peephole 159 removed unused label 00235$.
	djnz	00234$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), a
	sla	-7 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -11 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4511: s->x[4] = s->x[1] ^ stdc_rotate_right(temp, 7);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genXor
	ld	a, -14 (ix)
	xor	a, -23 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
	xor	a, -22 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	xor	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ld	bc, #0x0008
	ldir
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4512: temp = s->x[3] ^ stdc_rotate_right(s->x[3], 61 - 39);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0018
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded ed from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-47 (ix), a
	ld	a, -11 (ix)
	ld	-46 (ix), a
	ld	a, -10 (ix)
	ld	-45 (ix), a
	ld	a, -9 (ix)
	ld	-44 (ix), a
	ld	a, -8 (ix)
	ld	-43 (ix), a
	ld	a, -7 (ix)
	ld	-42 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-41 (ix), a
	ld	-40 (ix), a
	ld	b, #0x06
00238$:
	srl	-42 (ix)
	rr	-43 (ix)
	rr	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
; common peephole 159 removed unused label 00239$.
	djnz	00238$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	ld	-8 (ix), a
	ld	a, -12 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	b, #0x02
00240$:
	sla	-9 (ix)
	rl	-8 (ix)
	rl	-7 (ix)
; common peephole 159 removed unused label 00241$.
	djnz	00240$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -11 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4512: temp = s->x[3] ^ stdc_rotate_right(s->x[3], 61 - 39);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genXor
	ld	a, -14 (ix)
	xor	a, -23 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
	xor	a, -22 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	xor	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-47 (ix), a
	ld	a, -9 (ix)
	ld	-46 (ix), a
	ld	a, -8 (ix)
	ld	-45 (ix), a
	ld	a, -7 (ix)
	ld	-44 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-43 (ix), a
	ld	-42 (ix), a
	ld	-41 (ix), a
	ld	-40 (ix), a
	ld	b, #0x07
00242$:
	srl	-44 (ix)
	rr	-45 (ix)
	rr	-46 (ix)
	rr	-47 (ix)
; common peephole 159 removed unused label 00243$.
	djnz	00242$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	ld	-10 (ix), a
	ld	a, -14 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), a
	sla	-11 (ix)
	rl	-10 (ix)
	rl	-9 (ix)
	rl	-8 (ix)
	rl	-7 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	ld	a, -47 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	or	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -45 (ix)
	or	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	or	a, -11 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -43 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -41 (ix)
	or	a, -8 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	or	a, -7 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4513: s->x[1] = s->x[3] ^ stdc_rotate_right(temp, 39);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genXor
	ld	a, -14 (ix)
	xor	a, -23 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
	xor	a, -22 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	xor	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #33
	add	hl, sp
	ld	bc, #0x0008
	ldir
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -31 (ix)
	ld	-21 (ix), a
	ld	a, -30 (ix)
	ld	-20 (ix), a
	ld	a, -29 (ix)
	ld	-19 (ix), a
	ld	a, -28 (ix)
	ld	-18 (ix), a
	ld	a, -27 (ix)
	ld	-17 (ix), a
	ld	a, -26 (ix)
	ld	-16 (ix), a
	ld	a, -25 (ix)
	ld	-15 (ix), a
	ld	a, -24 (ix)
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x07
00246$:
	srl	-14 (ix)
	rr	-15 (ix)
	rr	-16 (ix)
	rr	-17 (ix)
	rr	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
	rr	-21 (ix)
; common peephole 159 removed unused label 00247$.
	djnz	00246$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -31 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	sla	-5 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	ld	a, -12 (ix)
	or	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	or	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	or	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	or	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	or	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	or	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	or	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4514: temp = xtemp ^ stdc_rotate_right(xtemp, 17 - 10);
;	genXor
	ld	a, -12 (ix)
	xor	a, -31 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -30 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -29 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -28 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -27 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -26 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	xor	a, -25 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	xor	a, -24 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;../../device/include/stdbit.h:363: inline unsigned long long stdc_rotate_right_ull (unsigned long long value, unsigned int count) __STDC_ROTATE_RIGHT
;	genRightShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	ld	-21 (ix), a
	ld	a, -10 (ix)
	ld	-20 (ix), a
	ld	a, -9 (ix)
	ld	-19 (ix), a
	ld	a, -8 (ix)
	ld	-18 (ix), a
	ld	a, -7 (ix)
	ld	-17 (ix), a
	ld	a, -6 (ix)
	ld	-16 (ix), a
	ld	a, -5 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-14 (ix), #0x00
	ld	b, #0x02
00250$:
	srl	-15 (ix)
	rr	-16 (ix)
	rr	-17 (ix)
	rr	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
	rr	-21 (ix)
; common peephole 159 removed unused label 00251$.
	djnz	00250$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-6 (ix), a
	ld	a, -11 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	b, #0x06
00252$:
	sla	-6 (ix)
	rl	-5 (ix)
; common peephole 159 removed unused label 00253$.
	djnz	00252$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	ld	a, -12 (ix)
	or	a, -21 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	or	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	or	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	or	a, -18 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	or	a, -17 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	or	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	or	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4515: s->x[3] = xtemp ^ stdc_rotate_right(temp, 10);
;	genXor
	ld	a, -12 (ix)
	xor	a, -31 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	xor	a, -30 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	xor	a, -29 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	xor	a, -28 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	xor	a, -27 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	xor	a, -26 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	xor	a, -25 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	xor	a, -24 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #35
	add	hl, sp
	ld	bc, #0x0008
	ldir
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4550: printstate(" round output", s);
;	genLabel
; common peephole 159 removed unused label 00199$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4551: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total ROUND function size at codegen: 79 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4582: forceinline void ascon_loadkey(ascon_key_t* key, const uint8_t* k) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ascon_loadkey
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ascon_loadkey::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4584: INSERT(key->b[0], k, 8);
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
	push	iy
	ex	(sp), hl
	ld	h, b
	ex	(sp), hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4448: memcpy (s, d, n);
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
	push	de
	push	bc
	ld	e, a
	push	iy
	ex	(sp), hl
	ld	d, h
	ex	(sp), hl
	pop	iy
;fetchPairLong
	ld	bc, #0x0008
	ldir
	pop	bc
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4585: INSERT(key->b[1], k + 8, 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;fetchPairLong
	ld	hl, #0x0008
	add	hl, bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4448: memcpy (s, d, n);
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
	ex	de, hl
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4585: INSERT(key->b[1], k + 8, 8);
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4591: }
;	genEndFunction
	ret
;	Total ascon_loadkey function size at codegen: 7 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4593: forceinline void ascon_initaead(ascon_state_t* s, const ascon_key_t* key,
;	genLabel
;	genFunction
;	---------------------------------
; Function ascon_initaead
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_ascon_initaead::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	de
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4597: if (ASCON_AEAD_RATE == 16) s->x[0] = ASCON_128A_IV;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x8c
	inc	hl
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x10
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4598: memcpy(s->b[1], key->b[0], 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
	push	bc
;fetchPairLong
	ld	bc, #0x0010
	ldir
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4603: INSERT(s->b[3], npub, 8);
;	genAssign
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0x0018
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4448: memcpy (s, d, n);
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
	push	bc
;fetchPairLong
	ld	bc, #0x0008
	ldir
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4604: INSERT(s->b[4], npub + 8, 8);
;	genPlus
	ld	a, 4 (ix)
	add	a, #0x08
	ld	e, a
	ld	a, 5 (ix)
	adc	a, #0x00
	ld	d, a
;	genPlus
;fetchPairLong
	ld	hl, #0x0020
	add	hl, bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4448: memcpy (s, d, n);
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
	push	bc
	ex	de, hl
;fetchPairLong
	ld	bc, #0x0008
	ldir
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4606: P(s, 12);
;	genSend
	push	iy
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000c
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_P
	pop	iy
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4608: memxor(s->b[3], key->b[0], 16);
;	genAssign
;	(locations are the same)
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4437: while (n > 0) {
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, #0x10
;	genLabel
00111$:
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00115$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4438: *dst++ ^= *src++;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	iy
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	iy
;fetchPairLong
;	genPointerGet
	ld	b, (hl)
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	de
;	genXor
	xor	a, b
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4439: --n;
;	genMinus
	dec	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4612: printstate("init 2nd key xor", s);
;	genLabel
00115$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4613: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total ascon_initaead function size at codegen: 13 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4615: forceinline void ascon_final(ascon_state_t* s, const ascon_key_t* key) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ascon_final
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_ascon_final::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), e
	ld	-2 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4617: memxor(s->b[ASCON_AEAD_RATE / 8], key->b[0], 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0x0010
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4437: while (n > 0) {
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	ld	-1 (ix), #0x10
;	genLabel
00105$:
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4438: *dst++ ^= *src++;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	inc	iy
;fetchPairLong
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (hl)
;	genPlus
	inc	hl
;	genXor
	xor	a, -4 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	(de), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4439: --n;
;	genMinus
	dec	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4617: memxor(s->b[ASCON_AEAD_RATE / 8], key->b[0], 16);
;	genLabel
00108$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4624: P(s, 12);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000c
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_P
	pop	bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4626: memxor(s->b[3], key->b[0], 16);
;	genPlus
;fetchPairLong
	ld	hl, #0x0018
	add	hl, bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4437: while (n > 0) {
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -3 (ix)
	ld	d, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x10
;	genLabel
00109$:
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4438: *dst++ ^= *src++;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	hl
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	de
;	genXor
	xor	a, -4 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4439: --n;
;	genMinus
	dec	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4630: printstate("final 2nd key xor", s);
;	genLabel
00113$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4631: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total ascon_final function size at codegen: 5 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4633: forceinline void ascon_gettag(ascon_state_t* s, uint8_t* t) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ascon_gettag
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ascon_gettag::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4634: SQUEEZE(t, s->b[3], 8);
;	genPlus
;fetchPairLong
	ld	hl, #0x0018
	add	hl, bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	push	iy
	ex	(sp), hl
	ld	h, d
	ex	(sp), hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4456: memcpy (d, s, n);
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
	push	de
	push	bc
	ld	e, a
	push	iy
	ex	(sp), hl
	ld	d, h
	ex	(sp), hl
	pop	iy
;fetchPairLong
	ld	bc, #0x0008
	ldir
	pop	bc
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4635: SQUEEZE(t + 8, s->b[4], 8);
;	genPlus
;fetchPairLong
	ld	hl, #0x0020
	add	hl, bc
;	genPlus
	ld	a, e
	add	a, #0x08
	ld	e, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
	inc	d
00105$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4456: memcpy (d, s, n);
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4635: SQUEEZE(t + 8, s->b[4], 8);
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4636: }
;	genEndFunction
	ret
;	Total ascon_gettag function size at codegen: 7 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4638: forceinline int ascon_verify(ascon_state_t* s, const uint8_t* t) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ascon_verify
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_ascon_verify::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4641: r |= VERIFY(s->b[3], t, 8);
;	genPlus
;fetchPairLong
	ld	hl, #0x0018
	add	hl, bc
;	genIpush
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_VERIFY
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4642: r |= VERIFY(s->b[4], t + 8, 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;fetchPairLong
	ld	hl, #0x0020
	add	hl, bc
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_VERIFY
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genOr
	or	a, -1 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4643: return ((((int)r - 1) >> 8) & 1) - 1;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genMinus
;fetchPairLong
	ld	c, a
	dec	bc
;	genGetAbit
	ld	a, b
	and	a, #0x01
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genMinus
;fetchPairLong
	ld	e, a
	dec	de
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4644: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total ascon_verify function size at codegen: 4 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4768: void P(ascon_state_t* s, int nr) { PROUNDS(s, nr); }
;	genLabel
;	genFunction
;	---------------------------------
; Function P
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_P::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4554: int i = START(nr);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
	inc	hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genMinus
	ld	a, #0x0c
	sub	a, e
	ld	e, a
	sbc	a, a
	ld	d, a
;	genOr
	ld	a, l
	or	a, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	or	a, d
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4555: do {
;	genLabel
00101$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4556: ROUND(s, RC(i));
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	hl
	push	bc
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_ROUND
	pop	bc
	pop	hl
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4557: i += INC;
;	genPlus
;fetchPairLong
	ld	de, #0xfff1
	add	hl, de
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4558: } while (i != END);
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x3c
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00116$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00117$.
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4768: void P(ascon_state_t* s, int nr) { PROUNDS(s, nr); }
;	genLabel
; common peephole 159 removed unused label 00105$.
;	genEndFunction
	ret
;	Total P function size at codegen: 1 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4787: void ascon_update(ascon_state_t* s, uint8_t* c, const uint8_t* m, size_t mlen,
;	genLabel
;	genFunction
;	---------------------------------
; Function ascon_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 14 bytes.
_ascon_update::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -14
	ld	iy, #-14
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4801: while (mlen >= rate) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00293$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00292$.
	xor	a, a
00293$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x09
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00295$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00294$.
	xor	a, a
00295$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00297$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00296$.
	xor	a, a
00297$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00299$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00298$.
	xor	a, a
00299$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	-2 (ix), a
	ld	a, 7 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00135$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x10
	ld	a, -1 (ix)
	sbc	a, #0x00
	jp	c, 00201$
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4802: if (mode == 1 || mode == 9) ABSORB(s->b[0], m, 8);
;	genIfx
	ld	a, -14 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	genIfx
	ld	a, -13 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;	genLabel
00101$:
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ABSORB
;	genLabel
00102$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4807: if (mode == 3) ENCRYPT(s->b[0], c, m, 8);
;	genIfx
	ld	a, -12 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ENCRYPT
;	genLabel
00105$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4808: if (mode == 7) DECRYPT(s->b[0], c, m, 8);
;	genIfx
	ld	a, -11 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_DECRYPT
;	genLabel
00107$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4809: if (mode == 1 && ASCON_AEAD_RATE == 16) ABSORB(s->b[1], m + 8, 8);
;	genPlus
	ld	a, -4 (ix)
	add	a, #0x08
	ld	c, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	b, a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0008
	add	hl, de
;	genIfx
	ld	a, -14 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;	genIpush
	push	hl
	push	bc
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ABSORB
	pop	bc
	pop	hl
;	genLabel
00109$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4810: if (mode == 3 && ASCON_AEAD_RATE == 16) ENCRYPT(s->b[1], c + 8, m + 8, 8);
;	genPlus
	ld	a, -6 (ix)
	add	a, #0x08
	ld	e, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	d, a
;	genIfx
	ld	a, -12 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;	genIpush
	push	hl
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ENCRYPT
	pop	de
	pop	bc
	pop	hl
;	genLabel
00112$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4811: if (mode == 7 && ASCON_AEAD_RATE == 16) DECRYPT(s->b[1], c + 8, m + 8, 8);
;	genIfx
	ld	a, -11 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_DECRYPT
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4814: if (mode == 3 || mode == 9) printstate("absorb plaintext", s);
;	genLabel
00124$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4820: P(s, nr);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0008
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_P
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4822: m += rate;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0010
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4823: c += rate;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0010
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4824: mlen -= rate;
;	genMinus
	ld	a, -2 (ix)
	add	a, #0xf0
	ld	-2 (ix), a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
;	genGoto
	jp	00135$
;	genLabel
00201$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	4 (ix), a
	ld	a, -3 (ix)
	ld	5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	6 (ix), a
	ld	7 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4827: uint_fast8_t i = 0;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4829: if (ASCON_AEAD_RATE == 16 && mlen >= 8) {
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x08
	jp	c, 00145$
;	skipping generated iCode
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4830: if (mode == 1) ABSORB(s->b[0], m, 8);
;	genIfx
	ld	a, -14 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00139$
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ABSORB
;	genLabel
00139$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4831: if (mode == 3) ENCRYPT(s->b[0], c, m, 8);
;	genIfx
	ld	a, -12 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00141$
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ENCRYPT
;	genLabel
00141$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4832: if (mode == 7) DECRYPT(s->b[0], c, m, 8);
;	genIfx
	ld	a, -11 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00143$
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_DECRYPT
;	genLabel
00143$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4833: i = 1;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x01
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4834: m += 8;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0008
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	4 (ix), l
	ld	5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4835: c += 8;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0008
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4836: mlen -= 8;
;	genMinus
	ld	a, -2 (ix)
	add	a, #0xf8
	ld	6 (ix), a
	ld	a, #0x00
	adc	a, #0xff
	ld	7 (ix), a
;	genLabel
00145$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4838: if (mode == 3) ENCRYPT(s->b[i], c, m, mlen);
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	ld	a, -5 (ix)
	add	a, a
	add	a, a
	add	a, a
	ld	-1 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genIfx
	ld	a, -12 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00148$
;	genIpush
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ENCRYPT
;	genLabel
00148$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4839: if (mode == 7) DECRYPT(s->b[i], c, m, mlen);
;	genIfx
	ld	a, -11 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00150$
;	genIpush
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_DECRYPT
;	genLabel
00150$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4841: if (mode == 1 || mode == 9) ABSORB(s->b[i], m, mlen);
;	genIfx
	ld	a, -14 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00151$
;	genIfx
	ld	a, -13 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00152$
;	genLabel
00151$:
;	genIpush
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ABSORB
;	genLabel
00152$:
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4845: s->b[i][mlen] ^= PAD();
;	genPlus
	ld	a, -1 (ix)
	add	a, -8 (ix)
	ld	c, a
	ld	a, #0x00
	adc	a, -7 (ix)
	ld	b, a
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4848: if (mode == 7) printstate("pad ciphertext", s);
;	genLabel
; common peephole 159 removed unused label 00167$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4849: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 5
	pop	af
	pop	af
	inc	sp
	jp	(hl)
;	Total ascon_update function size at codegen: 9 bytes.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4868: void testAscon(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAscon
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testAscon::
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4880: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testAscon function size at codegen: 1 bytes.
_key:
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
_nonce:
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
_pt:
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
_ptlen:
	.byte #0x0a, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
_ad:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
_adlen:
	.byte #0x02, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
_ct:
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0xef	; 239
	.db #0xad	; 173
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x5d	; 93
	.db #0xf1	; 241
	.db #0xa3	; 163
	.db #0x1e	; 30
	.db #0x58	; 88	'X'
	.db #0xd5	; 213
	.db #0xd7	; 215
	.db #0x16	; 22
	.db #0xae	; 174
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0xf8	; 248
	.db #0xf1	; 241
	.db #0x76	; 118	'v'
	.db #0x1c	; 28
	.db #0x91	; 145
	.db #0xcb	; 203
	.db #0xe3	; 227
	.db #0xd8	; 216
_ctlen:
	.byte #0x1a, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4884: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4886: __prints("Running testAscon\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4887: testAscon();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4888: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testAscon"
	.db 0x0a
	.db 0x00
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4893: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4895: return "asconaead128_op_decrypt_impl_opt8_mylowsize";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/asconaead128/asconaead128_op_decrypt_impl_opt8_mylowsize.c:4896: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "asconaead128_op_decrypt_impl_opt8_mylowsize"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
