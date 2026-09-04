;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitfields_bits1_preBits_8_pattern_1_varType_4
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bit_test_7
	.globl _bit_test_6
	.globl _bit_test_5
	.globl _bit_test_4
	.globl _bit_test_3
	.globl _bit_test_2
	.globl _bit_test_1
	.globl _bit_test_0
	.globl _bits_set_value
	.globl _bits_check_value
	.globl _dummy_f
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
_bit_test_0_volatileBits_10000_22:
	.ds 3
_bit_test_1_volatileBits_10000_24:
	.ds 3
_bit_test_2_volatileBits_10000_26:
	.ds 3
_bit_test_3_volatileBits_10000_28:
	.ds 3
_bit_test_4_volatileBits_10000_30:
	.ds 3
_bit_test_5_volatileBits_10000_32:
	.ds 3
_bit_test_6_volatileBits_10000_34:
	.ds 3
_bit_test_7_volatileBits_10000_36:
	.ds 3
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:135: void dummy_f(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function dummy_f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_dummy_f::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:137: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:138: }
;	genEndFunction
	ret
;	Total dummy_f function size at codegen: 1 bytes.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:142: bits_check_value(const struct_8bits * const var, const uint8_t value)
;	genLabel
;	genFunction
;	---------------------------------
; Function bits_check_value
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bits_check_value::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:145: if(var->preBits != PRE_BIT_VALUE) return 0;
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
;	genCmpEq
	cp	a, #0xff
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00102$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:147: if(var->postBits != POST_BIT_VALUE) return 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	ld	a, (hl)
;	genCmpEq
	cp	a, #0xff
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00104$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:149: if(((struct_8bits_joined*)var)->bits != value) return 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	ld	a, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:151: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genLabel
00107$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:152: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total bits_check_value function size at codegen: 3 bytes.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:154: bits_set_value(struct_8bits * const var, const uint8_t value)
;	genLabel
;	genFunction
;	---------------------------------
; Function bits_set_value
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bits_set_value::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:157: var->preBits = PRE_BIT_VALUE;
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), #0xff
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:159: var->postBits = POST_BIT_VALUE;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genPointerSet
	ld	(hl), #0xff
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:161: ((struct_8bits_joined*)var)->bits = value;
;	genPlus
	inc	de
;	genPointerSet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:162: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total bits_set_value function size at codegen: 3 bytes.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:166: bit_test_0(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_0
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_0::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:173: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:174: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_0_volatileBits_10000_22 + 1)
	set	0, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:176: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b0
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:178: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:179: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_0_volatileBits_10000_22 + 1)
	res	0, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:181: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfe
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b5
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:183: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:184: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_0_volatileBits_10000_22+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_0_volatileBits_10000_22 + 1) + 0)
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	and	a, #0x01
	ld	e, a
	ld	a, (bc)
	and	a, #0xfe
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:186: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ba
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
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:188: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:189: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_0_volatileBits_10000_22+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_0_volatileBits_10000_22 + 1) + 0)
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	and	a, #0x01
	ld	e, a
	ld	a, (bc)
	and	a, #0xfe
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:191: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfe
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x00bf
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
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:193: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:194: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_0_volatileBits_10000_22+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_0_volatileBits_10000_22 + 1) + 0)
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	and	a, #0x01
	ld	e, a
	ld	a, (bc)
	and	a, #0xfe
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:196: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00c4
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
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:198: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:199: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_0_volatileBits_10000_22+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_0_volatileBits_10000_22 + 1) + 0)
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	and	a, #0x01
	ld	e, a
	ld	a, (bc)
	and	a, #0xfe
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:201: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfe
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_0_volatileBits_10000_22
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x00c9
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
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:202: }
;	genEndFunction
	ret
