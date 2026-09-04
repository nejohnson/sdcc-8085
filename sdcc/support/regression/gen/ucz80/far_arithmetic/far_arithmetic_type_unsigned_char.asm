;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module far_arithmetic_type_unsigned_char
	
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
	.ds 1
_j::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ii::
	.ds 1
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:28: void testAnd (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAnd
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testAnd::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:30: i = ii & RIGHT;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genAnd
	and	a, #0x03
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:31: j = ci & RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x02
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:32: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:33: ASSERT (i == (ii & RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genAnd
	and	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:34: ASSERT (j == (ci & RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:35: j = RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x03
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:36: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:37: i = ii & j;
;	genAnd
	ld	a, (_ii+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	and	a, (hl)
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:38: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:39: ASSERT (i == (ii & RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genAnd
	and	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
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
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:40: }
;	genEndFunction
	ret
;	Total testAnd function size at codegen: 1 bytes.
_ci:
	.db #0x5a	; 90	'Z'
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "i == (ii & RIGHT)"
	.db 0x00
___str_2:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
___str_3:
	.ascii "j == (ci & RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:42: void testOr (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testOr
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testOr::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:44: i = ii | RIGHT;
;	genOr
	ld	a, (_ii+0)
	or	a, #0x03
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:45: j = ci | RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x5b
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:46: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:47: ASSERT (i == (ii | RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genOr
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	or	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:48: ASSERT (j == (ci | RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_j)
	sub	a, #0x5b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:49: j = RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x03
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:50: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:51: i = ii | j;
;	genOr
	ld	a, (_ii+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	or	a, (hl)
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:52: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:53: ASSERT (i == (ii | RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genOr
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	or	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
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
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:54: }
;	genEndFunction
	ret
;	Total testOr function size at codegen: 1 bytes.
___str_4:
	.ascii "Assertion failed"
	.db 0x00
___str_5:
	.ascii "i == (ii | RIGHT)"
	.db 0x00
___str_6:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
___str_7:
	.ascii "j == (ci | RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:56: void testXor (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testXor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testXor::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:58: i = ii ^ RIGHT;
;	genXor
	ld	a, (_ii+0)
	xor	a, #0x03
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:59: j = ci ^ RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x59
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:60: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:61: ASSERT (i == ii ^ RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ii
	sub	a, (hl)
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00133$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:62: ASSERT (j == ci ^ RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_j)
	sub	a, #0x5a
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00138$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00137$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:63: j = RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x03
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:64: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:65: i = ii ^ j;
;	genXor
	ld	a, (_ii+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	xor	a, (hl)
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:66: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:67: ASSERT (i == (ii ^ RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genXor
	ld	a, (_ii+0)
	xor	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	sub	a, c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00141$.
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
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:68: }
;	genEndFunction
	ret
;	Total testXor function size at codegen: 7 bytes.
___str_8:
	.ascii "Assertion failed"
	.db 0x00
___str_9:
	.ascii "i == ii ^ RIGHT"
	.db 0x00
___str_10:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
___str_11:
	.ascii "j == ci ^ RIGHT"
	.db 0x00
___str_12:
	.ascii "i == (ii ^ RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:70: void testAdd (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAdd
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testAdd::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:72: i = ii + RIGHT;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genPlus
	add	a, #0x03
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:73: j = ci + RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x5d
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:74: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:75: ASSERT (i == ii + RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	bc
	inc	bc
	inc	bc
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	h, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:76: ASSERT (j == ci + RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
;	genCmpEq
	cp	a, #0x5d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:77: j = RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x03
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:78: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:79: i = ii + j;
;	genPlus
;	Shift into pair
	ld	hl, #_j
	ld	a, (_ii+0)
	add	a, (hl)
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:80: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:81: ASSERT (i == (ii + RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	bc
	inc	bc
	inc	bc
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	h, a
	sbc	hl, bc
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
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
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:82: }
;	genEndFunction
	ret
;	Total testAdd function size at codegen: 1 bytes.
___str_13:
	.ascii "Assertion failed"
	.db 0x00
___str_14:
	.ascii "i == ii + RIGHT"
	.db 0x00
___str_15:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
___str_16:
	.ascii "j == ci + RIGHT"
	.db 0x00
___str_17:
	.ascii "i == (ii + RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:84: void testSub (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSub
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSub::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:87: i = ii - RIGHT;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genMinus
	add	a, #0xfd
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:88: j = ci - RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x57
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:89: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:90: ASSERT (i == ii - RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genMinus
	add	a, #0xfd
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	h, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:91: ASSERT (j == ci - RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_j)
;	genCmpEq
	cp	a, #0x57
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:92: j = RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x03
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:93: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:94: i = ii - j;
;	genMinus
;	Shift into pair
	ld	hl, #_j
	ld	a, (_ii+0)
	sub	a, (hl)
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:95: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:96: ASSERT (i == (ii - RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genMinus
	add	a, #0xfd
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	h, a
	sbc	hl, bc
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
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
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:98: }
;	genEndFunction
	ret
;	Total testSub function size at codegen: 1 bytes.
___str_18:
	.ascii "Assertion failed"
	.db 0x00
___str_19:
	.ascii "i == ii - RIGHT"
	.db 0x00
___str_20:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
___str_21:
	.ascii "j == ci - RIGHT"
	.db 0x00
___str_22:
	.ascii "i == (ii - RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:100: void testShift (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testShift
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testShift::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:103: i = ii >> RIGHT;
;	genRightShift
	ld	a, (_ii+0)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:104: j = ci >> RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x0b
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:105: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:106: ASSERT (i == ii >> RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_ii+0)
	rrca
	rrca
	rrca
	and	a, #0x1f
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:107: ASSERT (j == ci >> RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_j)
	sub	a, #0x0b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:108: j = RIGHT;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_j
	ld	(hl), #0x03
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:109: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:110: i = ii >> j;
;	genRightShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_j + 0)
	ld	b, a
;	genMove_o size 1 result type 11 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii+0)
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00136$
00135$:
	ld	hl, #_i
	srl	(hl)
00136$:
	djnz	00135$
;	genMove_o size 1 result type 11 source type 11 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:111: dummy ();
;	genCall
	call	_dummy
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:112: ASSERT (i == (ii >> RIGHT));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_ii+0)
	rrca
	rrca
	rrca
	and	a, #0x1f
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	sub	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00137$.
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
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:114: }
;	genEndFunction
	ret
;	Total testShift function size at codegen: 1 bytes.
___str_23:
	.ascii "Assertion failed"
	.db 0x00
___str_24:
	.ascii "i == ii >> RIGHT"
	.db 0x00
___str_25:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
___str_26:
	.ascii "j == ci >> RIGHT"
	.db 0x00
___str_27:
	.ascii "i == (ii >> RIGHT)"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:116: void testMul (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMul
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testMul::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:119: ASSERT (ii * RIGHT == LEFT1 * RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ii)
;	genCast
;	(locations are the same)
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	inc	a
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00118$.
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:120: ASSERT (ci * RIGHT == LEFT2 * RIGHT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:122: }
;	genEndFunction
	ret
;	Total testMul function size at codegen: 1 bytes.
___str_28:
	.ascii "Assertion failed"
	.db 0x00
___str_29:
	.ascii "ii * RIGHT == LEFT1 * RIGHT"
	.db 0x00
___str_30:
	.ascii "cases/far_arithmetic/far_arithmetic_type_unsigned_char.c"
	.db 0x00
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:124: void dummy(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function dummy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_dummy::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:126: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total dummy function size at codegen: 1 bytes.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:130: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:132: __prints("Running testAnd\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:133: testAnd();
;	genCall
	call	_testAnd
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:134: __prints("Running testOr\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:135: testOr();
;	genCall
	call	_testOr
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:136: __prints("Running testXor\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_34
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:137: testXor();
;	genCall
	call	_testXor
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:138: __prints("Running testAdd\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:139: testAdd();
;	genCall
	call	_testAdd
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:140: __prints("Running testSub\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_36
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:141: testSub();
;	genCall
	call	_testSub
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:142: __prints("Running testShift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_37
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:143: testShift();
;	genCall
	call	_testShift
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:144: __prints("Running testMul\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_38
;	genCall
	call	___prints
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:145: testMul();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:146: }
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
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:151: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:153: return "far_arithmetic_type_unsigned_char";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_39
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_arithmetic/far_arithmetic_type_unsigned_char.c:154: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0007
___str_39:
	.ascii "far_arithmetic_type_unsigned_char"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__ii:
	.db #0x55	; 85	'U'
	.area _CABS (ABS)
