;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_va_arg_4
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f
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
_testTortureExecute_x_10000_21:
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
;cases/./../tests/gcc-torture-execute-va-arg-4.c:36: static big x = { "abc" };
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testTortureExecute_x_10000_21
	ld	(hl), #0x61
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 1
;	genPointerSet
	ld	(hl), #0x62
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 2
;	genPointerSet
	ld	(hl), #0x63
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 3
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 4
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 5
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 6
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 7
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 8
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 9
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 10
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 11
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 12
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 13
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 14
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 15
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 16
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 17
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 18
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 19
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 20
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 21
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 22
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 23
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 24
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 25
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 26
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 27
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 28
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 29
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 30
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_testTortureExecute_x_10000_21 + 31
;	genPointerSet
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-va-arg-4.c:17: f (big x, char *s, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-va-arg-4.c:21: if (x.a[0] != 'a' || x.a[1] != 'b' || x.a[2] != 'c')
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x61
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00156$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00157$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x62
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00158$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00159$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x63
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00160$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-va-arg-4.c:22: ASSERT (0);
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
	ld	hl, #0x0016
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
;cases/./../tests/gcc-torture-execute-va-arg-4.c:23: va_start (ap, s);
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/gcc-torture-execute-va-arg-4.c:24: if (va_arg (ap, int) != 42)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 38 (ix)
; common peephole 14 loaded 38 (ix) into a directly instead of going through c.
	ld	b, 39 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2a
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00161$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-va-arg-4.c:25: ASSERT (0);
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
	ld	hl, #0x0019
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
00109$:
;cases/./../tests/gcc-torture-execute-va-arg-4.c:26: if (va_arg (ap, int) != 'x')
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 40 (ix)
; common peephole 14 loaded 40 (ix) into a directly instead of going through c.
	ld	b, 41 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x78
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00162$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-va-arg-4.c:27: ASSERT (0);
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
	ld	hl, #0x001b
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
00111$:
;cases/./../tests/gcc-torture-execute-va-arg-4.c:28: if (va_arg (ap, int) != 0)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 42 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 12 loaded 43 (ix) into a directly instead of going through b.
	ld	a, 43 (ix)
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;cases/./../tests/gcc-torture-execute-va-arg-4.c:29: ASSERT (0);
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
	ld	hl, #0x001d
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
;cases/./../tests/gcc-torture-execute-va-arg-4.c:30: va_end (ap);
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-va-arg-4.c:31: }
;	genEndFunction
	pop	ix
	ret
;	Total f function size at codegen: 3 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-va-arg-4.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-va-arg-4.c:34: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-va-arg-4.c:38: f (x, "", 42, 'x', 0);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x78
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x2a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
	push	hl
;	genPointerPush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testTortureExecute_x_10000_21
	ld	bc, #31
	add	hl, bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	call	_f
;	adjustStack by 40
	ld	hl, #40
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-va-arg-4.c:39: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-va-arg-4.c:40: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
___str_4:
	.db 0x00
;cases/tst_gcc-torture-execute-va-arg-4.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-va-arg-4.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-va-arg-4.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-va-arg-4.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-va-arg-4.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-va-arg-4.c:15: return "gcc-torture-execute-va-arg-4.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-va-arg-4.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "gcc-torture-execute-va-arg-4.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