;	Total bit_test_0 function size at codegen: 13 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_2:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_3:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:205: bit_test_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_1::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:212: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:213: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_1_volatileBits_10000_24 + 1)
	set	1, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:215: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00d7
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:217: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:218: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_1_volatileBits_10000_24 + 1)
	res	1, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:220: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfd
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00dc
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:222: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:223: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_1_volatileBits_10000_24+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_1_volatileBits_10000_24 + 1) + 0)
	rrca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	and	a, #0x02
	ld	e, a
	ld	a, (bc)
	and	a, #0xfd
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:225: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e1
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
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:227: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:228: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_1_volatileBits_10000_24+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_1_volatileBits_10000_24 + 1) + 0)
	rrca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	and	a, #0x02
	ld	e, a
	ld	a, (bc)
	and	a, #0xfd
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:230: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfd
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x00e6
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
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:232: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:233: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_1_volatileBits_10000_24+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_1_volatileBits_10000_24 + 1) + 0)
	rrca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	and	a, #0x02
	ld	e, a
	ld	a, (bc)
	and	a, #0xfd
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:235: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
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
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:237: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:238: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_1_volatileBits_10000_24+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_1_volatileBits_10000_24 + 1) + 0)
	rrca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	and	a, #0x02
	ld	e, a
	ld	a, (bc)
	and	a, #0xfd
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:240: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfd
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_1_volatileBits_10000_24
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x00f0
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
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:241: }
;	genEndFunction
	ret
;	Total bit_test_1 function size at codegen: 13 bytes.
___str_4:
	.ascii "Assertion failed"
	.db 0x00
___str_5:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_6:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_7:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:244: bit_test_2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_2::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:251: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:252: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_2_volatileBits_10000_26 + 1)
	set	2, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:254: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x04
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00fe
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:256: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:257: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_2_volatileBits_10000_26 + 1)
	res	2, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:259: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfb
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0103
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:261: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:262: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_2_volatileBits_10000_26+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_2_volatileBits_10000_26 + 1) + 0)
	rrca
	rrca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	rlca
	and	a, #0x04
	ld	e, a
	ld	a, (bc)
	and	a, #0xfb
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:264: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x04
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0108
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
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:266: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:267: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_2_volatileBits_10000_26+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_2_volatileBits_10000_26 + 1) + 0)
	rrca
	rrca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	rlca
	and	a, #0x04
	ld	e, a
	ld	a, (bc)
	and	a, #0xfb
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:269: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfb
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x010d
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
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:271: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:272: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_2_volatileBits_10000_26+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_2_volatileBits_10000_26 + 1) + 0)
	rrca
	rrca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	rlca
	and	a, #0x04
	ld	e, a
	ld	a, (bc)
	and	a, #0xfb
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:274: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x04
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0112
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
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:276: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:277: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_2_volatileBits_10000_26+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_2_volatileBits_10000_26 + 1) + 0)
	rrca
	rrca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	rlca
	and	a, #0x04
	ld	e, a
	ld	a, (bc)
	and	a, #0xfb
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:279: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfb
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_2_volatileBits_10000_26
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x0117
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
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:280: }
;	genEndFunction
	ret
;	Total bit_test_2 function size at codegen: 13 bytes.
___str_8:
	.ascii "Assertion failed"
	.db 0x00
___str_9:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_10:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_11:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:283: bit_test_3(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_3::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:290: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:291: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_3_volatileBits_10000_28 + 1)
	set	3, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:293: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0125
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
00104$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:295: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:296: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_3_volatileBits_10000_28 + 1)
	res	3, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:298: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf7
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
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
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:300: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:301: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_3_volatileBits_10000_28+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_3_volatileBits_10000_28 + 1) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	rlca
	rlca
	and	a, #0x08
	ld	e, a
	ld	a, (bc)
	and	a, #0xf7
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:303: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x012f
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
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:305: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:306: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_3_volatileBits_10000_28+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_3_volatileBits_10000_28 + 1) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	rlca
	rlca
	and	a, #0x08
	ld	e, a
	ld	a, (bc)
	and	a, #0xf7
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:308: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf7
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x0134
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:310: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:311: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_3_volatileBits_10000_28+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_3_volatileBits_10000_28 + 1) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	rlca
	rlca
	and	a, #0x08
	ld	e, a
	ld	a, (bc)
	and	a, #0xf7
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:313: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0139
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
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:315: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:316: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_3_volatileBits_10000_28+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_3_volatileBits_10000_28 + 1) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	rlca
	rlca
	and	a, #0x08
	ld	e, a
	ld	a, (bc)
	and	a, #0xf7
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:318: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf7
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_3_volatileBits_10000_28
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x013e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:319: }
;	genEndFunction
	ret
;	Total bit_test_3 function size at codegen: 13 bytes.
___str_12:
	.ascii "Assertion failed"
	.db 0x00
