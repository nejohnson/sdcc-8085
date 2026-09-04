;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_shiftdi_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _abort
	.globl ___builtin_abort
	.globl ___prints
	.globl ___fail
	.globl _expected_c
	.globl _expected_b
	.globl _expected_a
	.globl _c
	.globl _b
	.globl _a
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
_a::
	.ds 8
_b::
	.ds 8
_c::
	.ds 8
_expected_a::
	.ds 512
_expected_b::
	.ds 512
_expected_c::
	.ds 512
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
;cases/gte_shiftdi-2.c:4: void __builtin_abort(void){ASSERT(0);}
;	genLabel
;	genFunction
;	---------------------------------
; Function __builtin_abort
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___builtin_abort::
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
	ld	hl, #0x0004
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
;	Total __builtin_abort function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/gte_shiftdi-2.c"
	.db 0x00
;cases/gte_shiftdi-2.c:8: void abort(void) {ASSERT(0);}
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
	ld	hl, #0x0008
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total abort function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/gte_shiftdi-2.c"
	.db 0x00
;cases/../gte/shiftdi-2.c:12: main (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 18 bytes.
_main_::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -18
	ld	hl, #-18
	add	hl, sp
	ld	sp, hl
;cases/../gte/shiftdi-2.c:16: for (i = 0; i < 64; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00106$:
;cases/../gte/shiftdi-2.c:18: if ((a << i) != expected_a[i]
;	genLeftShift
	ld	b, -2 (ix)
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+0)
	ld	-18 (ix), a
	ld	a, (_a+1)
	ld	-17 (ix), a
	ld	a, (_a+2)
	ld	-16 (ix), a
	ld	a, (_a+3)
	ld	-15 (ix), a
	ld	a, (_a+4)
	ld	-14 (ix), a
	ld	a, (_a+5)
	ld	-13 (ix), a
	ld	a, (_a+6)
	ld	-12 (ix), a
	ld	a, (_a+7)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00144$
00143$:
	sla	-18 (ix)
	rl	-17 (ix)
	rl	-16 (ix)
	rl	-15 (ix)
	rl	-14 (ix)
	rl	-13 (ix)
	rl	-12 (ix)
	rl	-11 (ix)
00144$:
	djnz	00143$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_expected_a
	add	hl, de
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -10 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -9 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00145$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
	jp	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;cases/../gte/shiftdi-2.c:19: || (b >> i) != expected_b[i]
;	genRightShift
	ld	b, -2 (ix)
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_b+0)
	ld	-18 (ix), a
	ld	a, (_b+1)
	ld	-17 (ix), a
	ld	a, (_b+2)
	ld	-16 (ix), a
	ld	a, (_b+3)
	ld	-15 (ix), a
	ld	a, (_b+4)
	ld	-14 (ix), a
	ld	a, (_b+5)
	ld	-13 (ix), a
	ld	a, (_b+6)
	ld	-12 (ix), a
	ld	a, (_b+7)
	ld	-11 (ix), a
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00148$
00147$:
	sra	-11 (ix)
	rr	-12 (ix)
	rr	-13 (ix)
	rr	-14 (ix)
	rr	-15 (ix)
	rr	-16 (ix)
	rr	-17 (ix)
	rr	-18 (ix)
00148$:
	djnz	00147$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_expected_b
	add	hl, de
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -10 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -9 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
	jp	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00149$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
	jp	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;cases/../gte/shiftdi-2.c:20: || (c >> i) != expected_c[i])
;	genRightShift
	ld	b, -2 (ix)
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_c+0)
	ld	-18 (ix), a
	ld	a, (_c+1)
	ld	-17 (ix), a
	ld	a, (_c+2)
	ld	-16 (ix), a
	ld	a, (_c+3)
	ld	-15 (ix), a
	ld	a, (_c+4)
	ld	-14 (ix), a
	ld	a, (_c+5)
	ld	-13 (ix), a
	ld	a, (_c+6)
	ld	-12 (ix), a
	ld	a, (_c+7)
	ld	-11 (ix), a
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00152$
00151$:
	srl	-11 (ix)
	rr	-12 (ix)
	rr	-13 (ix)
	rr	-14 (ix)
	rr	-15 (ix)
	rr	-16 (ix)
	rr	-17 (ix)
	rr	-18 (ix)
