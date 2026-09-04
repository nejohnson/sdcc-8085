;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testShiftByParam
	.globl _test4ShiftOne
	.globl _test3ShiftByteMultiples
	.globl _test2ShiftRight
	.globl _test1ShiftClasses
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
_test1ShiftClasses_i_10000_13:
	.ds 1
_test1ShiftClasses_result_10000_13:
	.ds 1
_test2ShiftRight_i_10000_15:
	.ds 1
_test2ShiftRight_result_10000_15:
	.ds 1
_test3ShiftByteMultiples_i_10000_17:
	.ds 1
_test4ShiftOne_i_10000_19:
	.ds 1
_ShiftLeftByParam_i_10000_21:
	.ds 1
_ShiftRightByParam_i_10000_23:
	.ds 1
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
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:15: test1ShiftClasses(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test1ShiftClasses
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test1ShiftClasses::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:19: i = 30;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_test1ShiftClasses_i_10000_13
	ld	(hl), #0x1e
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:20: ASSERT(i>>3 == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test1ShiftClasses_i_10000_13+0)
	rrca
	rrca
	rrca
	and	a, #0x1f
;	genCmpEq
	cp	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0014
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
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:21: ASSERT(i<<2 == 120);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_test1ShiftClasses_i_10000_13)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x78
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0015
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
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:23: result = i;
;	genAssign
;	genMove_o size 1 result type 11 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_test1ShiftClasses_i_10000_13+0)
	ld	(#_test1ShiftClasses_result_10000_13), a
; common peephole 19 loaded (#_test1ShiftClasses_result_10000_13) from a directly instead of using hl.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:24: result >>= 2;
;	genRightShift
	ld	a, (_test1ShiftClasses_result_10000_13+0)
	rrca
	rrca
	and	a, #0x3f
	ld	(_test1ShiftClasses_result_10000_13+0), a
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:25: ASSERT(result == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_test1ShiftClasses_result_10000_13)
	sub	a, #0x07
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
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
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:27: result = i;
;	genAssign
;	genMove_o size 1 result type 11 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_test1ShiftClasses_i_10000_13+0)
	ld	(#_test1ShiftClasses_result_10000_13), a
; common peephole 19 loaded (#_test1ShiftClasses_result_10000_13) from a directly instead of using hl.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:28: result <<= 2;
;	genLeftShift
	ld	iy, #_test1ShiftClasses_result_10000_13
	sla	0 (iy)
	sla	0 (iy)
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:29: ASSERT(result == 120);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_test1ShiftClasses_result_10000_13+0)
	sub	a, #0x78
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
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
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:30: }
;	genEndFunction
	ret
;	Total test1ShiftClasses function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "i>>3 == 3"
	.db 0x00
___str_2:
	.ascii "cases/shifts/shifts_sign_unsigned_type_char_storage_static_a"
	.ascii "ttr_volatile_vals_3.c"
	.db 0x00
___str_3:
	.ascii "i<<2 == 120"
	.db 0x00
___str_4:
	.ascii "result == 7"
	.db 0x00
___str_5:
	.ascii "result == 120"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:36: test2ShiftRight(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test2ShiftRight
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test2ShiftRight::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:42: i = -120;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_test2ShiftRight_i_10000_15
	ld	(hl), #0x88
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:43: ASSERT(i>>1 == -60);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
;	genCmpEq
	cp	a, #0xc4
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00193$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:44: ASSERT(i>>2 == -30);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
	sra	a
;	genCmpEq
	cp	a, #0xe2
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00194$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:45: ASSERT(i>>3 == -15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
	sra	a
	sra	a
;	genCmpEq
	cp	a, #0xf1
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00195$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:46: ASSERT(i>>4 == -8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
	sra	a
	sra	a
	sra	a
;	genCmpEq
	cp	a, #0xf8
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00196$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:47: ASSERT(i>>5 == -4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
;	genCmpEq
	cp	a, #0xfc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00197$.
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
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:48: ASSERT(i>>6 == -2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
;	genCmpEq
	cp	a, #0xfe
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00198$.
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
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:49: ASSERT(i>>7 == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
	sra	a
;	genCmpEq
	cp	a, #0xff
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00199$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0031
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:50: ASSERT(i>>8 == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, (_test2ShiftRight_i_10000_15+0)
	rlca
	sbc	a, a
;	genCmpEq
	cp	a, #0xff
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00200$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0032
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:51: result = i;
;	genAssign
;	genMove_o size 1 result type 11 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_test2ShiftRight_i_10000_15+0)
	ld	(#_test2ShiftRight_result_10000_15), a
; common peephole 19 loaded (#_test2ShiftRight_result_10000_15) from a directly instead of using hl.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:52: result >>= 3;
;	genRightShift
	ld	a, (_test2ShiftRight_result_10000_15+0)
	sra	a
	sra	a
	sra	a
	ld	(_test2ShiftRight_result_10000_15+0), a
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:53: ASSERT(result == -15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_test2ShiftRight_result_10000_15)
	sub	a, #0xf1
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00201$.
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
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:56: }
;	genEndFunction
	ret
;	Total test2ShiftRight function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "i>>1 == -60"
	.db 0x00
___str_8:
	.ascii "cases/shifts/shifts_sign_unsigned_type_char_storage_static_a"
	.ascii "ttr_volatile_vals_3.c"
	.db 0x00
___str_9:
	.ascii "i>>2 == -30"
	.db 0x00
___str_10:
	.ascii "i>>3 == -15"
	.db 0x00
___str_11:
	.ascii "i>>4 == -8"
	.db 0x00
___str_12:
	.ascii "i>>5 == -4"
	.db 0x00
___str_13:
	.ascii "i>>6 == -2"
	.db 0x00
___str_14:
	.ascii "i>>7 == -1"
	.db 0x00
___str_15:
	.ascii "i>>8 == -1"
	.db 0x00
___str_16:
	.ascii "result == -15"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:59: test3ShiftByteMultiples(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test3ShiftByteMultiples
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test3ShiftByteMultiples::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:64: i = (char)3;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_test3ShiftByteMultiples_i_10000_17
	ld	(hl), #0x03
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:65: ASSERT(i>>8  == (char)(3 >> 8));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:66: ASSERT(i>>16 == (char)(3 >> 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:67: ASSERT(i>>24 == (char)(3 >> 24));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:69: i = (char)3;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_test3ShiftByteMultiples_i_10000_17
	ld	(hl), #0x03
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:70: ASSERT( (char)(i<<8)  ==  (char)(3 << 8));;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:71: ASSERT(((char) i<<16) == ((char) 3 << 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:72: ASSERT(((char) i<<24) == ((char) 3 << 24));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:74: }
;	genEndFunction
	ret
;	Total test3ShiftByteMultiples function size at codegen: 1 bytes.
__str_17:
	.ascii "Assertion failed"
	.db 0x00
__str_18:
	.ascii "i>>8 == (char)(3 >> 8)"
	.db 0x00
__str_19:
	.ascii "cases/shifts/shifts_sign_unsigned_type_char_storage_static_a"
	.ascii "ttr_volatile_vals_3.c"
	.db 0x00
__str_20:
	.ascii "i>>16 == (char)(3 >> 16)"
	.db 0x00
__str_21:
	.ascii "i>>24 == (char)(3 >> 24)"
	.db 0x00
__str_22:
	.ascii "(char)(i<<8) == (char)(3 << 8)"
	.db 0x00
__str_23:
	.ascii "((char) i<<16) == ((char) 3 << 16)"
	.db 0x00
__str_24:
	.ascii "((char) i<<24) == ((char) 3 << 24)"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:77: test4ShiftOne(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test4ShiftOne
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test4ShiftOne::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:84: i = (char)3;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_test4ShiftOne_i_10000_19
	ld	(hl), #0x03
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:86: result = i >> 1;
;	genRightShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_test4ShiftOne_i_10000_19 + 0)
	ld	c, a
	srl	c
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:87: ASSERT(result == (char)((char)3 >> 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0057
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_27
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:89: result = i;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_test4ShiftOne_i_10000_19)
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:90: result >>= 1;
;	genRightShift
	ld	c, a
	srl	c
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:91: ASSERT(result == (char)((char)3 >> 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
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
	ld	hl, #___str_27
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:93: result = i << 1;
;	genLeftShift
	ld	a, (_test4ShiftOne_i_10000_19+0)
	add	a, a
	ld	c, a
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:94: ASSERT(result == (char)((char)3 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
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
	ld	hl, #___str_27
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:96: result = i;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_test4ShiftOne_i_10000_19)
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:97: result <<= 1;
;	genLeftShift
	add	a, a
	ld	c, a
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:98: ASSERT(result == (char)((char)3 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0062
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_27
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:101: }
;	genEndFunction
	ret
;	Total test4ShiftOne function size at codegen: 1 bytes.
___str_25:
	.ascii "Assertion failed"
	.db 0x00
___str_26:
	.ascii "result == (char)((char)3 >> 1)"
	.db 0x00
___str_27:
	.ascii "cases/shifts/shifts_sign_unsigned_type_char_storage_static_a"
	.ascii "ttr_volatile_vals_3.c"
	.db 0x00
___str_28:
	.ascii "result == (char)((char)3 << 1)"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:105: static char ShiftLeftByParam (char count)
;	genLabel
;	genFunction
;	---------------------------------
; Function ShiftLeftByParam
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ShiftLeftByParam:
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:108: i = (char)3;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_ShiftLeftByParam_i_10000_21
	ld	(hl), #0x03
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:109: return (i << count);
;	genLeftShift
	ld	b, a
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ShiftLeftByParam_i_10000_21)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	add	a, a
00104$:
	djnz	00103$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:110: }
;	genEndFunction
	ret
;	Total ShiftLeftByParam function size at codegen: 1 bytes.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:112: static char ShiftRightByParam (char count)
;	genLabel
;	genFunction
;	---------------------------------
; Function ShiftRightByParam
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ShiftRightByParam:
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:115: i = (char)3;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_ShiftRightByParam_i_10000_23
	ld	(hl), #0x03
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:116: return (i >> count);
;	genRightShift
	ld	b, a
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ShiftRightByParam_i_10000_23)
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	srl	a
00104$:
	djnz	00103$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:117: }
;	genEndFunction
	ret
;	Total ShiftRightByParam function size at codegen: 1 bytes.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:122: testShiftByParam(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testShiftByParam
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testShiftByParam::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:126: ASSERT(ShiftLeftByParam(2)  == (char)(3 << 2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
;	genCall
	call	_ShiftLeftByParam
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x0c
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
	ld	hl, #0x007e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_31
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_30
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_29
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:127: ASSERT(ShiftRightByParam(2) == (char)(3 >> 2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
;	genCall
	call	_ShiftRightByParam
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
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
	ld	hl, #___str_31
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_32
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_29
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:130: }
;	genEndFunction
	ret
;	Total testShiftByParam function size at codegen: 1 bytes.
___str_29:
	.ascii "Assertion failed"
	.db 0x00
___str_30:
	.ascii "ShiftLeftByParam(2) == (char)(3 << 2)"
	.db 0x00
___str_31:
	.ascii "cases/shifts/shifts_sign_unsigned_type_char_storage_static_a"
	.ascii "ttr_volatile_vals_3.c"
	.db 0x00
___str_32:
	.ascii "ShiftRightByParam(2) == (char)(3 >> 2)"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:134: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:136: __prints("Running test1ShiftClasses\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:137: test1ShiftClasses();
;	genCall
	call	_test1ShiftClasses
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:138: __prints("Running test2ShiftRight\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_34
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:139: test2ShiftRight();
;	genCall
	call	_test2ShiftRight
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:140: __prints("Running test3ShiftByteMultiples\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:141: test3ShiftByteMultiples();
;	genCall
	call	_test3ShiftByteMultiples
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:142: __prints("Running test4ShiftOne\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_36
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:143: test4ShiftOne();
;	genCall
	call	_test4ShiftOne
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:144: __prints("Running testShiftByParam\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_37
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:145: testShiftByParam();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:146: }
;	genEndFunction
	jp	_testShiftByParam
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_33:
	.ascii "Running test1ShiftClasses"
	.db 0x0a
	.db 0x00
___str_34:
	.ascii "Running test2ShiftRight"
	.db 0x0a
	.db 0x00
___str_35:
	.ascii "Running test3ShiftByteMultiples"
	.db 0x0a
	.db 0x00
___str_36:
	.ascii "Running test4ShiftOne"
	.db 0x0a
	.db 0x00
___str_37:
	.ascii "Running testShiftByParam"
	.db 0x0a
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:151: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:153: return "shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_38
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3.c:154: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0005
___str_38:
	.ascii "shifts_sign_unsigned_type_char_storage_static_attr_volatile_"
	.ascii "vals_3"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