___str_13:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_14:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_15:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:322: bit_test_4(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_4::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:329: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:330: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_4_volatileBits_10000_30 + 1)
	set	4, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:332: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x10
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x014c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:334: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:335: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_4_volatileBits_10000_30 + 1)
	res	4, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:337: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xef
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0151
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:339: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:340: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_4_volatileBits_10000_30+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_4_volatileBits_10000_30 + 1) + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	rlca
	rlca
	rlca
	and	a, #0x10
	ld	e, a
	ld	a, (bc)
	and	a, #0xef
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:342: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x10
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0156
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:344: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:345: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_4_volatileBits_10000_30+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_4_volatileBits_10000_30 + 1) + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rlca
	rlca
	rlca
	rlca
	and	a, #0x10
	ld	e, a
	ld	a, (bc)
	and	a, #0xef
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:347: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xef
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x015b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:349: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:350: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_4_volatileBits_10000_30+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_4_volatileBits_10000_30 + 1) + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	rlca
	rlca
	rlca
	and	a, #0x10
	ld	e, a
	ld	a, (bc)
	and	a, #0xef
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:352: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x10
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0160
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:354: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:355: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_4_volatileBits_10000_30+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_4_volatileBits_10000_30 + 1) + 0)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rlca
	rlca
	rlca
	rlca
	and	a, #0x10
	ld	e, a
	ld	a, (bc)
	and	a, #0xef
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:357: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xef
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_4_volatileBits_10000_30
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x0165
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:358: }
;	genEndFunction
	ret
;	Total bit_test_4 function size at codegen: 13 bytes.
___str_16:
	.ascii "Assertion failed"
	.db 0x00
___str_17:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_18:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_19:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:361: bit_test_5(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_5
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_5::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:368: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:369: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_5_volatileBits_10000_32 + 1)
	set	5, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:371: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x20
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0173
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:373: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:374: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_5_volatileBits_10000_32 + 1)
	res	5, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:376: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdf
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0178
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:378: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:379: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_5_volatileBits_10000_32+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_5_volatileBits_10000_32 + 1) + 0)
	rlca
	rlca
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rrca
	rrca
	rrca
	and	a, #0x20
	ld	e, a
	ld	a, (bc)
	and	a, #0xdf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:381: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x20
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x017d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:383: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:384: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_5_volatileBits_10000_32+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_5_volatileBits_10000_32 + 1) + 0)
	rlca
	rlca
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rrca
	rrca
	rrca
	and	a, #0x20
	ld	e, a
	ld	a, (bc)
	and	a, #0xdf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:386: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdf
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x0182
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:388: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:389: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_5_volatileBits_10000_32+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_5_volatileBits_10000_32 + 1) + 0)
	rlca
	rlca
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rrca
	rrca
	rrca
	and	a, #0x20
	ld	e, a
	ld	a, (bc)
	and	a, #0xdf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:391: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x20
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
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
	ld	hl, #___str_22
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:393: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:394: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_5_volatileBits_10000_32+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_5_volatileBits_10000_32 + 1) + 0)
	rlca
	rlca
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rrca
	rrca
	rrca
	and	a, #0x20
	ld	e, a
	ld	a, (bc)
	and	a, #0xdf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:396: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdf
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_5_volatileBits_10000_32
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x018c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:397: }
;	genEndFunction
	ret
;	Total bit_test_5 function size at codegen: 13 bytes.
___str_20:
	.ascii "Assertion failed"
	.db 0x00
___str_21:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_22:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_23:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:400: bit_test_6(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_6
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_6::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:407: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:408: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_6_volatileBits_10000_34 + 1)
	set	6, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:410: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x40
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x019a
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
00104$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:412: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:413: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_6_volatileBits_10000_34 + 1)
	res	6, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:415: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbf
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x019f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:417: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:418: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_6_volatileBits_10000_34+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_6_volatileBits_10000_34 + 1) + 0)
	rlca
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rrca
	rrca
	and	a, #0x40
	ld	e, a
	ld	a, (bc)
	and	a, #0xbf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:420: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x40
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x01a4
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
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:422: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:423: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_6_volatileBits_10000_34+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_6_volatileBits_10000_34 + 1) + 0)
	rlca
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rrca
	rrca
	and	a, #0x40
	ld	e, a
	ld	a, (bc)
	and	a, #0xbf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:425: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbf
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x01a9
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:427: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:428: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_6_volatileBits_10000_34+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_6_volatileBits_10000_34 + 1) + 0)
	rlca
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rrca
	rrca
	and	a, #0x40
	ld	e, a
	ld	a, (bc)
	and	a, #0xbf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:430: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x40
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x01ae
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
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:432: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:433: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_6_volatileBits_10000_34+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_6_volatileBits_10000_34 + 1) + 0)
	rlca
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rrca
	rrca
	and	a, #0x40
	ld	e, a
	ld	a, (bc)
	and	a, #0xbf
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:435: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbf
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_6_volatileBits_10000_34
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x01b3
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:436: }
;	genEndFunction
	ret
