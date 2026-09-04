;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3
	
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:15: test1ShiftClasses(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test1ShiftClasses
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_test1ShiftClasses::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:19: i = 30;
;	genAssign
;fetchPairLong
	ld	hl, #0x001e
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:20: ASSERT(i>>3 == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;fetchPairLong
	pop	bc
	push	bc
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:21: ASSERT(i<<2 == 120);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:23: result = i;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:24: result >>= 2;
;	genRightShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	-1 (ix)
	rr	-2 (ix)
	srl	-1 (ix)
	rr	-2 (ix)
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:25: ASSERT(result == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	or	a, -1 (ix)
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:27: result = i;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:28: result <<= 2;
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00146$:
	sla	-2 (ix)
	rl	-1 (ix)
	djnz	00146$
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:29: ASSERT(result == 120);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x78
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
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
00101$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:30: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test1ShiftClasses function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "i>>3 == 3"
	.db 0x00
___str_2:
	.ascii "cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr"
	.ascii "_volatile_vals_3.c"
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:36: test2ShiftRight(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test2ShiftRight
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_test2ShiftRight::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:42: i = -120;
;	genAssign
;fetchPairLong
	ld	hl, #0xff88
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:43: ASSERT(i>>1 == -60);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	c, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
;	genCmpEq
	cp	a, #0xc4
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00193$
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00193$:
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:44: ASSERT(i>>2 == -30);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	c, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
	sra	c
	rr	a
;	genCmpEq
	cp	a, #0xe2
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00194$
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00194$:
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:45: ASSERT(i>>3 == -15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	c, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
;	genCmpEq
	cp	a, #0xf1
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00195$
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00195$:
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:46: ASSERT(i>>4 == -8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	c, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
;	genCmpEq
	cp	a, #0xf8
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00196$
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00196$:
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:47: ASSERT(i>>5 == -4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	c, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
;	genCmpEq
	cp	a, #0xfc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00197$
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
00197$:
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:48: ASSERT(i>>6 == -2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	c, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
;	genCmpEq
	cp	a, #0xfe
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00198$
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00198$:
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:49: ASSERT(i>>7 == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	ld	l, h
	ld	h, #0x00
	jr	nc, 00199$
	dec	h
00199$:
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, l
	and	a, h
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:50: ASSERT(i>>8 == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	c, -3 (ix)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genCmpEq
	ld	a, c
	and	a, b
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:51: result = i;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:52: result >>= 3;
;	genRightShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:53: ASSERT(result == -15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf1
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00202$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00202$:
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
00101$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:56: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test2ShiftRight function size at codegen: 5 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "i>>1 == -60"
	.db 0x00
___str_8:
	.ascii "cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr"
	.ascii "_volatile_vals_3.c"
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:59: test3ShiftByteMultiples(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test3ShiftByteMultiples
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_test3ShiftByteMultiples::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:64: i = (int)3;
;	genAssign
;fetchPairLong
	ld	hl, #0x0003
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:65: ASSERT(i>>8  == (int)(3 >> 8));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	c, -1 (ix)
	ld	a, c
	rlca
	sbc	a, a
;	genIfx
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0041
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_19
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:66: ASSERT(i>>16 == (int)(3 >> 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, -2 (ix)
	rlca
	sbc	a, a
;	genIfx
; common peephole 1 removed dead load from a into c.
; common peephole 22a used a in or directly instead of going through b.
	or	a, a
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
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
	ld	hl, #___str_19
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_20
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:67: ASSERT(i>>24 == (int)(3 >> 24));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
	ld	a, -2 (ix)
	rlca
	sbc	a, a
;	genIfx
; common peephole 1 removed dead load from a into c.
; common peephole 22a used a in or directly instead of going through b.
	or	a, a
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
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
	ld	hl, #___str_19
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:69: i = (int)3;
;	genAssign
;fetchPairLong
	ld	hl, #0x0003
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:70: ASSERT( (int)(i<<8)  ==  (int)(3 << 8));;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
	ld	c, -2 (ix)
; common peephole 123 optimize ld a, 0x00
;	genCmpEq
	xor	a,a
; common peephole 101 removed redundant or after xor.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00143$:
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
	ld	hl, #___str_19
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:71: ASSERT(((int) i<<16) == ((int) 3 << 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:72: ASSERT(((int) i<<24) == ((int) 3 << 24));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:74: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test3ShiftByteMultiples function size at codegen: 5 bytes.
___str_17:
	.ascii "Assertion failed"
	.db 0x00
___str_18:
	.ascii "i>>8 == (int)(3 >> 8)"
	.db 0x00
___str_19:
	.ascii "cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr"
	.ascii "_volatile_vals_3.c"
	.db 0x00
___str_20:
	.ascii "i>>16 == (int)(3 >> 16)"
	.db 0x00
___str_21:
	.ascii "i>>24 == (int)(3 >> 24)"
	.db 0x00
___str_22:
	.ascii "(int)(i<<8) == (int)(3 << 8)"
	.db 0x00
__str_23:
	.ascii "((int) i<<16) == ((int) 3 << 16)"
	.db 0x00
__str_24:
	.ascii "((int) i<<24) == ((int) 3 << 24)"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:77: test4ShiftOne(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test4ShiftOne
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_test4ShiftOne::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:84: i = (int)3;
;	genAssign
;fetchPairLong
	ld	hl, #0x0003
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:86: result = i >> 1;
;	genRightShift
;fetchPairLong
	pop	bc
	push	bc
	srl	b
	rr	c
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:87: ASSERT(result == (int)((int)3 >> 1));
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
	dec	a
	or	a, b
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:89: result = i;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:90: result >>= 1;
;	genRightShift
;fetchPairLong
	srl	b
	rr	c
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:91: ASSERT(result == (int)((int)3 >> 1));
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
	dec	a
	or	a, b
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:93: result = i << 1;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:94: ASSERT(result == (int)((int)3 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
	or	a, d
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:96: result = i;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:97: result <<= 1;
;	genLeftShift
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:98: ASSERT(result == (int)((int)3 << 1));
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
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
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
00101$:
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:101: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test4ShiftOne function size at codegen: 5 bytes.
___str_25:
	.ascii "Assertion failed"
	.db 0x00
___str_26:
	.ascii "result == (int)((int)3 >> 1)"
	.db 0x00
___str_27:
	.ascii "cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr"
	.ascii "_volatile_vals_3.c"
	.db 0x00
___str_28:
	.ascii "result == (int)((int)3 << 1)"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:105: static int ShiftLeftByParam (int count)
;	genLabel
;	genFunction
;	---------------------------------
; Function ShiftLeftByParam
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_ShiftLeftByParam:
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, l
; common peephole 1 removed dead load from h into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:108: i = (int)3;
;	genAssign
;fetchPairLong
	ld	hl, #0x0003
;	genMove_o size 2 result type 12 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:109: return (i << count);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	add	hl, hl
00104$:
	djnz	00103$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:110: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total ShiftLeftByParam function size at codegen: 2 bytes.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:112: static int ShiftRightByParam (int count)
;	genLabel
;	genFunction
;	---------------------------------
; Function ShiftRightByParam
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_ShiftRightByParam:
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, l
; common peephole 1 removed dead load from h into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:115: i = (int)3;
;	genAssign
;fetchPairLong
	ld	hl, #0x0003
;	genMove_o size 2 result type 12 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:116: return (i >> count);
;	genRightShift
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	sra	d
	rr	e
00104$:
	djnz	00103$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:117: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total ShiftRightByParam function size at codegen: 2 bytes.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:122: testShiftByParam(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testShiftByParam
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testShiftByParam::
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:126: ASSERT(ShiftLeftByParam(2)  == (int)(3 << 2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
;	genCall
	call	_ShiftLeftByParam
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	or	a, d
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:127: ASSERT(ShiftRightByParam(2) == (int)(3 >> 2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
;	genCall
	call	_ShiftRightByParam
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:130: }
;	genEndFunction
	ret
;	Total testShiftByParam function size at codegen: 1 bytes.
___str_29:
	.ascii "Assertion failed"
	.db 0x00
___str_30:
	.ascii "ShiftLeftByParam(2) == (int)(3 << 2)"
	.db 0x00
___str_31:
	.ascii "cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr"
	.ascii "_volatile_vals_3.c"
	.db 0x00
___str_32:
	.ascii "ShiftRightByParam(2) == (int)(3 >> 2)"
	.db 0x00
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:134: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:136: __prints("Running test1ShiftClasses\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:137: test1ShiftClasses();
;	genCall
	call	_test1ShiftClasses
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:138: __prints("Running test2ShiftRight\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_34
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:139: test2ShiftRight();
;	genCall
	call	_test2ShiftRight
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:140: __prints("Running test3ShiftByteMultiples\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:141: test3ShiftByteMultiples();
;	genCall
	call	_test3ShiftByteMultiples
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:142: __prints("Running test4ShiftOne\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_36
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:143: test4ShiftOne();
;	genCall
	call	_test4ShiftOne
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:144: __prints("Running testShiftByParam\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_37
;	genCall
	call	___prints
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:145: testShiftByParam();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:146: }
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
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:151: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:153: return "shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_38
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts/shifts_sign_unsigned_type_int_storage_none_attr_volatile_vals_3.c:154: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0005
___str_38:
	.ascii "shifts_sign_unsigned_type_int_storage_none_attr_volatile_val"
	.ascii "s_3"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
