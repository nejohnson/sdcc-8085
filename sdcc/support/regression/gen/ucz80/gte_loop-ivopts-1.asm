;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_loop_ivopts_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _abort
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _foo
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_foo_t16_10000_17:
	.ds 64
_foo_tmp_10000_17:
	.ds 16
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
;cases/../gte/loop-ivopts-1.c:15: static float t16[16]={1.,2.,3.,4.,5.,6.,7.,8.,9.,
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	(_foo_t16_10000_17), hl
;fetchPairLong
	ld	hl, #0x3f80
	ld	(_foo_t16_10000_17+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 4)), hl
;fetchPairLong
	ld	h, #0x40
	ld	((_foo_t16_10000_17 + 4)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	h, l
	ld	((_foo_t16_10000_17 + 8)), hl
;fetchPairLong
	ld	hl, #0x4040
	ld	((_foo_t16_10000_17 + 8)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 12)), hl
;fetchPairLong
	ld	hl, #0x4080
	ld	((_foo_t16_10000_17 + 12)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 16)), hl
;fetchPairLong
	ld	hl, #0x40a0
	ld	((_foo_t16_10000_17 + 16)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 20)), hl
;fetchPairLong
	ld	hl, #0x40c0
	ld	((_foo_t16_10000_17 + 20)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 24)), hl
;fetchPairLong
	ld	hl, #0x40e0
	ld	((_foo_t16_10000_17 + 24)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 28)), hl
;fetchPairLong
	ld	h, #0x41
	ld	((_foo_t16_10000_17 + 28)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	h, l
	ld	((_foo_t16_10000_17 + 32)), hl
;fetchPairLong
	ld	hl, #0x4110
	ld	((_foo_t16_10000_17 + 32)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 36)), hl
;fetchPairLong
	ld	hl, #0x4120
	ld	((_foo_t16_10000_17 + 36)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 40)), hl
;fetchPairLong
	ld	hl, #0x4130
	ld	((_foo_t16_10000_17 + 40)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 44)), hl
;fetchPairLong
	ld	hl, #0x4140
	ld	((_foo_t16_10000_17 + 44)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 48)), hl
;fetchPairLong
	ld	hl, #0x4150
	ld	((_foo_t16_10000_17 + 48)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 52)), hl
;fetchPairLong
	ld	hl, #0x4160
	ld	((_foo_t16_10000_17 + 52)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 56)), hl
;fetchPairLong
	ld	hl, #0x4170
	ld	((_foo_t16_10000_17 + 56)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	((_foo_t16_10000_17 + 60)), hl
;fetchPairLong
	ld	hl, #0x4180
	ld	((_foo_t16_10000_17 + 60)+2), hl
;cases/../gte/loop-ivopts-1.c:17: static float tmp[4]={0.,0.,0.,0.};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	(_foo_tmp_10000_17), hl
;fetchPairLong
	ld	(_foo_tmp_10000_17+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_foo_tmp_10000_17 + 4)), hl
;fetchPairLong
	ld	((_foo_tmp_10000_17 + 4)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_foo_tmp_10000_17 + 8)), hl
;fetchPairLong
	ld	((_foo_tmp_10000_17 + 8)+2), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_foo_tmp_10000_17 + 12)), hl
;fetchPairLong
	ld	((_foo_tmp_10000_17 + 12)+2), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/gte_loop-ivopts-1.c:7: void abort(void) {ASSERT(0);}
;	genLabel
;	genFunction
;	---------------------------------
; Function abort
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_abort::
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
	ld	hl, #0x0007
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
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total abort function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/gte_loop-ivopts-1.c"
	.db 0x00
;cases/../gte/loop-ivopts-1.c:4: int main()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 16 bytes.
_main_::
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
;cases/../gte/loop-ivopts-1.c:7: foo (x);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;cases/../gte/loop-ivopts-1.c:8: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/loop-ivopts-1.c:9: }
;	genEndFunction
;	adjustStack by 16
	ld	hl, #16
	add	hl, sp
	ld	sp, hl
	ret
;	Total main_ function size at codegen: 6 bytes.
;cases/../gte/loop-ivopts-1.c:11: void foo (float *x)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	iy, #-16
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), l
	ld	-2 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/loop-ivopts-1.c:19: for (i=0; i<4; i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00106$:
;cases/../gte/loop-ivopts-1.c:20: k = 3 - i;
;	genMinus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0003
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/loop-ivopts-1.c:21: temp = t16[5*k];
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-16 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMult
	push	de
	ld	a, -16 (ix)
	ld	e, a
	add	a, a
	add	a, a
	add	a, e
	pop	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
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
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #_foo_t16_10000_17
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	iy, bc
	pop	bc
;	genPointerGet
	ld	a, 0 (iy)
	ld	-15 (ix), a
	ld	a, 1 (iy)
	ld	-14 (ix), a
	ld	a, 2 (iy)
	ld	-13 (ix), a
	ld	a, 3 (iy)
	ld	-12 (ix), a
;cases/../gte/loop-ivopts-1.c:22: for(j=k+1; j<4; j++) {
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	a
	ld	-1 (ix), a
;	genLeftShift
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), e
	ld	-10 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00107$
;	skipping generated iCode
;cases/../gte/loop-ivopts-1.c:23: tmp[k] = t16[k+  j*4] * temp;
;	genPlus
	ld	a, #<(_foo_tmp_10000_17)
	add	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, #>(_foo_tmp_10000_17)
	adc	a, -10 (ix)
	ld	-8 (ix), a
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	a, a
	add	a, a
;	genPlus
	add	a, -16 (ix)
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
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_foo_t16_10000_17
	add	hl, de
;	genPointerGet
;fetchPairLong
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
;	genIpush
	push	bc
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsmul
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	-5 (ix), l
	ld	-4 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -9 (ix)
	ld	d, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;cases/../gte/loop-ivopts-1.c:22: for(j=k+1; j<4; j++) {
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00107$:
;cases/../gte/loop-ivopts-1.c:19: for (i=0; i<4; i++) {
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x04
	jp	c, 00106$
;	skipping generated iCode
;cases/../gte/loop-ivopts-1.c:26: x[0] = tmp[0];
;	genPointerGet
	ld	bc, (#_foo_tmp_10000_17 + 0)
	ld	de, (#_foo_tmp_10000_17 + 2)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/../gte/loop-ivopts-1.c:27: x[1] = tmp[1];
;	genPlus
	ld	a, -3 (ix)
	add	a, #0x04
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	b, a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_foo_tmp_10000_17 + 4)
	ld	hl, (#_foo_tmp_10000_17 + 6)
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
;cases/../gte/loop-ivopts-1.c:28: x[2] = tmp[2];
;	genPlus
	ld	a, -3 (ix)
	add	a, #0x08
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	b, a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_foo_tmp_10000_17 + 8)
	ld	hl, (#_foo_tmp_10000_17 + 10)
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
;cases/../gte/loop-ivopts-1.c:29: x[3] = tmp[3];
;	genPlus
	ld	a, -3 (ix)
	add	a, #0x0c
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	b, a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_foo_tmp_10000_17 + 12)
	ld	hl, (#_foo_tmp_10000_17 + 14)
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
;	genLabel
; common peephole 159 removed unused label 00108$.
;cases/../gte/loop-ivopts-1.c:30: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 9 bytes.
;cases/gte_loop-ivopts-1.c:10: void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	jp	_main_
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
;cases/gte_loop-ivopts-1.c:12: __code const char * __getSuiteName(void) { return "gte/loop-ivopts-1"; }
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gte/loop-ivopts-1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
