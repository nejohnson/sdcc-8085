;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module far_arithmetic_type_unsigned_long_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMul
	.globl _testShift
	.globl _testSub
	.globl _testAdd
	.globl _testXor
	.globl _testOr
	.globl _testAnd
	.globl ___prints
	.globl ___fail
	.globl _ii
	.globl _j
	.globl _i
	.globl _farmemblock
	.globl ___numCases
	.globl _ci
	.globl _dummy
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_farmemblock::
	.ds 2
_i::
	.ds 8
_j::
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ii::
	.ds 8
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:28: void testAnd (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAnd
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testAnd::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:30: i = ii & RIGHT;
;	genAnd
	ld	a, (_ii+0)
	and	a, #0x03
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+0), a
;	genMove_o size 7 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:31: j = ci & RIGHT;
;	genAnd
	ld	a, (_ci+0)
	and	a, #0x03
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_j+0), a
;	genMove_o size 7 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:32: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:33: ASSERT (i == (ii & RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAnd
	ld	a, (_ii+0)
	and	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00133$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0021
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
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:34: ASSERT (j == (ci & RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAnd
	ld	a, (_ci+0)
	and	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:35: j = RIGHT;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x03
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:36: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:37: i = ii & j;
;	genAnd
	ld	a, (_ii+0)
	ld	iy, #_j
	and	a, 0 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+0), a
	ld	a, (_ii+1)
	and	a, 1 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+1), a
	ld	a, (_ii+2)
	and	a, 2 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+2), a
	ld	a, (_ii+3)
	and	a, 3 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+3), a
	ld	a, (_ii+4)
	and	a, 4 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+4), a
	ld	a, (_ii+5)
	and	a, 5 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+5), a
	ld	a, (_ii+6)
	and	a, 6 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+6), a
	ld	a, (_ii+7)
	and	a, 7 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:38: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:39: ASSERT (i == (ii & RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAnd
	ld	a, (_ii+0)
	and	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00135$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0027
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
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:40: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testAnd function size at codegen: 5 bytes.
_ci:
	.byte #0x5a, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "i == (ii & RIGHT)"
	.db 0x00
___str_2:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_3:
	.ascii "j == (ci & RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:42: void testOr (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testOr
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testOr::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:44: i = ii | RIGHT;
;	genOr
	ld	a, (_ii+0)
	or	a, #0x03
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+0), a
;	genMove_o size 7 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+1)
	ld	(_i+1), a
	ld	a, (_ii+2)
	ld	(_i+2), a
	ld	a, (_ii+3)
	ld	(_i+3), a
	ld	a, (_ii+4)
	ld	(_i+4), a
	ld	a, (_ii+5)
	ld	(_i+5), a
	ld	a, (_ii+6)
	ld	(_i+6), a
	ld	a, (_ii+7)
	ld	(_i+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:45: j = ci | RIGHT;
;	genOr
	ld	a, (_ci+0)
	or	a, #0x03
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_j+0), a
;	genMove_o size 7 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ci+1)
	ld	(_j+1), a
	ld	a, (_ci+2)
	ld	(_j+2), a
	ld	a, (_ci+3)
	ld	(_j+3), a
	ld	a, (_ci+4)
	ld	(_j+4), a
	ld	a, (_ci+5)
	ld	(_j+5), a
	ld	a, (_ci+6)
	ld	(_j+6), a
	ld	a, (_ci+7)
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:46: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:47: ASSERT (i == (ii | RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genOr
	ld	a, (_ii+0)
	or	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+1)
	ld	-7 (ix), a
	ld	a, (_ii+2)
	ld	-6 (ix), a
	ld	a, (_ii+3)
	ld	-5 (ix), a
	ld	a, (_ii+4)
	ld	-4 (ix), a
	ld	a, (_ii+5)
	ld	-3 (ix), a
	ld	a, (_ii+6)
	ld	-2 (ix), a
	ld	a, (_ii+7)
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00133$:
;	skipping generated iCode
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
	ld	hl, #___str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:48: ASSERT (j == (ci | RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genOr
	ld	a, (_ci+0)
	or	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ci+1)
	ld	-7 (ix), a
	ld	a, (_ci+2)
	ld	-6 (ix), a
	ld	a, (_ci+3)
	ld	-5 (ix), a
	ld	a, (_ci+4)
	ld	-4 (ix), a
	ld	a, (_ci+5)
	ld	-3 (ix), a
	ld	a, (_ci+6)
	ld	-2 (ix), a
	ld	a, (_ci+7)
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0030
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:49: j = RIGHT;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x03
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:50: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:51: i = ii | j;
;	genOr
	ld	a, (_ii+0)
	ld	iy, #_j
	or	a, 0 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+0), a
	ld	a, (_ii+1)
	or	a, 1 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+1), a
	ld	a, (_ii+2)
	or	a, 2 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+2), a
	ld	a, (_ii+3)
	or	a, 3 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+3), a
	ld	a, (_ii+4)
	or	a, 4 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+4), a
	ld	a, (_ii+5)
	or	a, 5 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+5), a
	ld	a, (_ii+6)
	or	a, 6 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+6), a
	ld	a, (_ii+7)
	or	a, 7 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:52: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:53: ASSERT (i == (ii | RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genOr
	ld	a, (_ii+0)
	or	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+1)
	ld	-7 (ix), a
	ld	a, (_ii+2)
	ld	-6 (ix), a
	ld	a, (_ii+3)
	ld	-5 (ix), a
	ld	a, (_ii+4)
	ld	-4 (ix), a
	ld	a, (_ii+5)
	ld	-3 (ix), a
	ld	a, (_ii+6)
	ld	-2 (ix), a
	ld	a, (_ii+7)
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00135$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0035
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:54: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testOr function size at codegen: 5 bytes.
___str_4:
	.ascii "Assertion failed"
	.db 0x00
___str_5:
	.ascii "i == (ii | RIGHT)"
	.db 0x00
___str_6:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_7:
	.ascii "j == (ci | RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:56: void testXor (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testXor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testXor::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:58: i = ii ^ RIGHT;
;	genXor
	ld	a, (_ii+0)
	xor	a, #0x03
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+0), a
;	genMove_o size 7 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+1)
	ld	(_i+1), a
	ld	a, (_ii+2)
	ld	(_i+2), a
	ld	a, (_ii+3)
	ld	(_i+3), a
	ld	a, (_ii+4)
	ld	(_i+4), a
	ld	a, (_ii+5)
	ld	(_i+5), a
	ld	a, (_ii+6)
	ld	(_i+6), a
	ld	a, (_ii+7)
	ld	(_i+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:59: j = ci ^ RIGHT;
;	genXor
	ld	a, (_ci+0)
	xor	a, #0x03
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_j+0), a
;	genMove_o size 7 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ci+1)
	ld	(_j+1), a
	ld	a, (_ci+2)
	ld	(_j+2), a
	ld	a, (_ci+3)
	ld	(_j+3), a
	ld	a, (_ci+4)
	ld	(_j+4), a
	ld	a, (_ci+5)
	ld	(_j+5), a
	ld	a, (_ci+6)
	ld	(_j+6), a
	ld	a, (_ci+7)
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:60: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:61: ASSERT (i == ii ^ RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	ld	iy, #_ii
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, 4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, 5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, 6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, 7 (iy)
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
; common peephole 169xnz used double assignment in case of nz condition.
00133$:
	xor	a, a
00134$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
	xor	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00136$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:62: ASSERT (j == ci ^ RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
	ld	iy, #_ci
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 4)
	sub	a, 4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 5)
	sub	a, 5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 6)
	sub	a, 6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 7)
	sub	a, 7 (iy)
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00138$
; common peephole 169xnz used double assignment in case of nz condition.
00137$:
	xor	a, a
