;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rotate_test_5_xor2
	.globl _rotate_test_5_xor1
	.globl _rotate_test_5
	.globl _rotate_test_load
	.globl _rotate_test_4_xor2
	.globl _rotate_test_4_xor1
	.globl _rotate_test_4
	.globl _rotate_test_3_xor2
	.globl _rotate_test_3_xor1
	.globl _rotate_test_3
	.globl _rotate_test_2_xor2
	.globl _rotate_test_2_xor1
	.globl _rotate_test_2
	.globl _rotate_test_1_xor2
	.globl _rotate_test_1_xor1
	.globl _rotate_test_1
	.globl ___prints
	.globl ___fail
	.globl _rotate_test_value_xor
	.globl _rotate_test_value
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
_rotate_test_value::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_rotate_test_value_xor::
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
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:109: TYPE rotate_test_1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:111: return ((value << SHIFT_L) | (value >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	d, l
	ld	e, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:112: }
;	genEndFunction
	ret
;	Total rotate_test_1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:114: TYPE rotate_test_1_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_1_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_1_xor1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:116: value = value ^ rotate_test_value_xor;
;	genXor
	ld	a, l
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:117: return ((value << SHIFT_L) | (value >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:118: }
;	genEndFunction
	ret
;	Total rotate_test_1_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:120: TYPE rotate_test_1_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_1_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_1_xor2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:122: return (((value ^ rotate_test_value_xor) << SHIFT_L) | ((value ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	ld	a, l
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into c.
;	genXor
	ld	a, l
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	ld	e, a
; common peephole 1 removed dead load from #0x00 into d.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:123: }
;	genEndFunction
	ret
;	Total rotate_test_1_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:127: TYPE rotate_test_2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:130: return ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	d, l
	ld	e, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:131: }
;	genEndFunction
	ret
;	Total rotate_test_2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:133: TYPE rotate_test_2_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_2_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_2_xor1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:135: TYPE value2 = value ^ rotate_test_value_xor;
;	genXor
	ld	a, l
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:136: return ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:137: }
;	genEndFunction
	ret
;	Total rotate_test_2_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:139: TYPE rotate_test_2_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_2_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_2_xor2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:142: return (((value2 ^ rotate_test_value_xor) << SHIFT_L) | ((value2 ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	ld	a, l
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into c.
;	genXor
	ld	a, l
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	ld	e, a
; common peephole 1 removed dead load from #0x00 into d.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:143: }
;	genEndFunction
	ret
;	Total rotate_test_2_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:145: TYPE rotate_test_3(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_rotate_test_3::
;	adjustStack by -2
;	genReceive
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26a merged push and ex (sp), since hl isn't used.
	push	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:148: value2 = ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 62 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	b, (hl)
	inc	hl
	ld	c, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
;	genCast
;	(locations are the same)
;	genAnd
	res	4, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:149: return value2;
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
; common peephole 52a replaced push/pop pair by loads.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:150: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total rotate_test_3 function size at codegen: 2 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:152: TYPE rotate_test_3_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_3_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_rotate_test_3_xor1::
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:154: volatile TYPE value2 = value ^ rotate_test_value_xor;
;	genXor
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
; common peephole 54 used hl instead of iy.
	ld	hl, #_rotate_test_value_xor + 1
	xor	a, (hl)
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	1 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:155: value2 = ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, 0 (iy)
	ld	c, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
;	genCast
;	(locations are the same)
;	genAnd
	res	4, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:156: return value2;
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
; common peephole 52a replaced push/pop pair by loads.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:157: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total rotate_test_3_xor1 function size at codegen: 2 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:159: TYPE rotate_test_3_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_3_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_rotate_test_3_xor2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26a merged push and ex (sp), since hl isn't used.
	push	hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:162: value2 = (((value2 ^ rotate_test_value_xor) << SHIFT_L) | ((value2 ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	ld	a, -2 (ix)
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into c.
;	genXor
	ld	a, -2 (ix)
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
; common peephole 1 removed dead load from #0x00 into d.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 9 loaded c from a directly instead of going through e.
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:163: return value2;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
; common peephole 52a replaced push/pop pair by loads.
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:164: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total rotate_test_3_xor2 function size at codegen: 5 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:168: TYPE rotate_test_4(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_4::
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:171: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value)
	ld	h, a
	ld	a, (_rotate_test_value+1)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	4, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:172: return rotate_test_value;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_rotate_test_value)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:173: }
;	genEndFunction
	ret
;	Total rotate_test_4 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:175: TYPE rotate_test_4_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_4_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_4_xor1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:177: rotate_test_value = value ^ rotate_test_value_xor;
;	genXor
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value+0), a
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value+1), a
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:178: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value)
	ld	h, a
	ld	a, (_rotate_test_value+1)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	4, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:179: return rotate_test_value;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_rotate_test_value)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:180: }
;	genEndFunction
	ret
;	Total rotate_test_4_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:182: TYPE rotate_test_4_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_4_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_4_xor2::
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:185: rotate_test_value = (((rotate_test_value ^ rotate_test_value_xor) << SHIFT_L) | ((rotate_test_value ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	ld	a, (_rotate_test_value+0)
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value+1)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into c.
;	genXor
	ld	a, (_rotate_test_value+0)
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value+1)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	ld	l, a
; common peephole 1 removed dead load from #0x00 into h.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:186: return rotate_test_value;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_rotate_test_value)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:187: }
;	genEndFunction
	ret
;	Total rotate_test_4_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:189: void rotate_test_load(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_load
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_load::
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:191: rotate_test_value = value;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:192: }
;	genEndFunction
	ret
;	Total rotate_test_load function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:194: TYPE rotate_test_5(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_5
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_5::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:196: rotate_test_load (value);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_load
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:197: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value)
	ld	h, a
	ld	a, (_rotate_test_value+1)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	4, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:198: return rotate_test_value;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_rotate_test_value)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:199: }
;	genEndFunction
	ret
;	Total rotate_test_5 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:201: TYPE rotate_test_5_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_5_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_5_xor1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:203: rotate_test_load (value ^ rotate_test_value_xor);
;	genXor
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_load
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:204: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genRot
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value)
	ld	h, a
	ld	a, (_rotate_test_value+1)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	4, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:205: return rotate_test_value;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_rotate_test_value)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:206: }
