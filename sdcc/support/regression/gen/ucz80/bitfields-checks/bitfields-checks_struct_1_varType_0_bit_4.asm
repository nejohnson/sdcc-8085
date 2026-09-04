;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitfields_checks_struct_1_varType_0_bit_4
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bit_test_byte
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
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:131: bit_test_byte(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bit_test_byte
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_bit_test_byte::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:136: AS_UINT8(volatileBits) = 1 << BIT_TO_TEST;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0x10
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:137: ASSERT(AS_UINT8(volatileBits) == (1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00243$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0089
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
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:138: ASSERT(volatileBits.bitToTest);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
;	genIfx
; common peephole 100 removed redundant or after and.
; common peephole 90b removed and by changing jump condition.
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008a
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
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:139: dummy = 0;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:140: if(volatileBits.bitToTest) dummy = 1;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
;	genIfx
; common peephole 100 removed redundant or after and.
	rlca
; common peephole 90a removed and by changing jump condition.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x01
;	genLabel
00102$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:141: ASSERT(dummy);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, -1 (ix)
	or	a, a
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
	ld	hl, #0x008d
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
00112$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:143: AS_UINT8(volatileBits) = ~(1 << BIT_TO_TEST);
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0xef
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:144: ASSERT(AS_UINT8(volatileBits) == (uint8_t)(~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genCmpEq
	cp	a, #0xef
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00244$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0090
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
00114$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:145: ASSERT(!volatileBits.bitToTest);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
;	genIfx
; common peephole 100 removed redundant or after and.
	rlca
; common peephole 90a removed and by changing jump condition.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00116$
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
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:146: dummy = 0;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:147: if(!volatileBits.bitToTest) dummy = 1;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
	rlca
	rlca
	rlca
;	genIfx
; common peephole 100 removed redundant or after and.
; common peephole 90b removed and by changing jump condition.
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x01
;	genLabel
00104$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:148: ASSERT(dummy);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00118$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0094
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
00118$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:150: AS_UINT8(volatileBits) = 0x00;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:151: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_volatileBits
	set	4, (hl)
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:152: ASSERT(AS_UINT8(volatileBits) == (1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00245$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0098
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
00120$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:154: AS_UINT8(volatileBits) = 0xFF;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0xff
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:155: volatileBits.bitToTest = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_volatileBits
	set	4, (hl)
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:156: ASSERT(AS_UINT8(volatileBits) == 0xFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00246$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x009c
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
00122$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:158: AS_UINT8(volatileBits) = 0x00;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:159: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_volatileBits
	res	4, (hl)
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:160: ASSERT(AS_UINT8(volatileBits) == 0x00);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a0
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
00124$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:162: AS_UINT8(volatileBits) = 0xFF;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0xff
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:163: volatileBits.bitToTest = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_volatileBits
	res	4, (hl)
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:164: ASSERT(AS_UINT8(volatileBits) == (uint8_t)(~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genCmpEq
	cp	a, #0xef
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00247$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a4
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
00126$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:166: AS_UINT8(volatileBits) = 0x00;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:167: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_volatileBits+0
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
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
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:168: ASSERT(AS_UINT8(volatileBits) == (1 << BIT_TO_TEST));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00248$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a8
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
00128$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:170: AS_UINT8(volatileBits) = 0xFF;
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0xff
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:171: volatileBits.bitToTest ^= 1;
;	genAddrOf
	ld	bc, #_volatileBits+0
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
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
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:172: ASSERT(AS_UINT8(volatileBits) == (uint8_t)(~(1 << BIT_TO_TEST)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_volatileBits + 0)
;	genCmpEq
	cp	a, #0xef
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00249$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ac
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
00130$:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:174: AS_UINT8(volatileBits) = 0x00; // keep it to keep environment of all assert calls the same way
;	genAddrOf
	ld	hl, #_volatileBits+0
;	genPointerSet
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:175: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total bit_test_byte function size at codegen: 16 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "AS_UINT8(volatileBits) == (1 << BIT_TO_TEST)"
	.db 0x00
___str_2:
	.ascii "cases/bitfields-checks/bitfields-checks_struct_1_varType_0_b"
	.ascii "it_4.c"
	.db 0x00
___str_3:
	.ascii "volatileBits.bitToTest"
	.db 0x00
___str_4:
	.ascii "dummy"
	.db 0x00
___str_5:
	.ascii "AS_UINT8(volatileBits) == (uint8_t)(~(1 << BIT_TO_TEST))"
	.db 0x00
___str_6:
	.ascii "!volatileBits.bitToTest"
	.db 0x00
___str_7:
	.ascii "AS_UINT8(volatileBits) == 0xFF"
	.db 0x00
___str_8:
	.ascii "AS_UINT8(volatileBits) == 0x00"
	.db 0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:231: testBitfieldsChecks(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitfieldsChecks
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitfieldsChecks:
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:234: bit_test_byte();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:236: }
;	genEndFunction
	jp	_bit_test_byte
; common peephole 152 removed unused ret.
;	Total testBitfieldsChecks function size at codegen: 1 bytes.
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:240: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:242: __prints("Running testBitfieldsChecks\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___prints
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:243: testBitfieldsChecks();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:244: }
;	genEndFunction
	jp	_testBitfieldsChecks
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_9:
	.ascii "Running testBitfieldsChecks"
	.db 0x0a
	.db 0x00
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:249: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:251: return "bitfields-checks_struct_1_varType_0_bit_4";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-checks/bitfields-checks_struct_1_varType_0_bit_4.c:252: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_10:
	.ascii "bitfields-checks_struct_1_varType_0_bit_4"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