00152$:
	djnz	00151$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_expected_c
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
; common peephole 81 removed jp by using inverse jump logic
00153$:
;	skipping generated iCode
;	genLabel
00101$:
;cases/../gte/shiftdi-2.c:21: __builtin_abort ();
;	genCall
	call	___builtin_abort
;	genLabel
00107$:
;cases/../gte/shiftdi-2.c:16: for (i = 0; i < 64; i++)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00154$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x40
	jp	c, 00106$
;	skipping generated iCode
;cases/../gte/shiftdi-2.c:23: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00108$.
;cases/../gte/shiftdi-2.c:24: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total main_ function size at codegen: 17 bytes.
;cases/gte_shiftdi-2.c:11: void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
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
	ld	hl, #___str_6
;	genCall
	call	___prints
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	jp	_main_
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
;cases/gte_shiftdi-2.c:13: __code const char * __getSuiteName(void) { return "gte/shiftdi-2"; }
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
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gte/shiftdi-2"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__a:
	.byte #0x0c, #0x37, #0x6f, #0x0f, #0x08, #0xc4, #0xe3, #0x07
__xinit__b:
	.byte #0x9c, #0xe7, #0x3c, #0x1e, #0x81, #0x19, #0x88, #0xf5
__xinit__c:
	.byte #0x59, #0xdd, #0x5c, #0x46, #0x42, #0x07, #0x2d, #0x02
