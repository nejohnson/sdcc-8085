;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module longlong_test_mul
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testLongLong
	.globl _LongLong_mul
	.globl _d
	.globl _c
	.globl _h
	.globl _g
	.globl ___prints
	.globl ___fail
	.globl _gp
	.globl _i
	.globl _y
	.globl _x
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
_x::
	.ds 8
_y::
	.ds 8
_i::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_gp::
	.ds 2
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
;cases/longlong/longlong_test_mul.c:20: long long g(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_g::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/longlong/longlong_test_mul.c:22: int y = i + 1;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_i)
	inc	bc
;cases/longlong/longlong_test_mul.c:23: return (y);
;	genCast
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), c
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	1 (iy), a
	rlca
	sbc	a, a
	ld	2 (iy), a
	ld	3 (iy), a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:24: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total g function size at codegen: 13 bytes.
;cases/longlong/longlong_test_mul.c:26: long long h(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function h
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_h::
;cases/longlong/longlong_test_mul.c:28: return (x);
;	genRet
	ld	hl, #2
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #_x
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:29: }
;	genEndFunction
	ret
;	Total h function size at codegen: 1 bytes.
;cases/longlong/longlong_test_mul.c:31: long long c(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function c
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_c::
;cases/longlong/longlong_test_mul.c:33: return (12ll);
;	genRet
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x0c
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:34: }
;	genEndFunction
	ret
;	Total c function size at codegen: 13 bytes.
;cases/longlong/longlong_test_mul.c:36: long long d(int i)
;	genLabel
;	genFunction
;	---------------------------------
; Function d
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_d::
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_mul.c:38: return (i);
;	genCast
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	1 (iy), a
	rlca
	sbc	a, a
	ld	2 (iy), a
	ld	3 (iy), a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:39: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total d function size at codegen: 13 bytes.
;cases/longlong/longlong_test_mul.c:43: static unsigned long long mulLL(unsigned long long a, unsigned long long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function mulLL
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_mulLL:
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/longlong/longlong_test_mul.c:45: return a * b;
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #20
	add	iy, sp
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #20
	add	iy, sp
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
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
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:46: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total mulLL function size at codegen: 13 bytes.
;cases/longlong/longlong_test_mul.c:49: LongLong_mul (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function LongLong_mul
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 20 bytes.
_LongLong_mul::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -20
	ld	hl, #-20
	add	hl, sp
	ld	sp, hl
;cases/longlong/longlong_test_mul.c:53: i = 42;
;	genAssign
;fetchPairLong
	ld	hl, #0x002a
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i), hl
;cases/longlong/longlong_test_mul.c:54: ASSERT (g() == 43);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x000c
	add	hl, sp
	push	hl
	call	_g
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2b
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
; common peephole 159 removed unused label 00607$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0036
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
;cases/longlong/longlong_test_mul.c:55: i = 23;
;	genAssign
;fetchPairLong
	ld	hl, #0x0017
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i), hl
;cases/longlong/longlong_test_mul.c:56: ASSERT ((*gp)() == 24);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	iy, #0x000c
	add	iy, sp
	push	iy
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, (_gp)
	call	___sdcc_call_iy
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x18
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00608$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0038
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
;cases/longlong/longlong_test_mul.c:57: ASSERT (c() == 12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x000c
	add	hl, sp
	push	hl
	call	_c
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00609$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0039
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/longlong/longlong_test_mul.c:58: x = 42;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_x
	ld	(hl), #0x2a
	xor	a, a
	ld	(_x+1), a
	ld	(_x+2), a
	ld	(_x+3), a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	(_x+7), a
;cases/longlong/longlong_test_mul.c:59: ASSERT (h() == x);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x000c
	add	hl, sp
	push	hl
	call	_h
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_x
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00610$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00610$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/longlong/longlong_test_mul.c:60: ASSERT (d(12) == 12ll);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000c
;	genCall
	push	hl
	ld	hl, #0x000e
	add	hl, sp
; common peephole 156 used ex to load hl into de.
	ex	de, hl
	pop	hl
	push	de
	call	_d
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00611$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/longlong/longlong_test_mul.c:61: ASSERT ((x >> 1) == 21);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_x+0)
	ld	-8 (ix), a
	ld	a, (_x+1)
	ld	-7 (ix), a
	ld	a, (_x+2)
	ld	-6 (ix), a
	ld	a, (_x+3)
	ld	-5 (ix), a
	ld	a, (_x+4)
	ld	-4 (ix), a
	ld	a, (_x+5)
	ld	-3 (ix), a
	ld	a, (_x+6)
	ld	-2 (ix), a
	ld	a, (_x+7)
	ld	-1 (ix), a
	sra	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x15
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00614$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/longlong/longlong_test_mul.c:62: ASSERT ((x << 1) == 84);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_x+0)
	ld	-8 (ix), a
	ld	a, (_x+1)
	ld	-7 (ix), a
	ld	a, (_x+2)
	ld	-6 (ix), a
	ld	a, (_x+3)
	ld	-5 (ix), a
	ld	a, (_x+4)
	ld	-4 (ix), a
	ld	a, (_x+5)
	ld	-3 (ix), a
	ld	a, (_x+6)
	ld	-2 (ix), a
	ld	a, (_x+7)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x54
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00617$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/longlong/longlong_test_mul.c:63: ASSERT (!(x >> 17));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_x+0)
	ld	-8 (ix), a
	ld	a, (_x+1)
	ld	-7 (ix), a
	ld	a, (_x+2)
	ld	-6 (ix), a
	ld	a, (_x+3)
	ld	-5 (ix), a
	ld	a, (_x+4)
	ld	-4 (ix), a
	ld	a, (_x+5)
	ld	-3 (ix), a
	ld	a, (_x+6)
	ld	-2 (ix), a
	ld	a, (_x+7)
	ld	-1 (ix), a
	ld	b, #0x11