00138$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genXor
	xor	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00139$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00140$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:63: j = RIGHT;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x03
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:64: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:65: i = ii ^ j;
;	genXor
	ld	a, (_ii+0)
	ld	iy, #_j
	xor	a, 0 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+0), a
	ld	a, (_ii+1)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+1), a
	ld	a, (_ii+2)
	xor	a, 2 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+2), a
	ld	a, (_ii+3)
	xor	a, 3 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+3), a
	ld	a, (_ii+4)
	xor	a, 4 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+4), a
	ld	a, (_ii+5)
	xor	a, 5 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+5), a
	ld	a, (_ii+6)
	xor	a, 6 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+6), a
	ld	a, (_ii+7)
	xor	a, 7 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:66: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:67: ASSERT (i == (ii ^ RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genXor
	ld	a, (_ii+0)
	xor	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+1)
	ld	-7 (ix), a
	ld	a, (_ii+2)
	ld	-6 (ix), a
	ld	a, (_ii+3)
	ld	-5 (ix), a
	ld	a, (_ii+4)
	ld	-4 (ix), a
	ld	a, (_ii+5)
	ld	-3 (ix), a
	ld	a, (_ii+6)
	ld	-2 (ix), a
	ld	a, (_ii+7)
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00141$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00141$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0043
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:68: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testXor function size at codegen: 11 bytes.
___str_8:
	.ascii "Assertion failed"
	.db 0x00
___str_9:
	.ascii "i == ii ^ RIGHT"
	.db 0x00
___str_10:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_11:
	.ascii "j == ci ^ RIGHT"
	.db 0x00
___str_12:
	.ascii "i == (ii ^ RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:70: void testAdd (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAdd
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testAdd::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:72: i = ii + RIGHT;
;	genPlus
;	Shift into pair
	ld	hl, #_i
	ld	a, (_ii+0)
	add	a, #0x03
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+1)
	inc	hl
	ld	a, (_ii+1)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+2)
	inc	hl
	ld	a, (_ii+2)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+3)
	inc	hl
	ld	a, (_ii+3)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+4)
	inc	hl
	ld	a, (_ii+4)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+5)
	inc	hl
	ld	a, (_ii+5)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+6)
	inc	hl
	ld	a, (_ii+6)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ii+7)
	inc	hl
	ld	a, (_ii+7)
	adc	a, #0x00
	ld	(hl), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:73: j = ci + RIGHT;
