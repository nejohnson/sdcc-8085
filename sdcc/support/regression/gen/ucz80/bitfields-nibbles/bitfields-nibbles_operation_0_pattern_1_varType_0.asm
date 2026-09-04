;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitfields_nibbles_operation_0_pattern_1_varType_0
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___prints
	.globl ___fail
	.globl _volatileBits
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
_volatileBits::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_success:
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
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:294: nibble_op_test_low1_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_low1_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_low1_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:297: TEST(low, 0xFF);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0129
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
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:298: TEST(low, 0x00);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x012a
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
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:299: }
;	genEndFunction
	ret
;	Total nibble_op_test_low1_1 function size at codegen: 9 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "success"
	.db 0x00
___str_2:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:301: nibble_op_test_low1_2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_low1_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_low1_2:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:304: TEST(low, 0x0F);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0130
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:305: TEST(low, 0xF0);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0131
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:306: }
;	genEndFunction
	ret
;	Total nibble_op_test_low1_2 function size at codegen: 9 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "success"
	.db 0x00
___str_5:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:308: nibble_op_test_low2_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_low2_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_low2_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:311: TEST(low, 0x01);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	or	a, #0x01
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x01
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0137
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
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:312: TEST(low, 0x02);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	or	a, #0x02
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0138
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
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:313: }
;	genEndFunction
	ret
;	Total nibble_op_test_low2_1 function size at codegen: 9 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "success"
	.db 0x00
___str_8:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:324: nibble_op_test_low3_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_low3_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_low3_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:327: TEST(low, 0x0E);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	or	a, #0x0e
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0e
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0147
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:328: TEST(low, 0x0D);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	or	a, #0x0d
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0148
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:329: }
;	genEndFunction
	ret
;	Total nibble_op_test_low3_1 function size at codegen: 9 bytes.
___str_9:
	.ascii "Assertion failed"
	.db 0x00
___str_10:
	.ascii "success"
	.db 0x00
___str_11:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:340: nibble_op_test_low4_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_low4_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_low4_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:343: TEST(low, 0x10);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0157
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:344: TEST(low, 0x20);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0xf0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0158
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:345: }
;	genEndFunction
	ret
;	Total nibble_op_test_low4_1 function size at codegen: 9 bytes.
___str_12:
	.ascii "Assertion failed"
	.db 0x00
___str_13:
	.ascii "success"
	.db 0x00
___str_14:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:357: nibble_op_test_high1_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_high1_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_high1_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:360: TEST(high, 0xFF);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0168
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_15
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:361: TEST(high, 0x00);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0169
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_15
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:362: }
;	genEndFunction
	ret
;	Total nibble_op_test_high1_1 function size at codegen: 9 bytes.
___str_15:
	.ascii "Assertion failed"
	.db 0x00
___str_16:
	.ascii "success"
	.db 0x00
___str_17:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:364: nibble_op_test_high1_2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_high1_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_high1_2:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:367: TEST(high, 0x0F);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0xf0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x016f
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
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:368: TEST(high, 0xF0);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0170
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
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:369: }
;	genEndFunction
	ret
;	Total nibble_op_test_high1_2 function size at codegen: 9 bytes.
___str_18:
	.ascii "Assertion failed"
	.db 0x00
___str_19:
	.ascii "success"
	.db 0x00
___str_20:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:371: nibble_op_test_high2_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_high2_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_high2_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:374: TEST(high, 0x01);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	or	a, #0x10
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x01
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0176
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_23
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_21
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:375: TEST(high, 0x02);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	or	a, #0x20
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0177
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_23
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_21
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:376: }
;	genEndFunction
	ret
;	Total nibble_op_test_high2_1 function size at codegen: 9 bytes.
___str_21:
	.ascii "Assertion failed"
	.db 0x00
___str_22:
	.ascii "success"
	.db 0x00
___str_23:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:387: nibble_op_test_high3_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_high3_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_high3_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:390: TEST(high, 0x0E);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	or	a, #0xe0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0e
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0186
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:391: TEST(high, 0x0D);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	or	a, #0xd0
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCast
;	(locations are the same)
;	genCmpEq
	cp	a, #0x0d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0187
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:392: }
;	genEndFunction
	ret
;	Total nibble_op_test_high3_1 function size at codegen: 9 bytes.
___str_24:
	.ascii "Assertion failed"
	.db 0x00
___str_25:
	.ascii "success"
	.db 0x00
___str_26:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:403: nibble_op_test_high4_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function nibble_op_test_high4_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_nibble_op_test_high4_1:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:406: TEST(high, 0x10);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00102$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0196
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_29
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_27
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:407: TEST(high, 0x20);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_success
	ld	(hl), #0x01
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	or	a, #0x0f
	ld	(bc), a
;	genAddrOf
	ld	bc, #_volatileBits+0
;	genPointerSet
	ld	a, (bc)
	and	a, #0x0f
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_success), a
; common peephole 19 loaded (#_success) from a directly instead of using hl.
;	genLabel
00105$:
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_success
	bit	0, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0197
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_29
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_27
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:408: }
;	genEndFunction
	ret
;	Total nibble_op_test_high4_1 function size at codegen: 9 bytes.
___str_27:
	.ascii "Assertion failed"
	.db 0x00
___str_28:
	.ascii "success"
	.db 0x00
___str_29:
	.ascii "cases/bitfields-nibbles/bitfields-nibbles_operation_0_patter"
	.ascii "n_1_varType_0.c"
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:423: testBitfields(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitfields
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitfields:
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:443: nibble_op_test_low1_1();
;	genCall
	call	_nibble_op_test_low1_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:444: nibble_op_test_low1_2();
;	genCall
	call	_nibble_op_test_low1_2
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:445: nibble_op_test_low2_1();
;	genCall
	call	_nibble_op_test_low2_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:449: nibble_op_test_low3_1();
;	genCall
	call	_nibble_op_test_low3_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:453: nibble_op_test_low4_1();
;	genCall
	call	_nibble_op_test_low4_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:458: nibble_op_test_high1_1();
;	genCall
	call	_nibble_op_test_high1_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:459: nibble_op_test_high1_2();
;	genCall
	call	_nibble_op_test_high1_2
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:460: nibble_op_test_high2_1();
;	genCall
	call	_nibble_op_test_high2_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:464: nibble_op_test_high3_1();
;	genCall
	call	_nibble_op_test_high3_1
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:468: nibble_op_test_high4_1();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:474: }
;	genEndFunction
	jp	_nibble_op_test_high4_1
; common peephole 152 removed unused ret.
;	Total testBitfields function size at codegen: 1 bytes.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:477: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:479: __prints("Running testBitfields\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_30
;	genCall
	call	___prints
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:480: testBitfields();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:481: }
;	genEndFunction
	jp	_testBitfields
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_30:
	.ascii "Running testBitfields"
	.db 0x0a
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:486: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:488: return "bitfields-nibbles_operation_0_pattern_1_varType_0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_31
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_0_pattern_1_varType_0.c:489: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_31:
	.ascii "bitfields-nibbles_operation_0_pattern_1_varType_0"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__success:
	.db #0x00	;  0
	.area _CABS (ABS)