00618$:
	sra	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00619$.
	djnz	00618$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/longlong/longlong_test_mul.c:64: ASSERT ((x << 17) == (42l << 17));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_x+0)
	ld	-6 (ix), a
	ld	a, (_x+1)
	ld	-5 (ix), a
	ld	a, (_x+2)
	ld	-4 (ix), a
	ld	a, (_x+3)
	ld	-3 (ix), a
	ld	a, (_x+4)
	ld	-2 (ix), a
	ld	a, (_x+5)
	ld	-1 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	sla	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00622$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x54
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
00622$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/longlong/longlong_test_mul.c:65: y = x;
;	genAssign
	ld	de, #_y
	ld	hl, #_x
	ld	bc, #8
	ldir
;cases/longlong/longlong_test_mul.c:66: ASSERT (y == 42ull);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_y)
	sub	a, #0x2a
	ld	iy, #_y
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00623$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0042
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00122$:
;cases/longlong/longlong_test_mul.c:67: ASSERT ((y >> 1) == 21);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-8 (ix), a
	ld	a, (_y+1)
	ld	-7 (ix), a
	ld	a, (_y+2)
	ld	-6 (ix), a
	ld	a, (_y+3)
	ld	-5 (ix), a
	ld	a, (_y+4)
	ld	-4 (ix), a
	ld	a, (_y+5)
	ld	-3 (ix), a
	ld	a, (_y+6)
	ld	-2 (ix), a
	ld	a, (_y+7)
	ld	-1 (ix), a
	srl	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x15
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00626$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00124$:
;cases/longlong/longlong_test_mul.c:68: ASSERT ((y << 1) == 84);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-8 (ix), a
	ld	a, (_y+1)
	ld	-7 (ix), a
	ld	a, (_y+2)
	ld	-6 (ix), a
	ld	a, (_y+3)
	ld	-5 (ix), a
	ld	a, (_y+4)
	ld	-4 (ix), a
	ld	a, (_y+5)
	ld	-3 (ix), a
	ld	a, (_y+6)
	ld	-2 (ix), a
	ld	a, (_y+7)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x54
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00629$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0044
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00126$:
;cases/longlong/longlong_test_mul.c:69: ASSERT ((y >> 17) == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+2)
	ld	-8 (ix), a
	ld	a, (_y+3)
	ld	-7 (ix), a
	ld	a, (_y+4)
	ld	-6 (ix), a
	ld	a, (_y+5)
	ld	-5 (ix), a
	ld	a, (_y+6)
	ld	-4 (ix), a
	ld	a, (_y+7)
	ld	-3 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	srl	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0045
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00128$:
;cases/longlong/longlong_test_mul.c:70: ASSERT ((y << 17) == (42ul << 17));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-6 (ix), a
	ld	a, (_y+1)
	ld	-5 (ix), a
	ld	a, (_y+2)
	ld	-4 (ix), a
	ld	a, (_y+3)
	ld	-3 (ix), a
	ld	a, (_y+4)
	ld	-2 (ix), a
	ld	a, (_y+5)
	ld	-1 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	sla	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00634$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x54
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
00634$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0046
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00130$:
;cases/longlong/longlong_test_mul.c:71: ASSERT ((y << 16) == (42ul << 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-6 (ix), a
	ld	a, (_y+1)
	ld	-5 (ix), a
	ld	a, (_y+2)
	ld	-4 (ix), a
	ld	a, (_y+3)
	ld	-3 (ix), a
	ld	a, (_y+4)
	ld	-2 (ix), a
	ld	a, (_y+5)
	ld	-1 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00637$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2a
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00132$
; common peephole 81 removed jp by using inverse jump logic
00637$:
;	skipping generated iCode
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00132$:
;cases/longlong/longlong_test_mul.c:73: tmp = 0xaaffaafful;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xaa
	ld	-10 (ix), #0xff
	ld	-9 (ix), #0xaa
;cases/longlong/longlong_test_mul.c:74: y = tmp;
;	genCast
;	genMove_o size 4 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	(_y+0), a
	ld	a, -11 (ix)
	ld	(_y+1), a
	ld	a, -10 (ix)
	ld	(_y+2), a
	ld	a, -9 (ix)
	ld	(_y+3), a
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:75: ASSERT (c() == 12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x000c
	add	hl, sp
	push	hl
	call	_c
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00638$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00134$:
;cases/longlong/longlong_test_mul.c:76: ASSERT ((unsigned char)y == (unsigned char)tmp);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y)
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00136$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00639$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00136$:
;cases/longlong/longlong_test_mul.c:77: ASSERT ((unsigned int)y == (unsigned int)tmp);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y)
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
	ld	b, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00138$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00640$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00138$:
;cases/longlong/longlong_test_mul.c:78: ASSERT ((unsigned long)y == (unsigned long)tmp);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_y)
	ld	de, (_y + 2)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00641$
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00140$
; common peephole 81 removed jp by using inverse jump logic
00641$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00140$:
;cases/longlong/longlong_test_mul.c:79: ASSERT (y == tmp);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y)
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 1)
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 2)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 3)
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 4)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 5)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 6)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00642$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y + 7)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00142$
; common peephole 81 removed jp by using inverse jump logic
00642$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_20
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00142$:
;cases/longlong/longlong_test_mul.c:80: ASSERT ((y >> 8) == (tmp >>= 8));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 7 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+1)
	ld	-20 (ix), a
	ld	a, (_y+2)
	ld	-19 (ix), a
	ld	a, (_y+3)
	ld	-18 (ix), a
	ld	a, (_y+4)
	ld	-17 (ix), a
	ld	a, (_y+5)
	ld	-16 (ix), a
	ld	a, (_y+6)
	ld	-15 (ix), a
	ld	a, (_y+7)
	ld	-14 (ix), a
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), #0x00
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	e, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), c
	ld	-11 (ix), b
	ld	-10 (ix), e
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), c
	ld	-7 (ix), b
	ld	-6 (ix), e
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00647$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00144$
; common peephole 81 removed jp by using inverse jump logic
00647$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0050
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00144$:
;cases/longlong/longlong_test_mul.c:81: ASSERT ((y >> 12) == (tmp >>= 4));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 7 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+1)
	ld	-20 (ix), a
	ld	a, (_y+2)
	ld	-19 (ix), a
	ld	a, (_y+3)
	ld	-18 (ix), a
	ld	a, (_y+4)
	ld	-17 (ix), a
	ld	a, (_y+5)
	ld	-16 (ix), a
	ld	a, (_y+6)
	ld	-15 (ix), a
	ld	a, (_y+7)
	ld	-14 (ix), a
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), #0x00
	ld	b, #0x04