;	genPlus
;	Shift into pair
	ld	hl, #_j
	ld	a, (_ci+0)
	add	a, #0x03
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+1)
	inc	hl
	ld	a, (_ci+1)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+2)
	inc	hl
	ld	a, (_ci+2)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+3)
	inc	hl
	ld	a, (_ci+3)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+4)
	inc	hl
	ld	a, (_ci+4)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+5)
	inc	hl
	ld	a, (_ci+5)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+6)
	inc	hl
	ld	a, (_ci+6)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_ci+7)
	inc	hl
	ld	a, (_ci+7)
	adc	a, #0x00
	ld	(hl), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:74: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:75: ASSERT (i == ii + RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPlus
	ld	a, (_ii+0)
	add	a, #0x03
	ld	-8 (ix), a
	ld	a, (_ii+1)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, (_ii+2)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, (_ii+3)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, (_ii+4)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, (_ii+5)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, (_ii+6)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, (_ii+7)
	adc	a, #0x00
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00133$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:76: ASSERT (j == ci + RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPlus
	ld	a, (_ci+0)
	add	a, #0x03
	ld	-8 (ix), a
	ld	a, (_ci+1)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, (_ci+2)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, (_ci+3)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, (_ci+4)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, (_ci+5)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, (_ci+6)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, (_ci+7)
	adc	a, #0x00
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:77: j = RIGHT;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x03
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:78: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:79: i = ii + j;
;	genPlus
;	Shift into pair
	ld	hl, #_j
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_i
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_ii+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_ii+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+3)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+4)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+4)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+5)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+5)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+6)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+6)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+7)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+7)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:80: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:81: ASSERT (i == (ii + RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPlus
	ld	a, (_ii+0)
	add	a, #0x03
	ld	-8 (ix), a
	ld	a, (_ii+1)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, (_ii+2)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, (_ii+3)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, (_ii+4)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, (_ii+5)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, (_ii+6)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, (_ii+7)
	adc	a, #0x00
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00135$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0051
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:82: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testAdd function size at codegen: 5 bytes.
___str_13:
	.ascii "Assertion failed"
	.db 0x00
___str_14:
	.ascii "i == ii + RIGHT"
	.db 0x00
___str_15:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_16:
	.ascii "j == ci + RIGHT"
	.db 0x00
___str_17:
	.ascii "i == (ii + RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:84: void testSub (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSub
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testSub::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:87: i = ii - RIGHT;
;	genMinus
;	Shift into pair
	ld	hl, #_i
	ld	a, (_ii+0)
	add	a, #0xfd
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+1)
	inc	hl
	ld	a, (_ii+1)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+2)
	inc	hl
	ld	a, (_ii+2)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+3)
	inc	hl
	ld	a, (_ii+3)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+4)
	inc	hl
	ld	a, (_ii+4)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+5)
	inc	hl
	ld	a, (_ii+5)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+6)
	inc	hl
	ld	a, (_ii+6)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ii+7)
	inc	hl
	ld	a, (_ii+7)
	adc	a, #0xff
	ld	(hl), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:88: j = ci - RIGHT;