;	Total bit_test_6 function size at codegen: 13 bytes.
___str_24:
	.ascii "Assertion failed"
	.db 0x00
___str_25:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_26:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_27:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:439: bit_test_7(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_7
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bit_test_7::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:446: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:447: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_7_volatileBits_10000_36 + 1)
	set	7, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:449: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x80
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x01c1
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
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:451: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:452: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_bit_test_7_volatileBits_10000_36 + 1)
	res	7, (hl)
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:454: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7f
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x01c6
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
00106$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:456: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:457: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_7_volatileBits_10000_36+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_7_volatileBits_10000_36 + 1) + 0)
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rrca
	and	a, #0x80
	ld	e, a
	ld	a, (bc)
	and	a, #0x7f
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:459: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x80
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x01cb
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
00108$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:461: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:462: volatileBits.bitToTest = ! volatileBits.bitToTest;
;	genAddrOf
	ld	bc, #_bit_test_7_volatileBits_10000_36+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_7_volatileBits_10000_36 + 1) + 0)
	rlca
	and	a, #0x01
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
	rrca
	and	a, #0x80
	ld	e, a
	ld	a, (bc)
	and	a, #0x7f
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:464: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7f
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x01d0
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
00110$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:466: bits_set_value(&volatileBits, 0x00);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:467: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_7_volatileBits_10000_36+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_7_volatileBits_10000_36 + 1) + 0)
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rrca
	and	a, #0x80
	ld	e, a
	ld	a, (bc)
	and	a, #0x7f
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:469: ASSERT(bits_check_value(&volatileBits,   1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x80
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x01d5
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
00112$:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:471: bits_set_value(&volatileBits, 0xFF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_set_value
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:472: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_bit_test_7_volatileBits_10000_36+1
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_bit_test_7_volatileBits_10000_36 + 1) + 0)
	rlca
	and	a, #0x01
;	genXor
	xor	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	rrca
	and	a, #0x80
	ld	e, a
	ld	a, (bc)
	and	a, #0x7f
	or	a, e
	ld	(bc), a
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:474: ASSERT(bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7f
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bit_test_7_volatileBits_10000_36
;	genCall
	call	_bits_check_value
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
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
	ld	hl, #0x01da
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
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:475: }
;	genEndFunction
	ret
;	Total bit_test_7 function size at codegen: 13 bytes.
___str_28:
	.ascii "Assertion failed"
	.db 0x00
___str_29:
	.ascii "bits_check_value(&volatileBits, 1 << BIT_TO_TEST)"
	.db 0x00
___str_30:
	.ascii "cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_va"
	.ascii "rType_4.c"
	.db 0x00
___str_31:
	.ascii "bits_check_value(&volatileBits, ~(1 << BIT_TO_TEST))"
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:479: testBitfields(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitfields
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitfields:
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:482: bit_test_0();
;	genCall
	call	_bit_test_0
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:483: bit_test_1();
;	genCall
	call	_bit_test_1
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:484: bit_test_2();
;	genCall
	call	_bit_test_2
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:485: bit_test_3();
;	genCall
	call	_bit_test_3
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:487: bit_test_4();
;	genCall
	call	_bit_test_4
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:488: bit_test_5();
;	genCall
	call	_bit_test_5
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:489: bit_test_6();
;	genCall
	call	_bit_test_6
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:490: bit_test_7();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:492: }
;	genEndFunction
	jp	_bit_test_7
; common peephole 152 removed unused ret.
;	Total testBitfields function size at codegen: 1 bytes.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:496: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:498: __prints("Running testBitfields\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
;	genCall
	call	___prints
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:499: testBitfields();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:500: }
;	genEndFunction
	jp	_testBitfields
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_32:
	.ascii "Running testBitfields"
	.db 0x0a
	.db 0x00
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:505: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:507: return "bitfields-bits1_preBits_8_pattern_1_varType_4";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_33
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-bits1/bitfields-bits1_preBits_8_pattern_1_varType_4.c:508: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_33:
	.ascii "bitfields-bits1_preBits_8_pattern_1_varType_4"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