00648$:
	srl	-14 (ix)
	rr	-15 (ix)
	rr	-16 (ix)
	rr	-17 (ix)
	rr	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
; common peephole 159 removed unused label 00649$.
	djnz	00648$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	c, -11 (ix)
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x04
00650$:
	srl	d
	rr	e
	rr	c
	rr	a
; common peephole 159 removed unused label 00651$.
	djnz	00650$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
	ld	-11 (ix), c
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
	ld	-7 (ix), c
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00652$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00146$
; common peephole 81 removed jp by using inverse jump logic
00652$:
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00146$:
;cases/longlong/longlong_test_mul.c:82: ASSERT ((y >> 16) == (tmp >>= 4));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+2)
	ld	-20 (ix), a
	ld	a, (_y+3)
	ld	-19 (ix), a
	ld	a, (_y+4)
	ld	-18 (ix), a
	ld	a, (_y+5)
	ld	-17 (ix), a
	ld	a, (_y+6)
	ld	-16 (ix), a
	ld	a, (_y+7)
	ld	-15 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	c, -11 (ix)
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x04
00655$:
	srl	d
	rr	e
	rr	c
	rr	a
; common peephole 159 removed unused label 00656$.
	djnz	00655$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
	ld	-11 (ix), c
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
	ld	-7 (ix), c
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00657$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00148$
; common peephole 81 removed jp by using inverse jump logic
00657$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0052
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00148$:
;cases/longlong/longlong_test_mul.c:83: ASSERT ((y >> 24) == (tmp >>= 8));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 5 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+3)
	ld	-20 (ix), a
	ld	a, (_y+4)
	ld	-19 (ix), a
	ld	a, (_y+5)
	ld	-18 (ix), a
	ld	a, (_y+6)
	ld	-17 (ix), a
	ld	a, (_y+7)
	ld	-16 (ix), a
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-15 (ix), a
	ld	-14 (ix), a
	ld	-13 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