__xinit__expected_a:
	.byte #0x0c, #0x37, #0x6f, #0x0f, #0x08, #0xc4, #0xe3, #0x07
	.byte #0x18, #0x6e, #0xde, #0x1e, #0x10, #0x88, #0xc7, #0x0f
	.byte #0x30, #0xdc, #0xbc, #0x3d, #0x20, #0x10, #0x8f, #0x1f
	.byte #0x60, #0xb8, #0x79, #0x7b, #0x40, #0x20, #0x1e, #0x3f
	.byte #0xc0, #0x70, #0xf3, #0xf6, #0x80, #0x40, #0x3c, #0x7e
	.byte #0x80, #0xe1, #0xe6, #0xed, #0x01, #0x81, #0x78, #0xfc
	.byte #0x00, #0xc3, #0xcd, #0xdb, #0x03, #0x02, #0xf1, #0xf8
	.byte #0x00, #0x86, #0x9b, #0xb7, #0x07, #0x04, #0xe2, #0xf1
	.byte #0x00, #0x0c, #0x37, #0x6f, #0x0f, #0x08, #0xc4, #0xe3
	.byte #0x00, #0x18, #0x6e, #0xde, #0x1e, #0x10, #0x88, #0xc7
	.byte #0x00, #0x30, #0xdc, #0xbc, #0x3d, #0x20, #0x10, #0x8f
	.byte #0x00, #0x60, #0xb8, #0x79, #0x7b, #0x40, #0x20, #0x1e
	.byte #0x00, #0xc0, #0x70, #0xf3, #0xf6, #0x80, #0x40, #0x3c
	.byte #0x00, #0x80, #0xe1, #0xe6, #0xed, #0x01, #0x81, #0x78
	.byte #0x00, #0x00, #0xc3, #0xcd, #0xdb, #0x03, #0x02, #0xf1
	.byte #0x00, #0x00, #0x86, #0x9b, #0xb7, #0x07, #0x04, #0xe2
	.byte #0x00, #0x00, #0x0c, #0x37, #0x6f, #0x0f, #0x08, #0xc4
	.byte #0x00, #0x00, #0x18, #0x6e, #0xde, #0x1e, #0x10, #0x88
	.byte #0x00, #0x00, #0x30, #0xdc, #0xbc, #0x3d, #0x20, #0x10
	.byte #0x00, #0x00, #0x60, #0xb8, #0x79, #0x7b, #0x40, #0x20
	.byte #0x00, #0x00, #0xc0, #0x70, #0xf3, #0xf6, #0x80, #0x40
	.byte #0x00, #0x00, #0x80, #0xe1, #0xe6, #0xed, #0x01, #0x81
	.byte #0x00, #0x00, #0x00, #0xc3, #0xcd, #0xdb, #0x03, #0x02
	.byte #0x00, #0x00, #0x00, #0x86, #0x9b, #0xb7, #0x07, #0x04
	.byte #0x00, #0x00, #0x00, #0x0c, #0x37, #0x6f, #0x0f, #0x08
	.byte #0x00, #0x00, #0x00, #0x18, #0x6e, #0xde, #0x1e, #0x10
	.byte #0x00, #0x00, #0x00, #0x30, #0xdc, #0xbc, #0x3d, #0x20
	.byte #0x00, #0x00, #0x00, #0x60, #0xb8, #0x79, #0x7b, #0x40
	.byte #0x00, #0x00, #0x00, #0xc0, #0x70, #0xf3, #0xf6, #0x80
	.byte #0x00, #0x00, #0x00, #0x80, #0xe1, #0xe6, #0xed, #0x01
	.byte #0x00, #0x00, #0x00, #0x00, #0xc3, #0xcd, #0xdb, #0x03
	.byte #0x00, #0x00, #0x00, #0x00, #0x86, #0x9b, #0xb7, #0x07
	.byte #0x00, #0x00, #0x00, #0x00, #0x0c, #0x37, #0x6f, #0x0f
	.byte #0x00, #0x00, #0x00, #0x00, #0x18, #0x6e, #0xde, #0x1e
	.byte #0x00, #0x00, #0x00, #0x00, #0x30, #0xdc, #0xbc, #0x3d
	.byte #0x00, #0x00, #0x00, #0x00, #0x60, #0xb8, #0x79, #0x7b
	.byte #0x00, #0x00, #0x00, #0x00, #0xc0, #0x70, #0xf3, #0xf6
	.byte #0x00, #0x00, #0x00, #0x00, #0x80, #0xe1, #0xe6, #0xed
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xc3, #0xcd, #0xdb
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x86, #0x9b, #0xb7
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x0c, #0x37, #0x6f
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x18, #0x6e, #0xde
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x30, #0xdc, #0xbc
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x60, #0xb8, #0x79
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xc0, #0x70, #0xf3
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x80, #0xe1, #0xe6
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xc3, #0xcd
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x86, #0x9b
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x0c, #0x37
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x18, #0x6e
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x30, #0xdc
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x60, #0xb8
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xc0, #0x70
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x80, #0xe1
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xc3
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x86
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x0c
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x18
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x30
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x60
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xc0
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x80
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
__xinit__expected_b:
	.byte #0x9c, #0xe7, #0x3c, #0x1e, #0x81, #0x19, #0x88, #0xf5
	.byte #0xce, #0x73, #0x1e, #0x8f, #0xc0, #0x0c, #0xc4, #0xfa
	.byte #0xe7, #0x39, #0x8f, #0x47, #0x60, #0x06, #0x62, #0xfd
	.byte #0xf3, #0x9c, #0xc7, #0x23, #0x30, #0x03, #0xb1, #0xfe
	.byte #0x79, #0xce, #0xe3, #0x11, #0x98, #0x81, #0x58, #0xff
	.byte #0x3c, #0xe7, #0xf1, #0x08, #0xcc, #0x40, #0xac, #0xff
	.byte #0x9e, #0xf3, #0x78, #0x04, #0x66, #0x20, #0xd6, #0xff
	.byte #0xcf, #0x79, #0x3c, #0x02, #0x33, #0x10, #0xeb, #0xff
	.byte #0xe7, #0x3c, #0x1e, #0x81, #0x19, #0x88, #0xf5, #0xff
	.byte #0x73, #0x1e, #0x8f, #0xc0, #0x0c, #0xc4, #0xfa, #0xff
	.byte #0x39, #0x8f, #0x47, #0x60, #0x06, #0x62, #0xfd, #0xff
	.byte #0x9c, #0xc7, #0x23, #0x30, #0x03, #0xb1, #0xfe, #0xff
	.byte #0xce, #0xe3, #0x11, #0x98, #0x81, #0x58, #0xff, #0xff
	.byte #0xe7, #0xf1, #0x08, #0xcc, #0x40, #0xac, #0xff, #0xff
	.byte #0xf3, #0x78, #0x04, #0x66, #0x20, #0xd6, #0xff, #0xff
	.byte #0x79, #0x3c, #0x02, #0x33, #0x10, #0xeb, #0xff, #0xff
	.byte #0x3c, #0x1e, #0x81, #0x19, #0x88, #0xf5, #0xff, #0xff
	.byte #0x1e, #0x8f, #0xc0, #0x0c, #0xc4, #0xfa, #0xff, #0xff
	.byte #0x8f, #0x47, #0x60, #0x06, #0x62, #0xfd, #0xff, #0xff
	.byte #0xc7, #0x23, #0x30, #0x03, #0xb1, #0xfe, #0xff, #0xff
	.byte #0xe3, #0x11, #0x98, #0x81, #0x58, #0xff, #0xff, #0xff
	.byte #0xf1, #0x08, #0xcc, #0x40, #0xac, #0xff, #0xff, #0xff
	.byte #0x78, #0x04, #0x66, #0x20, #0xd6, #0xff, #0xff, #0xff
	.byte #0x3c, #0x02, #0x33, #0x10, #0xeb, #0xff, #0xff, #0xff
	.byte #0x1e, #0x81, #0x19, #0x88, #0xf5, #0xff, #0xff, #0xff
	.byte #0x8f, #0xc0, #0x0c, #0xc4, #0xfa, #0xff, #0xff, #0xff
	.byte #0x47, #0x60, #0x06, #0x62, #0xfd, #0xff, #0xff, #0xff
	.byte #0x23, #0x30, #0x03, #0xb1, #0xfe, #0xff, #0xff, #0xff
	.byte #0x11, #0x98, #0x81, #0x58, #0xff, #0xff, #0xff, #0xff
	.byte #0x08, #0xcc, #0x40, #0xac, #0xff, #0xff, #0xff, #0xff
	.byte #0x04, #0x66, #0x20, #0xd6, #0xff, #0xff, #0xff, #0xff
	.byte #0x02, #0x33, #0x10, #0xeb, #0xff, #0xff, #0xff, #0xff
	.byte #0x81, #0x19, #0x88, #0xf5, #0xff, #0xff, #0xff, #0xff
	.byte #0xc0, #0x0c, #0xc4, #0xfa, #0xff, #0xff, #0xff, #0xff
	.byte #0x60, #0x06, #0x62, #0xfd, #0xff, #0xff, #0xff, #0xff
	.byte #0x30, #0x03, #0xb1, #0xfe, #0xff, #0xff, #0xff, #0xff
	.byte #0x98, #0x81, #0x58, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xcc, #0x40, #0xac, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x66, #0x20, #0xd6, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x33, #0x10, #0xeb, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x19, #0x88, #0xf5, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x0c, #0xc4, #0xfa, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x06, #0x62, #0xfd, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x03, #0xb1, #0xfe, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x81, #0x58, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x40, #0xac, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x20, #0xd6, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x10, #0xeb, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x88, #0xf5, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xc4, #0xfa, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x62, #0xfd, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xb1, #0xfe, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x58, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xac, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xd6, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xeb, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xf5, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xfa, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xfd, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xfe, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