;	genMinus
;	Shift into pair
	ld	hl, #_j
	ld	a, (_ci+0)
	add	a, #0xfd
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+1)
	inc	hl
	ld	a, (_ci+1)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+2)
	inc	hl
	ld	a, (_ci+2)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+3)
	inc	hl
	ld	a, (_ci+3)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+4)
	inc	hl
	ld	a, (_ci+4)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+5)
	inc	hl
	ld	a, (_ci+5)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+6)
	inc	hl
	ld	a, (_ci+6)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_ci+7)
	inc	hl
	ld	a, (_ci+7)
	adc	a, #0xff
	ld	(hl), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:89: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:90: ASSERT (i == ii - RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genMinus
	ld	a, (_ii+0)
	add	a, #0xfd
	ld	-8 (ix), a
	ld	a, (_ii+1)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	a, (_ii+2)
	adc	a, #0xff
	ld	-6 (ix), a
	ld	a, (_ii+3)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	a, (_ii+4)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, (_ii+5)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	a, (_ii+6)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, (_ii+7)
	adc	a, #0xff
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00133$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:91: ASSERT (j == ci - RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genMinus
	ld	a, (_ci+0)
	add	a, #0xfd
	ld	-8 (ix), a
	ld	a, (_ci+1)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	a, (_ci+2)
	adc	a, #0xff
	ld	-6 (ix), a
	ld	a, (_ci+3)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	a, (_ci+4)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, (_ci+5)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	a, (_ci+6)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, (_ci+7)
	adc	a, #0xff
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:92: j = RIGHT;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x03
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:93: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:94: i = ii - j;
;	genMinus
;	Shift into pair
	ld	hl, #_j
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_i
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_ii+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_ii+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+3)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+4)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+4)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+5)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+5)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+6)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+6)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_ii+7)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_ii+7)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:95: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:96: ASSERT (i == (ii - RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genMinus
	ld	a, (_ii+0)
	add	a, #0xfd
	ld	-8 (ix), a
	ld	a, (_ii+1)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	a, (_ii+2)
	adc	a, #0xff
	ld	-6 (ix), a
	ld	a, (_ii+3)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	a, (_ii+4)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, (_ii+5)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	a, (_ii+6)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, (_ii+7)
	adc	a, #0xff
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00135$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0060
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:98: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testSub function size at codegen: 5 bytes.
___str_18:
	.ascii "Assertion failed"
	.db 0x00
___str_19:
	.ascii "i == ii - RIGHT"
	.db 0x00
___str_20:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_21:
	.ascii "j == ci - RIGHT"
	.db 0x00
___str_22:
	.ascii "i == (ii - RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:100: void testShift (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testShift
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testShift::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:103: i = ii >> RIGHT;
;	genRightShift
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+0)
	ld	(_i+0), a
	ld	a, (_ii+1)
	ld	(_i+1), a
	ld	a, (_ii+2)
	ld	(_i+2), a
	ld	a, (_ii+3)
	ld	(_i+3), a
	ld	a, (_ii+4)
	ld	(_i+4), a
	ld	a, (_ii+5)
	ld	(_i+5), a
	ld	a, (_ii+6)
	ld	(_i+6), a
	ld	a, (_ii+7)
	ld	(_i+7), a
	ld	b, #0x03
00133$:
	ld	iy, #_i
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
; common peephole 159 removed unused label 00134$.
	djnz	00133$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:104: j = ci >> RIGHT;
;	genRightShift
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ci+0)
	ld	(_j+0), a
	ld	a, (_ci+1)
	ld	(_j+1), a
	ld	a, (_ci+2)
	ld	(_j+2), a
	ld	a, (_ci+3)
	ld	(_j+3), a
	ld	a, (_ci+4)
	ld	(_j+4), a
	ld	a, (_ci+5)
	ld	(_j+5), a
	ld	a, (_ci+6)
	ld	(_j+6), a
	ld	a, (_ci+7)
	ld	(_j+7), a
	ld	b, #0x03
