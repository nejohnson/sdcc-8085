;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1
	
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
	.globl _rotate_test_struct
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
_rotate_test_struct::
	.ds 2
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
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:109: TYPE rotate_test_1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_1::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:111: return ((value << SHIFT_L) | (value >> SHIFT_R)) AND_OPERATION;
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:112: }
;	genEndFunction
	ret
;	Total rotate_test_1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:114: TYPE rotate_test_1_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_1_xor1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_1_xor1::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:116: value = value ^ rotate_test_value_xor;
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:117: return ((value << SHIFT_L) | (value >> SHIFT_R)) AND_OPERATION;
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:118: }
;	genEndFunction
	ret
;	Total rotate_test_1_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:120: TYPE rotate_test_1_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_1_xor2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_1_xor2::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:122: return (((value ^ rotate_test_value_xor) << SHIFT_L) | ((value ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:123: }
;	genEndFunction
	ret
;	Total rotate_test_1_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:127: TYPE rotate_test_2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_2::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:130: return ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:131: }
;	genEndFunction
	ret
;	Total rotate_test_2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:133: TYPE rotate_test_2_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_2_xor1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_2_xor1::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:135: TYPE value2 = value ^ rotate_test_value_xor;
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:136: return ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:137: }
;	genEndFunction
	ret