;	genMove_o size 3 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	e, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), c
	ld	-11 (ix), b
	ld	-10 (ix), e
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), c
	ld	-7 (ix), b
	ld	-6 (ix), e
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00662$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00150$
; common peephole 81 removed jp by using inverse jump logic
00662$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0053
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_24
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00150$:
;cases/longlong/longlong_test_mul.c:84: ASSERT ((y >> 32) == 0x0ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 4 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+4)
	ld	-8 (ix), a
	ld	a, (_y+5)
	ld	-7 (ix), a
	ld	a, (_y+6)
	ld	-6 (ix), a
	ld	a, (_y+7)
	ld	-5 (ix), a
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00152$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0054
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00152$:
;cases/longlong/longlong_test_mul.c:86: tmp = 1;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0x01
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
;cases/longlong/longlong_test_mul.c:87: y = tmp;
;	genCast
;	genMove_o size 4 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	(_y+0), a
	ld	a, -11 (ix)
	ld	(_y+1), a
	ld	a, -10 (ix)
	ld	(_y+2), a
	ld	a, -9 (ix)
	ld	(_y+3), a
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:88: ASSERT (c() == 12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x000c
	add	hl, sp
	push	hl
	call	_c
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00154$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00665$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00154$:
;cases/longlong/longlong_test_mul.c:89: ASSERT ((y << 1) == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-8 (ix), a
	ld	a, (_y+1)
	ld	-7 (ix), a
	ld	a, (_y+2)
	ld	-6 (ix), a
	ld	a, (_y+3)
	ld	-5 (ix), a
	ld	a, (_y+4)
	ld	-4 (ix), a
	ld	a, (_y+5)
	ld	-3 (ix), a
	ld	a, (_y+6)
	ld	-2 (ix), a
	ld	a, (_y+7)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00156$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00668$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0059
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00156$:
;cases/longlong/longlong_test_mul.c:90: ASSERT ((y << 16) == (tmp << 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-18 (ix), a
	ld	a, (_y+1)
	ld	-17 (ix), a
	ld	a, (_y+2)
	ld	-16 (ix), a
	ld	a, (_y+3)
	ld	-15 (ix), a
	ld	a, (_y+4)
	ld	-14 (ix), a
	ld	a, (_y+5)
	ld	-13 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-20 (ix), a
	ld	-19 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
	ld	-7 (ix), c
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00673$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00158$
; common peephole 81 removed jp by using inverse jump logic
00673$:
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00158$:
;cases/longlong/longlong_test_mul.c:91: ASSERT ((y << 23) == (tmp << 23));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 6 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_y+0)
	ld	-18 (ix), a
	ld	a, (_y+1)
	ld	-17 (ix), a
	ld	a, (_y+2)
	ld	-16 (ix), a
	ld	a, (_y+3)
	ld	-15 (ix), a
	ld	a, (_y+4)
	ld	-14 (ix), a
	ld	a, (_y+5)
	ld	-13 (ix), a
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-20 (ix), a
	ld	-19 (ix), a
	ld	b, #0x07
00674$:
	sla	-18 (ix)
	rl	-17 (ix)
	rl	-16 (ix)
	rl	-15 (ix)
	rl	-14 (ix)
	rl	-13 (ix)
; common peephole 159 removed unused label 00675$.
	djnz	00674$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
	ld	b, #0x07
00676$:
	add	hl, hl
; common peephole 159 removed unused label 00677$.
	djnz	00676$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
	ld	-7 (ix), c
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00678$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00160$
; common peephole 81 removed jp by using inverse jump logic
00678$:
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00160$:
;cases/longlong/longlong_test_mul.c:92: y += 2;
;	genPlus
;	Shift into pair
	ld	hl, #_y
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00679$
	inc	hl
	inc	(hl)
00679$:
;cases/longlong/longlong_test_mul.c:93: y <<= 31;
;	genLeftShift
	ld	b, #0x1f
00680$:
	ld	iy, #_y
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
; common peephole 159 removed unused label 00681$.
	djnz	00680$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_mul.c:94: ASSERT (c() == 12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x000c
	add	hl, sp
	push	hl
	call	_c
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00162$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00682$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00162$:
;cases/longlong/longlong_test_mul.c:95: y >>= 31;
;	genRightShift
	ld	b, #0x1f
00683$:
	ld	iy, #_y
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
; common peephole 159 removed unused label 00684$.
	djnz	00683$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_mul.c:96: ASSERT (y == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_y+0)
	sub	a, #0x03
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00164$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00685$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_29
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00164$:
;cases/longlong/longlong_test_mul.c:98: tmp = 23;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0x17
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
;cases/longlong/longlong_test_mul.c:99: y = 42;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_y
	ld	(hl), #0x2a
	xor	a, a
	ld	(_y+1), a
	ld	(_y+2), a
	ld	(_y+3), a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:100: ASSERT (y + tmp == 42 + 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x002a
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, #0x00
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, #0x00
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, #0x00
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x41
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00166$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00686$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0064
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_30
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00166$:
;cases/longlong/longlong_test_mul.c:101: ASSERT (y - tmp == 42 - 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genMinus
	ld	a, (_y+0)
	sub	a, -8 (ix)
	ld	-8 (ix), a
	ld	a, (_y+1)
	sbc	a, -7 (ix)
	ld	-7 (ix), a
	ld	a, (_y+2)
	sbc	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, (_y+3)
	sbc	a, -5 (ix)
	ld	-5 (ix), a
	ld	a, (_y+4)
	sbc	a, -4 (ix)
	ld	-4 (ix), a
	ld	a, (_y+5)
	sbc	a, -3 (ix)
	ld	-3 (ix), a
	ld	a, (_y+6)
	sbc	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, (_y+7)
	sbc	a, -1 (ix)
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x13
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00168$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00687$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0065
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_31
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00168$:
;cases/longlong/longlong_test_mul.c:102: ASSERT (y * tmp == 42 * 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
	push	hl
; common peephole 94d pushed register pair twice.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y)
	push	hl
;	genCall
	ld	hl, #0x001c
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
	sub	a, #0xc6
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00688$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00170$
; common peephole 81 removed jp by using inverse jump logic
00688$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0066
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_32
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00170$:
;cases/longlong/longlong_test_mul.c:103: ASSERT (y / tmp == 42 / 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
	push	hl
; common peephole 94d pushed register pair twice.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y)
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	__divulonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00172$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00689$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0067
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_33
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00172$:
;cases/longlong/longlong_test_mul.c:104: ASSERT (y % tmp == 42 % 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
	push	hl
; common peephole 94d pushed register pair twice.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y)
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	__modulonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x13
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00174$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00690$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0068
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_34
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00174$:
;cases/longlong/longlong_test_mul.c:106: tmp = 42;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0x2a
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
;cases/longlong/longlong_test_mul.c:107: x = 42ll << 23;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_x+0), a
	ld	(_x+1), a
	ld	(_x+2), a
; common peephole 56 used hl instead of iy.
	ld	hl, #_x + 3
	ld	(hl), #0x15
	xor	a, a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	(_x+7), a
;cases/longlong/longlong_test_mul.c:108: ASSERT (x + y == (42ll << 23) + 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPlus
	ld	a, (_y+0)
	ld	-8 (ix), a
	ld	a, (_y+1)
	ld	-7 (ix), a
	ld	a, (_y+2)
	ld	-6 (ix), a
	ld	a, (_y+3)
	add	a, #0x15
	ld	-5 (ix), a
	ld	a, (_y+4)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, (_y+5)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, (_y+6)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, (_y+7)
	adc	a, #0x00
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2a
	or	a, -7 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00691$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x15
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00176$
; common peephole 81 removed jp by using inverse jump logic
00691$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_35
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00176$:
;cases/longlong/longlong_test_mul.c:109: ASSERT (x - y == (42ll << 23) - 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
	ld	hl, #12
	add	hl, sp
	ex	de, hl
	ld	hl, #_x
	ld	bc, #8
	ldir
;	genMinus
;	Shift into pair
	ld	hl, #_y
	ld	a, -8 (ix)
	sub	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-6 (ix), a
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-5 (ix), a
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-4 (ix), a
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-3 (ix), a
	ld	a, -2 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-2 (ix), a
	ld	a, -1 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-1 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xd6
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00692$
	ld	a, -7 (ix)
	and	a, -6 (ix)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00692$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x14
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00178$
; common peephole 81 removed jp by using inverse jump logic
00692$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_36
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00178$:
;cases/longlong/longlong_test_mul.c:110: ASSERT (x * y == (42ll << 23) * 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
	ld	hl, #12
	add	hl, sp
	ex	de, hl
	ld	hl, #_x
	ld	bc, #8
	ldir
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00693$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x72
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00693$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00180$
; common peephole 81 removed jp by using inverse jump logic
00693$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_37
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00180$:
;cases/longlong/longlong_test_mul.c:111: ASSERT (x / tmp == (42ll << 23) / 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
	push	hl
; common peephole 94d pushed register pair twice.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x)
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	__divslonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00694$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00182$
; common peephole 81 removed jp by using inverse jump logic
00694$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_38
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00182$:
;cases/longlong/longlong_test_mul.c:112: ASSERT (x % tmp == (42ll << 23) % 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
	push	hl
; common peephole 94d pushed register pair twice.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_x)
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	__modslonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00184$
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_39
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00184$:
;cases/longlong/longlong_test_mul.c:114: x = 0x1122334455667788ll;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_x
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0x55
	ld	4 (iy), #0x44
	ld	5 (iy), #0x33
	ld	6 (iy), #0x22
	ld	7 (iy), #0x11
;cases/longlong/longlong_test_mul.c:115: y = 0x9988776655443322ull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x22
	ld	1 (iy), #0x33
	ld	2 (iy), #0x44
	ld	3 (iy), #0x55
	ld	4 (iy), #0x66
	ld	5 (iy), #0x77
	ld	6 (iy), #0x88
	ld	7 (iy), #0x99
;cases/longlong/longlong_test_mul.c:116: ASSERT (y + x == 0x9988776655443322ull + 0x1122334455667788ll);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:117: ASSERT (y - x == 0x9988776655443322ull - 0x1122334455667788ll);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:119: ASSERT (mulLL (1ull, 1ull) == 1ull * 1ull);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x01
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00190$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00695$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_42
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00190$:
;cases/longlong/longlong_test_mul.c:121: y = 0x55667788ull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0x55
	xor	a, a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:122: ASSERT (y * y == 0x55667788ull * 0x55667788ull); // this test is optimized by constant propagation
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:123: ASSERT (mulLL (y, y) == 0x55667788ull * 0x55667788ull); // this test is not
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xb8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xc8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x63
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x34
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x7d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00696$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00194$
; common peephole 81 removed jp by using inverse jump logic
00696$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x007b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_44
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00194$:
;cases/longlong/longlong_test_mul.c:124: y = 0x55667788ull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0x55
	xor	a, a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:125: x = 0x55667788ll;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_x
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0x55
	xor	a, a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	(_x+7), a
;cases/longlong/longlong_test_mul.c:126: ASSERT (y * x == 0x55667788ull * 0x55667788ll); // this test is optimized by constant propagation
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:127: ASSERT (mulLL (y, x) == 0x55667788ull * 0x55667788ll); // this test is not
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xb8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xc8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x63
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x34
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x7d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00697$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00198$
; common peephole 81 removed jp by using inverse jump logic
00697$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x007f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_46
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00198$:
;cases/longlong/longlong_test_mul.c:129: y = 0xa5667788ull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0xa5
	xor	a, a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:130: ASSERT (y * y == 0xa5667788ull * 0xa5667788ull); // this test is optimized by constant propagation
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:131: ASSERT (mulLL (y, y) == 0xa5667788ull * 0xa5667788ull); // this test is not
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xa566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xa566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xb8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xc8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x3f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xdd
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00698$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x6a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00202$
; common peephole 81 removed jp by using inverse jump logic
00698$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0083
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_48
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00202$:
;cases/longlong/longlong_test_mul.c:132: y = 0xa5667788ull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0xa5
	xor	a, a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:133: x = 0xa5667788ll;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_x
	ld	0 (iy), #0x88
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0xa5
	xor	a, a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	(_x+7), a
;cases/longlong/longlong_test_mul.c:134: ASSERT (y * x == 0xa5667788ull * 0xa5667788ll); // this test is optimized by constant propagation
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:135: ASSERT (mulLL (y, x) == 0xa5667788ull * 0xa5667788ull); // this test is not
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xa566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xa566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xb8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xc8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x3f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xdd
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00699$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x6a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00206$
; common peephole 81 removed jp by using inverse jump logic
00699$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0087
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_50
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00206$:
;cases/longlong/longlong_test_mul.c:137: y = 0xa5667788ccddull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0xdd
	ld	1 (iy), #0xcc
	ld	2 (iy), #0x88
	ld	3 (iy), #0x77
	ld	4 (iy), #0x66
	ld	5 (iy), #0xa5
	xor	a, a
	ld	(_y+6), a
	ld	(_y+7), a
;cases/longlong/longlong_test_mul.c:138: x = 0x0788ll;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_x
	ld	0 (iy), #0x88
	ld	1 (iy), #0x07
	xor	a, a
	ld	(_x+2), a
	ld	(_x+3), a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	(_x+7), a
;cases/longlong/longlong_test_mul.c:139: ASSERT (y * x == 0xa5667788ccddull * 0x0788ll); // this test is optimized by constant propagation
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:140: ASSERT (mulLL (y, x) == 0xa5667788ccddull * 0x0788ll); // this test is not
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0788
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xa566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7788
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xccdd
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x68
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xe0
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x46
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x3e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xb4
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xab
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xdd
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00700$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00210$
; common peephole 81 removed jp by using inverse jump logic
00700$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_52
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00210$:
;cases/longlong/longlong_test_mul.c:142: y = 0x1122334455667700ull;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x00
	ld	1 (iy), #0x77
	ld	2 (iy), #0x66
	ld	3 (iy), #0x55
	ld	4 (iy), #0x44
	ld	5 (iy), #0x33
	ld	6 (iy), #0x22
	ld	7 (iy), #0x11
;cases/longlong/longlong_test_mul.c:143: x = 0x2ll;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_x
	ld	(hl), #0x02
	xor	a, a
	ld	(_x+1), a
	ld	(_x+2), a
	ld	(_x+3), a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	(_x+7), a
;cases/longlong/longlong_test_mul.c:144: ASSERT (y * x == 0x1122334455667700ull * 0x2ll); // this test is optimized by constant propagation
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/longlong/longlong_test_mul.c:145: ASSERT (mulLL (y, x) == 0x1122334455667700ull * 0x2ll); // this test is not
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x02
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x1122
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x3344
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5566
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7700
	push	hl
;	genCall
	ld	hl, #0x001c
	add	hl, sp
	push	hl
	call	_mulLL
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xee
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xcc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x88
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x66
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x44
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00701$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x22
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00701$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0091
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_54
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;cases/longlong/longlong_test_mul.c:147: c(); // Unused long long return value requires special handling in register allocation.
;	genLabel
00101$:
;cases/longlong/longlong_test_mul.c:148: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total LongLong_mul function size at codegen: 28 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "g() == 43"
	.db 0x00
___str_2:
	.ascii "cases/longlong/longlong_test_mul.c"
	.db 0x00
___str_3:
	.ascii "(*gp)() == 24"
	.db 0x00
___str_4:
	.ascii "c() == 12"
	.db 0x00
___str_5:
	.ascii "h() == x"
	.db 0x00
___str_6:
	.ascii "d(12) == 12ll"
	.db 0x00
___str_7:
	.ascii "(x >> 1) == 21"
	.db 0x00
___str_8:
	.ascii "(x << 1) == 84"
	.db 0x00
___str_9:
	.ascii "!(x >> 17)"
	.db 0x00
___str_10:
	.ascii "(x << 17) == (42l << 17)"
	.db 0x00
___str_11:
	.ascii "y == 42ull"
	.db 0x00
___str_12:
	.ascii "(y >> 1) == 21"
	.db 0x00
___str_13:
	.ascii "(y << 1) == 84"
	.db 0x00
___str_14:
	.ascii "(y >> 17) == 0"
	.db 0x00
___str_15:
	.ascii "(y << 17) == (42ul << 17)"
	.db 0x00
___str_16:
	.ascii "(y << 16) == (42ul << 16)"
	.db 0x00
___str_17:
	.ascii "(unsigned char)y == (unsigned char)tmp"
	.db 0x00
___str_18:
	.ascii "(unsigned int)y == (unsigned int)tmp"
	.db 0x00
___str_19:
	.ascii "(unsigned long)y == (unsigned long)tmp"
	.db 0x00
___str_20:
	.ascii "y == tmp"
	.db 0x00
___str_21:
	.ascii "(y >> 8) == (tmp >>= 8)"
	.db 0x00
___str_22:
	.ascii "(y >> 12) == (tmp >>= 4)"
	.db 0x00
___str_23:
	.ascii "(y >> 16) == (tmp >>= 4)"
	.db 0x00
___str_24:
	.ascii "(y >> 24) == (tmp >>= 8)"
	.db 0x00
___str_25:
	.ascii "(y >> 32) == 0x0ul"
	.db 0x00
___str_26:
	.ascii "(y << 1) == 2"
	.db 0x00
___str_27:
	.ascii "(y << 16) == (tmp << 16)"
	.db 0x00
___str_28:
	.ascii "(y << 23) == (tmp << 23)"
	.db 0x00
___str_29:
	.ascii "y == 3"
	.db 0x00
___str_30:
	.ascii "y + tmp == 42 + 23"
	.db 0x00
___str_31:
	.ascii "y - tmp == 42 - 23"
	.db 0x00
___str_32:
	.ascii "y * tmp == 42 * 23"
	.db 0x00
___str_33:
	.ascii "y / tmp == 42 / 23"
	.db 0x00
___str_34:
	.ascii "y % tmp == 42 % 23"
	.db 0x00
___str_35:
	.ascii "x + y == (42ll << 23) + 42"
	.db 0x00
___str_36:
	.ascii "x - y == (42ll << 23) - 42"
	.db 0x00
___str_37:
	.ascii "x * y == (42ll << 23) * 42"
	.db 0x00
___str_38:
	.ascii "x / tmp == (42ll << 23) / 42"
	.db 0x00
___str_39:
	.ascii "x % tmp == (42ll << 23) % 42"
	.db 0x00
___str_40:
	.ascii "y + x == 0x9988776655443322ull + 0x1122334455667788ll"
	.db 0x00
___str_41:
	.ascii "y - x == 0x9988776655443322ull - 0x1122334455667788ll"
	.db 0x00
___str_42:
	.ascii "mulLL (1ull, 1ull) == 1ull * 1ull"
	.db 0x00
___str_43:
	.ascii "y * y == 0x55667788ull * 0x55667788ull"
	.db 0x00
___str_44:
	.ascii "mulLL (y, y) == 0x55667788ull * 0x55667788ull"
	.db 0x00
___str_45:
	.ascii "y * x == 0x55667788ull * 0x55667788ll"
	.db 0x00
___str_46:
	.ascii "mulLL (y, x) == 0x55667788ull * 0x55667788ll"
	.db 0x00
___str_47:
	.ascii "y * y == 0xa5667788ull * 0xa5667788ull"
	.db 0x00
___str_48:
	.ascii "mulLL (y, y) == 0xa5667788ull * 0xa5667788ull"
	.db 0x00
___str_49:
	.ascii "y * x == 0xa5667788ull * 0xa5667788ll"
	.db 0x00
___str_50:
	.ascii "mulLL (y, x) == 0xa5667788ull * 0xa5667788ull"
	.db 0x00
___str_51:
	.ascii "y * x == 0xa5667788ccddull * 0x0788ll"
	.db 0x00
___str_52:
	.ascii "mulLL (y, x) == 0xa5667788ccddull * 0x0788ll"
	.db 0x00
___str_53:
	.ascii "y * x == 0x1122334455667700ull * 0x2ll"
	.db 0x00
___str_54:
	.ascii "mulLL (y, x) == 0x1122334455667700ull * 0x2ll"
	.db 0x00
;cases/longlong/longlong_test_mul.c:327: testLongLong (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testLongLong
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testLongLong::
;cases/longlong/longlong_test_mul.c:330: LongLong_mul();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:332: }
;	genEndFunction
	jp	_LongLong_mul
; common peephole 152 removed unused ret.
;	Total testLongLong function size at codegen: 1 bytes.
;cases/longlong/longlong_test_mul.c:336: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/longlong/longlong_test_mul.c:338: __prints("Running testLongLong\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_55
;	genCall
	call	___prints
;cases/longlong/longlong_test_mul.c:339: testLongLong();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:340: }
;	genEndFunction
	jp	_testLongLong
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_55:
	.ascii "Running testLongLong"
	.db 0x0a
	.db 0x00
;cases/longlong/longlong_test_mul.c:345: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/longlong/longlong_test_mul.c:347: return "longlong_test_mul";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_56
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_mul.c:348: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_56:
	.ascii "longlong_test_mul"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__gp:
	.dw _g
	.area _CABS (ABS)