00135$:
	ld	iy, #_j
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
; common peephole 159 removed unused label 00136$.
	djnz	00135$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:105: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:106: ASSERT (i == ii >> RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+0)
	ld	-8 (ix), a
	ld	a, (_ii+1)
	ld	-7 (ix), a
	ld	a, (_ii+2)
	ld	-6 (ix), a
	ld	a, (_ii+3)
	ld	-5 (ix), a
	ld	a, (_ii+4)
	ld	-4 (ix), a
	ld	a, (_ii+5)
	ld	-3 (ix), a
	ld	a, (_ii+6)
	ld	-2 (ix), a
	ld	a, (_ii+7)
	ld	-1 (ix), a
	ld	b, #0x03
00137$:
	srl	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00138$.
	djnz	00137$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00139$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00139$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_24
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_23
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:107: ASSERT (j == ci >> RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ci+0)
	ld	-8 (ix), a
	ld	a, (_ci+1)
	ld	-7 (ix), a
	ld	a, (_ci+2)
	ld	-6 (ix), a
	ld	a, (_ci+3)
	ld	-5 (ix), a
	ld	a, (_ci+4)
	ld	-4 (ix), a
	ld	a, (_ci+5)
	ld	-3 (ix), a
	ld	a, (_ci+6)
	ld	-2 (ix), a
	ld	a, (_ci+7)
	ld	-1 (ix), a
	ld	b, #0x03