__xinit__expected_c:
	.byte #0x59, #0xdd, #0x5c, #0x46, #0x42, #0x07, #0x2d, #0x02
	.byte #0xac, #0x6e, #0x2e, #0x23, #0xa1, #0x83, #0x16, #0x01
	.byte #0x56, #0x37, #0x97, #0x91, #0xd0, #0x41, #0x8b, #0x00
	.byte #0xab, #0x9b, #0xcb, #0x48, #0xe8, #0xa0, #0x45, #0x00
	.byte #0xd5, #0xcd, #0x65, #0x24, #0x74, #0xd0, #0x22, #0x00
	.byte #0xea, #0xe6, #0x32, #0x12, #0x3a, #0x68, #0x11, #0x00
	.byte #0x75, #0x73, #0x19, #0x09, #0x1d, #0xb4, #0x08, #0x00
	.byte #0xba, #0xb9, #0x8c, #0x84, #0x0e, #0x5a, #0x04, #0x00
	.byte #0xdd, #0x5c, #0x46, #0x42, #0x07, #0x2d, #0x02, #0x00
	.byte #0x6e, #0x2e, #0x23, #0xa1, #0x83, #0x16, #0x01, #0x00
	.byte #0x37, #0x97, #0x91, #0xd0, #0x41, #0x8b, #0x00, #0x00
	.byte #0x9b, #0xcb, #0x48, #0xe8, #0xa0, #0x45, #0x00, #0x00
	.byte #0xcd, #0x65, #0x24, #0x74, #0xd0, #0x22, #0x00, #0x00
	.byte #0xe6, #0x32, #0x12, #0x3a, #0x68, #0x11, #0x00, #0x00
	.byte #0x73, #0x19, #0x09, #0x1d, #0xb4, #0x08, #0x00, #0x00
	.byte #0xb9, #0x8c, #0x84, #0x0e, #0x5a, #0x04, #0x00, #0x00
	.byte #0x5c, #0x46, #0x42, #0x07, #0x2d, #0x02, #0x00, #0x00
	.byte #0x2e, #0x23, #0xa1, #0x83, #0x16, #0x01, #0x00, #0x00
	.byte #0x97, #0x91, #0xd0, #0x41, #0x8b, #0x00, #0x00, #0x00
	.byte #0xcb, #0x48, #0xe8, #0xa0, #0x45, #0x00, #0x00, #0x00
	.byte #0x65, #0x24, #0x74, #0xd0, #0x22, #0x00, #0x00, #0x00
	.byte #0x32, #0x12, #0x3a, #0x68, #0x11, #0x00, #0x00, #0x00
	.byte #0x19, #0x09, #0x1d, #0xb4, #0x08, #0x00, #0x00, #0x00
	.byte #0x8c, #0x84, #0x0e, #0x5a, #0x04, #0x00, #0x00, #0x00
	.byte #0x46, #0x42, #0x07, #0x2d, #0x02, #0x00, #0x00, #0x00
	.byte #0x23, #0xa1, #0x83, #0x16, #0x01, #0x00, #0x00, #0x00
	.byte #0x91, #0xd0, #0x41, #0x8b, #0x00, #0x00, #0x00, #0x00
	.byte #0x48, #0xe8, #0xa0, #0x45, #0x00, #0x00, #0x00, #0x00
	.byte #0x24, #0x74, #0xd0, #0x22, #0x00, #0x00, #0x00, #0x00
	.byte #0x12, #0x3a, #0x68, #0x11, #0x00, #0x00, #0x00, #0x00
	.byte #0x09, #0x1d, #0xb4, #0x08, #0x00, #0x00, #0x00, #0x00
	.byte #0x84, #0x0e, #0x5a, #0x04, #0x00, #0x00, #0x00, #0x00
	.byte #0x42, #0x07, #0x2d, #0x02, #0x00, #0x00, #0x00, #0x00
	.byte #0xa1, #0x83, #0x16, #0x01, #0x00, #0x00, #0x00, #0x00
	.byte #0xd0, #0x41, #0x8b, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xe8, #0xa0, #0x45, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x74, #0xd0, #0x22, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x3a, #0x68, #0x11, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x1d, #0xb4, #0x08, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x0e, #0x5a, #0x04, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x07, #0x2d, #0x02, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x83, #0x16, #0x01, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x41, #0x8b, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xa0, #0x45, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xd0, #0x22, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x68, #0x11, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xb4, #0x08, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x5a, #0x04, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x2d, #0x02, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x16, #0x01, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x8b, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x45, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x22, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x11, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x08, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x04, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x02, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x01, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.area _CABS (ABS)