;	genEndFunction
	ret
;	Total rotate_test_5_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:208: TYPE rotate_test_5_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_5_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_5_xor2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:210: rotate_test_load (value);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_load
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:211: rotate_test_value = (((rotate_test_value ^ rotate_test_value_xor) << SHIFT_L) | ((rotate_test_value ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	ld	a, (_rotate_test_value+0)
	ld	iy, #_rotate_test_value_xor
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value+1)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into c.
;	genXor
	ld	a, (_rotate_test_value+0)
	xor	a, 0 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_rotate_test_value+1)
	xor	a, 1 (iy)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	ld	l, a
; common peephole 1 removed dead load from #0x00 into h.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	res	4, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rotate_test_value), hl
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:212: return rotate_test_value;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_rotate_test_value)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:213: }
;	genEndFunction
	ret
;	Total rotate_test_5_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:218: testSwaps(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSwaps
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testSwaps:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:221: volatile TYPE t = TEST_VALUE;
;	genAssign
;fetchPairLong
	ld	hl, #0x3579
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:224: u = t;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:226: ASSERT( rotate_test_1(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x7925
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00253$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e2
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
	pop	bc
;	genLabel
00104$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:227: ASSERT( rotate_test_1_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_1_xor1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00254$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e3
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
	pop	bc
;	genLabel
00106$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:228: ASSERT( rotate_test_1_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_1_xor2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00255$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e4
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
	pop	bc
;	genLabel
00108$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:230: ASSERT( rotate_test_2(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x7925
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00256$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e6
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
	pop	bc
;	genLabel
00110$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:231: ASSERT( rotate_test_2_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_2_xor1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00257$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e7
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
	pop	bc
;	genLabel
00112$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:232: ASSERT( rotate_test_2_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_2_xor2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00258$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e8
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
	pop	bc
;	genLabel
00114$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:234: ASSERT( rotate_test_3(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x7925
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00259$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ea
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
	pop	bc
;	genLabel
00116$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:235: ASSERT( rotate_test_3_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_3_xor1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00260$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00eb
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
	pop	bc
;	genLabel
00118$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:236: ASSERT( rotate_test_3_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_3_xor2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00261$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ec
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
	pop	bc
;	genLabel
00120$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:239: ASSERT( rotate_test_4(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_4
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x7925
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00262$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ef
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
	pop	bc
;	genLabel
00122$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:240: ASSERT( rotate_test_4_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_4_xor1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00263$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00f0
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
	pop	bc
;	genLabel
00124$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:241: ASSERT( rotate_test_4_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_4_xor2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00264$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00f1
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
	pop	bc
;	genLabel
00126$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:243: ASSERT( rotate_test_5(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_5
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x7925
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00265$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00f3
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
	pop	bc
;	genLabel
00128$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:244: ASSERT( rotate_test_5_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_5_xor1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00266$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00f4
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
	pop	bc
;	genLabel
00130$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:245: ASSERT( rotate_test_5_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_5_xor2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x5d25
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00267$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00f5
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
00101$:
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:248: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testSwaps function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "rotate_test_1(u) == ROTATE_RESULT"
	.db 0x00
___str_2:
	.ascii "cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateL"
	.ascii "eft_0_structVar_0.c"
	.db 0x00
___str_3:
	.ascii "rotate_test_1_xor1(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_4:
	.ascii "rotate_test_1_xor2(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_5:
	.ascii "rotate_test_2(u) == ROTATE_RESULT"
	.db 0x00
___str_6:
	.ascii "rotate_test_2_xor1(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_7:
	.ascii "rotate_test_2_xor2(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_8:
	.ascii "rotate_test_3(u) == ROTATE_RESULT"
	.db 0x00
___str_9:
	.ascii "rotate_test_3_xor1(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_10:
	.ascii "rotate_test_3_xor2(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_11:
	.ascii "rotate_test_4(u) == ROTATE_RESULT"
	.db 0x00
___str_12:
	.ascii "rotate_test_4_xor1(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_13:
	.ascii "rotate_test_4_xor2(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_14:
	.ascii "rotate_test_5(u) == ROTATE_RESULT"
	.db 0x00
___str_15:
	.ascii "rotate_test_5_xor1(u) == ROTATE_RESULT_XOR"
	.db 0x00
___str_16:
	.ascii "rotate_test_5_xor2(u) == ROTATE_RESULT_XOR"
	.db 0x00
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:252: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:254: __prints("Running testSwaps\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___prints
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:255: testSwaps();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:256: }
;	genEndFunction
	jp	_testSwaps
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_17:
	.ascii "Running testSwaps"
	.db 0x0a
	.db 0x00
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:261: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:263: return "rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVar_0.c:264: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_18:
	.ascii "rotate2_size_16_andCase_1_xorLiteral_0_rotateLeft_0_structVa"
	.ascii "r_0"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__rotate_test_value_xor:
	.dw #0x0024
	.area _CABS (ABS)