00140$:
	srl	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00141$.
	djnz	00140$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00142$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00142$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_23
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:108: j = RIGHT;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x03
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:109: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:110: i = ii >> j;
;	genRightShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_j + 0)
	ld	b, a
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+0)
	ld	(_i+0), a
	ld	a, (_ii+1)
	ld	(_i+1), a
	ld	a, (_ii+2)
	ld	(_i+2), a
	ld	a, (_ii+3)
	ld	(_i+3), a
	ld	a, (_ii+4)
	ld	(_i+4), a
	ld	a, (_ii+5)
	ld	(_i+5), a
	ld	a, (_ii+6)
	ld	(_i+6), a
	ld	a, (_ii+7)
	ld	(_i+7), a
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00144$
00143$:
	ld	iy, #_i
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
00144$:
	djnz	00143$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:111: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:112: ASSERT (i == (ii >> RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+0)
	ld	-8 (ix), a
	ld	a, (_ii+1)
	ld	-7 (ix), a
	ld	a, (_ii+2)
	ld	-6 (ix), a
	ld	a, (_ii+3)
	ld	-5 (ix), a
	ld	a, (_ii+4)
	ld	-4 (ix), a
	ld	a, (_ii+5)
	ld	-3 (ix), a
	ld	a, (_ii+6)
	ld	-2 (ix), a
	ld	a, (_ii+7)
	ld	-1 (ix), a
	ld	b, #0x03
00145$:
	srl	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00146$.
	djnz	00145$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 4)
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 5)
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 6)
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00147$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i + 7)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00147$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0070
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_23
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:114: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testShift function size at codegen: 5 bytes.
___str_23:
	.ascii "Assertion failed"
	.db 0x00
___str_24:
	.ascii "i == ii >> RIGHT"
	.db 0x00
___str_25:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_26:
	.ascii "j == ci >> RIGHT"
	.db 0x00
___str_27:
	.ascii "i == (ii >> RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:116: void testMul (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMul
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testMul::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:119: ASSERT (ii * RIGHT == LEFT1 * RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ii + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ii + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ii + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ii)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x03
	push	hl
;	genCall
	ld	hl, #0x0010
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	inc	a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0077
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_30
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_29
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:120: ASSERT (ci * RIGHT == LEFT2 * RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ci + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ci + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ci + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_ci)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x03
	push	hl
;	genCall
	ld	hl, #0x0010
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00124$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00124$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0078
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_30
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_31
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:122: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testMul function size at codegen: 5 bytes.
___str_28:
	.ascii "Assertion failed"
	.db 0x00
___str_29:
	.ascii "ii * RIGHT == LEFT1 * RIGHT"
	.db 0x00
___str_30:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_long_long."
	.ascii "c"
	.db 0x00
___str_31:
	.ascii "ci * RIGHT == LEFT2 * RIGHT"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:124: void dummy(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function dummy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_dummy::
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:126: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total dummy function size at codegen: 1 bytes.
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:130: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:132: __prints("Running testAnd\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:133: testAnd();
;	genCall
	call	_testAnd
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:134: __prints("Running testOr\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:135: testOr();
;	genCall
	call	_testOr
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:136: __prints("Running testXor\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_34
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:137: testXor();
;	genCall
	call	_testXor
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:138: __prints("Running testAdd\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:139: testAdd();
;	genCall
	call	_testAdd
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:140: __prints("Running testSub\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_36
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:141: testSub();
;	genCall
	call	_testSub
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:142: __prints("Running testShift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_37
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:143: testShift();
;	genCall
	call	_testShift
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:144: __prints("Running testMul\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_38
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:145: testMul();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:146: }
;	genEndFunction
	jp	_testMul
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_32:
	.ascii "Running testAnd"
	.db 0x0a
	.db 0x00
___str_33:
	.ascii "Running testOr"
	.db 0x0a
	.db 0x00
___str_34:
	.ascii "Running testXor"
	.db 0x0a
	.db 0x00
___str_35:
	.ascii "Running testAdd"
	.db 0x0a
	.db 0x00
___str_36:
	.ascii "Running testSub"
	.db 0x0a
	.db 0x00
___str_37:
	.ascii "Running testShift"
	.db 0x0a
	.db 0x00
___str_38:
	.ascii "Running testMul"
	.db 0x0a
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:151: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:153: return "far_arithmetic_type_unsigned_long_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_39
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_long_long.c:154: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0007
___str_39:
	.ascii "far_arithmetic_type_unsigned_long_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__ii:
	.byte #0x55, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.area _CABS (ABS)