;	Total rotate_test_2_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:139: TYPE rotate_test_2_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_2_xor2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_2_xor2::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:142: return (((value2 ^ rotate_test_value_xor) << SHIFT_L) | ((value2 ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:143: }
;	genEndFunction
	ret
;	Total rotate_test_2_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:145: TYPE rotate_test_3(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_rotate_test_3::
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:148: value2 = ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
; common peephole 33 loaded a from a instead of going through 0 (iy).
	ld	0 (iy), a
; common peephole 0a removed redundant load from a into a.
	rlca
	rlca
	rlca
	rlca
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
;	genAnd
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	and	a, #0xfe
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:149: return value2;
;	genRet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through 0 (iy).
	ld	0 (iy), a
; common peephole 0a removed redundant load from a into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:150: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total rotate_test_3 function size at codegen: 2 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:152: TYPE rotate_test_3_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_3_xor1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_rotate_test_3_xor1::
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:154: volatile TYPE value2 = value ^ rotate_test_value_xor;
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:155: value2 = ((value2 << SHIFT_L) | (value2 >> SHIFT_R)) AND_OPERATION;
;	genRot
; common peephole 33 loaded a from a instead of going through 0 (iy).
	ld	0 (iy), a
; common peephole 0a removed redundant load from a into a.
	rlca
	rlca
	rlca
	rlca
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
;	genAnd
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	and	a, #0xfe
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:156: return value2;
;	genRet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through 0 (iy).
	ld	0 (iy), a
; common peephole 0a removed redundant load from a into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:157: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total rotate_test_3_xor1 function size at codegen: 2 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:159: TYPE rotate_test_3_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_3_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_rotate_test_3_xor2::
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:162: value2 = (((value2 ^ rotate_test_value_xor) << SHIFT_L) | ((value2 ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
; common peephole 33 loaded a from a instead of going through 0 (iy).
	ld	0 (iy), a
; common peephole 0a removed redundant load from a into a.
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
;	genXor
	ld	a, 0 (iy)
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genOr
	or	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0xfe
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:163: return value2;
;	genRet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through 0 (iy).
	ld	0 (iy), a
; common peephole 0a removed redundant load from a into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:164: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total rotate_test_3_xor2 function size at codegen: 2 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:168: TYPE rotate_test_4(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_4::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:170: rotate_test_value = value;
;	genAddrOf
;	genPointerSet
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:171: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genRot
; common peephole 0a removed redundant load from a into a.
; common peephole 10 loaded a from a directly instead of going through c.
	ld	hl, #_rotate_test_struct+1
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genPointerSet
	ld	(hl), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:172: return rotate_test_value;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:173: }
;	genEndFunction
	ret
;	Total rotate_test_4 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:175: TYPE rotate_test_4_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_4_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_4_xor1::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:177: rotate_test_value = value ^ rotate_test_value_xor;
;	genAddrOf
;	genXor
; common peephole 0a removed redundant load from a into a.
; common peephole 10 loaded a from a directly instead of going through e.
	ld	bc, #_rotate_test_struct+1
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:178: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:179: return rotate_test_value;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:180: }
;	genEndFunction
	ret
;	Total rotate_test_4_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:182: TYPE rotate_test_4_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_4_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_4_xor2::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:184: rotate_test_value = value;
;	genAddrOf
;	genPointerSet
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:185: rotate_test_value = (((rotate_test_value ^ rotate_test_value_xor) << SHIFT_L) | ((rotate_test_value ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genXor
; common peephole 0a removed redundant load from a into a.
; common peephole 10 loaded a from a directly instead of going through c.
	ld	hl, #_rotate_test_struct+1
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genPointerSet
	ld	(hl), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:186: return rotate_test_value;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:187: }
;	genEndFunction
	ret
;	Total rotate_test_4_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:189: void rotate_test_load(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_load
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_rotate_test_load::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:191: rotate_test_value = value;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_rotate_test_struct + 1)
	ld	(hl), c
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:192: }
;	genEndFunction
	ret
;	Total rotate_test_load function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:194: TYPE rotate_test_5(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_5
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_5::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:196: rotate_test_load (value);
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_load
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:197: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genAddrOf
	ld	hl, #_rotate_test_struct+1
;	genPointerGet
	ld	a, (hl)
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genPointerSet
	ld	(hl), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:198: return rotate_test_value;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:199: }
;	genEndFunction
	ret
;	Total rotate_test_5 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:201: TYPE rotate_test_5_xor1(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_5_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_5_xor1::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:203: rotate_test_load (value ^ rotate_test_value_xor);
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_load
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:204: rotate_test_value = ((rotate_test_value << SHIFT_L) | (rotate_test_value >> SHIFT_R)) AND_OPERATION;
;	genAddrOf
	ld	hl, #_rotate_test_struct+1
;	genPointerGet
	ld	a, (hl)
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genPointerSet
	ld	(hl), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:205: return rotate_test_value;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:206: }
;	genEndFunction
	ret
;	Total rotate_test_5_xor1 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:208: TYPE rotate_test_5_xor2(TYPE value)
;	genLabel
;	genFunction
;	---------------------------------
; Function rotate_test_5_xor2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_rotate_test_5_xor2::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:210: rotate_test_load (value);
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_load
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:211: rotate_test_value = (((rotate_test_value ^ rotate_test_value_xor) << SHIFT_L) | ((rotate_test_value ^ rotate_test_value_xor) >> SHIFT_R)) AND_OPERATION;
;	genAddrOf
	ld	hl, #_rotate_test_struct+1
;	genPointerGet
	ld	a, (hl)
;	genXor
	xor	a, #0x24
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genRot
	rlca
	rlca
	rlca
	rlca
;	genAnd
	res	0, a
;	genPointerSet
	ld	(hl), a
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:212: return rotate_test_value;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:213: }
;	genEndFunction
	ret
;	Total rotate_test_5_xor2 function size at codegen: 1 bytes.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:218: testSwaps(void)
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
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:221: volatile TYPE t = TEST_VALUE;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:224: u = t;
;	genAssign
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from #0x5b instead of going through -2 (ix).
	ld	-2 (ix), #0x5b
; common peephole 13 loaded #0x5b into -1 (ix) directly instead of going through a.
	ld	-1 (ix), #0x5b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:226: ASSERT( rotate_test_1(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xb4
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
;	genLabel
00104$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:227: ASSERT( rotate_test_1_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_1_xor1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00106$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:228: ASSERT( rotate_test_1_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_1_xor2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00108$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:230: ASSERT( rotate_test_2(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xb4
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
;	genLabel
00110$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:231: ASSERT( rotate_test_2_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_2_xor1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00112$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:232: ASSERT( rotate_test_2_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_2_xor2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00114$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:234: ASSERT( rotate_test_3(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_3
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xb4
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
;	genLabel
00116$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:235: ASSERT( rotate_test_3_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_3_xor1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00118$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:236: ASSERT( rotate_test_3_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_3_xor2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00120$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:239: ASSERT( rotate_test_4(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_4
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xb4
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
;	genLabel
00122$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:240: ASSERT( rotate_test_4_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_4_xor1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00124$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:241: ASSERT( rotate_test_4_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_4_xor2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00126$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:243: ASSERT( rotate_test_5(u)      == ROTATE_RESULT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_5
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xb4
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
;	genLabel
00128$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:244: ASSERT( rotate_test_5_xor1(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_5_xor1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;	genLabel
00130$:
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:245: ASSERT( rotate_test_5_xor2(u) == ROTATE_RESULT_XOR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_rotate_test_5_xor2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf6
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
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:248: }
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
	.ascii "cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLe"
	.ascii "ft_0_structVar_1.c"
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
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:252: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:254: __prints("Running testSwaps\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___prints
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:255: testSwaps();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:256: }
;	genEndFunction
	jp	_testSwaps
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_17:
	.ascii "Running testSwaps"
	.db 0x0a
	.db 0x00
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:261: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:263: return "rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/rotate2/rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar_1.c:264: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_18:
	.ascii "rotate2_size_8_andCase_2_xorLiteral_1_rotateLeft_0_structVar"
	.ascii "_1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
