;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_960326_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl _s0
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
_testTortureExecute_s3_10000_13:
	.ds 15
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_s0::
	.ds 15
_s1:
	.ds 15
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
;cases/./../tests/gcc-torture-execute-960326-1.c:28: static struct s s3 = { .b = 3, .d = {2} };
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0003
	ld	((_testTortureExecute_s3_10000_13 + 1)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x02
	ld	((_testTortureExecute_s3_10000_13 + 5)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, h
	ld	((_testTortureExecute_s3_10000_13 + 7)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_testTortureExecute_s3_10000_13 + 9)), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-960326-1.c:24: testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-960326-1.c:27: struct s s2 = { .b = 3, .d = {2} };
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), #0x03
	ld	-13 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), #0x02
	ld	-9 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
; common peephole 99b removed load by reordering.
	ld	-15 (ix), a
	ld	-12 (ix), a
	ld	-11 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;cases/./../tests/gcc-torture-execute-960326-1.c:30: ASSERT (s0.a == 0 && s0.b == 3 && s0.c == 0 && s0.d[0] == 2 && s0.d[1] == 0 && s0.d[2] == 0 && s0.e == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s0 + 0)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s0 + 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00355$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00356$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s0 + 3)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s0 + 5)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00357$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00358$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s0 + 7)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s0 + 9)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_s0 + 11)
	ld	hl, (#_s0 + 13)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001e
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
;cases/./../tests/gcc-torture-execute-960326-1.c:31: ASSERT (s1.a == 0 && s1.b == 3 && s1.c == 0 && s1.d[0] == 2 && s1.d[1] == 0 && s1.d[2] == 0 && s1.e == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s1 + 0)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s1 + 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00359$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00360$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s1 + 3)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s1 + 5)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00361$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00362$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s1 + 7)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s1 + 9)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_s1 + 11)
	ld	hl, (#_s1 + 13)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
;	genLabel
00123$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001f
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
00124$:
;cases/./../tests/gcc-torture-execute-960326-1.c:32: ASSERT (s2.a == 0 && s2.b == 3 && s2.c == 0 && s2.d[0] == 2 && s2.d[1] == 0 && s2.d[2] == 0 && s2.e == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -14 (ix)
; common peephole 14 loaded -14 (ix) into a directly instead of going through c.
	ld	b, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00363$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00364$.
;	skipping generated iCode
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	c, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -10 (ix)
; common peephole 14 loaded -10 (ix) into a directly instead of going through c.
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00365$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00366$.
;	skipping generated iCode
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	c, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 12 loaded -5 (ix) into a directly instead of going through b.
	ld	a, -5 (ix)
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, -2 (ix)
	ld	e, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, e
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00144$
;	genLabel
00143$:
;	genAddrOf
	ld	bc, #___str_2+0
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0020
	push	hl
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00144$:
;cases/./../tests/gcc-torture-execute-960326-1.c:33: ASSERT (s3.a == 0 && s3.b == 3 && s3.c == 0 && s3.d[0] == 2 && s3.d[1] == 0 && s3.d[2] == 0 && s3.e == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_testTortureExecute_s3_10000_13 + 0)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_testTortureExecute_s3_10000_13 + 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00367$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00368$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_testTortureExecute_s3_10000_13 + 3)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_testTortureExecute_s3_10000_13 + 5)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00369$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00370$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_testTortureExecute_s3_10000_13 + 7)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_testTortureExecute_s3_10000_13 + 9)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_testTortureExecute_s3_10000_13 + 11)
	ld	hl, (#_testTortureExecute_s3_10000_13 + 13)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00164$
;	genLabel
00163$:
;	genAddrOf
	ld	bc, #___str_2+0
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0021
	push	hl
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00164$:
;cases/./../tests/gcc-torture-execute-960326-1.c:35: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-960326-1.c:37: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "s0.a == 0 && s0.b == 3 && s0.c == 0 && s0.d[0] == 2 && s0.d["
	.ascii "1] == 0 && s0.d[2] == 0 && s0.e == 0"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-960326-1.c"
	.db 0x00
___str_3:
	.ascii "s1.a == 0 && s1.b == 3 && s1.c == 0 && s1.d[0] == 2 && s1.d["
	.ascii "1] == 0 && s1.d[2] == 0 && s1.e == 0"
	.db 0x00
___str_4:
	.ascii "s2.a == 0 && s2.b == 3 && s2.c == 0 && s2.d[0] == 2 && s2.d["
	.ascii "1] == 0 && s2.d[2] == 0 && s2.e == 0"
	.db 0x00
___str_5:
	.ascii "s3.a == 0 && s3.b == 3 && s3.c == 0 && s3.d[0] == 2 && s3.d["
	.ascii "1] == 0 && s3.d[2] == 0 && s3.e == 0"
	.db 0x00
;cases/tst_gcc-torture-execute-960326-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-960326-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-960326-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-960326-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-960326-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-960326-1.c:15: return "gcc-torture-execute-960326-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-960326-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gcc-torture-execute-960326-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__s0:
	.db #0x00	; 0
	.dw #0x0003
	.dw #0x0000
	.dw #0x0002
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.byte #0x00, #0x00, #0x00, #0x00	;  0
__xinit__s1:
	.db #0x00	; 0
	.dw #0x0003
	.dw #0x0000
	.dw #0x0002
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.area _CABS (ABS)
