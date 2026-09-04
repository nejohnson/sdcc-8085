;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_enum
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testIntEnum
	.globl _testSignedEnum
	.globl _testIndexedEnum
	.globl _testValuesEnum
	.globl _testSimpleEnum
	.globl ___prints
	.globl ___fail
	.globl _ie
	.globl _se
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
_se::
	.ds 1
_ie::
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
;cases/./../tests/enum.c:50: testSimpleEnum(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSimpleEnum
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSimpleEnum::
;cases/./../tests/enum.c:52: ASSERT(SIMPLE_ZERO == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:53: ASSERT(SIMPLE_ONE == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:54: ASSERT(SIMPLE_TWO == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/enum.c:55: }
;	genEndFunction
	ret
;	Total testSimpleEnum function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "SIMPLE_ZERO == 0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/enum.c"
	.db 0x00
__str_3:
	.ascii "SIMPLE_ONE == 1"
	.db 0x00
__str_4:
	.ascii "SIMPLE_TWO == 2"
	.db 0x00
;cases/./../tests/enum.c:58: testValuesEnum(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testValuesEnum
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testValuesEnum::
;cases/./../tests/enum.c:60: ASSERT(VALUES_ZERO == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:61: ASSERT(VALUES_FIVE == 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:62: ASSERT(VALUES_SIX == 6);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:63: ASSERT(VALUES_SEVEN == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:64: ASSERT(VALUES_TWELVE == 12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/enum.c:65: }
;	genEndFunction
	ret
;	Total testValuesEnum function size at codegen: 1 bytes.
__str_5:
	.ascii "Assertion failed"
	.db 0x00
__str_6:
	.ascii "VALUES_ZERO == 0"
	.db 0x00
__str_7:
	.ascii "cases/./../tests/enum.c"
	.db 0x00
__str_8:
	.ascii "VALUES_FIVE == 5"
	.db 0x00
__str_9:
	.ascii "VALUES_SIX == 6"
	.db 0x00
__str_10:
	.ascii "VALUES_SEVEN == 7"
	.db 0x00
__str_11:
	.ascii "VALUES_TWELVE == 12"
	.db 0x00
;cases/./../tests/enum.c:68: testIndexedEnum(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testIndexedEnum
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testIndexedEnum::
;cases/./../tests/enum.c:70: ASSERT(INDEXED_ZERO == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:71: ASSERT(INDEXED_ZERO_ALIAS == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:72: ASSERT(INDEXED_ONE == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:73: ASSERT(INDEXED_ONE_ALIAS == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:74: ASSERT(INDEXED_ONE_ALIAS2 == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:75: ASSERT(INDEXED_TWO == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:76: ASSERT(INDEXED_TWO_ALIAS == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:77: ASSERT(INDEXED_TWO_ALIAS2 == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:78: ASSERT(INDEXED_MATH == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/enum.c:79: }
;	genEndFunction
	ret
;	Total testIndexedEnum function size at codegen: 1 bytes.
__str_12:
	.ascii "Assertion failed"
	.db 0x00
__str_13:
	.ascii "INDEXED_ZERO == 0"
	.db 0x00
__str_14:
	.ascii "cases/./../tests/enum.c"
	.db 0x00
__str_15:
	.ascii "INDEXED_ZERO_ALIAS == 0"
	.db 0x00
__str_16:
	.ascii "INDEXED_ONE == 1"
	.db 0x00
__str_17:
	.ascii "INDEXED_ONE_ALIAS == 1"
	.db 0x00
__str_18:
	.ascii "INDEXED_ONE_ALIAS2 == 1"
	.db 0x00
__str_19:
	.ascii "INDEXED_TWO == 2"
	.db 0x00
__str_20:
	.ascii "INDEXED_TWO_ALIAS == 2"
	.db 0x00
__str_21:
	.ascii "INDEXED_TWO_ALIAS2 == 2"
	.db 0x00
__str_22:
	.ascii "INDEXED_MATH == 7"
	.db 0x00
;cases/./../tests/enum.c:82: testSignedEnum(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSignedEnum
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSignedEnum::
;cases/./../tests/enum.c:84: ASSERT(SIGNED_POS == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:85: ASSERT(SIGNED_ZERO == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/enum.c:86: ASSERT(SIGNED_NEG == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/./../tests/enum.c:88: se = SIGNED_NEG;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_se
	ld	(hl), #0xff
;cases/./../tests/enum.c:89: ASSERT(se == SIGNED_NEG);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/enum.c:90: }
;	genEndFunction
	ret
;	Total testSignedEnum function size at codegen: 1 bytes.
__str_23:
	.ascii "Assertion failed"
	.db 0x00
__str_24:
	.ascii "SIGNED_POS == 1"
	.db 0x00
__str_25:
	.ascii "cases/./../tests/enum.c"
	.db 0x00
__str_26:
	.ascii "SIGNED_ZERO == 0"
	.db 0x00
__str_27:
	.ascii "SIGNED_NEG == -1"
	.db 0x00
___str_28:
	.ascii "se == SIGNED_NEG"
	.db 0x00
;cases/./../tests/enum.c:93: testIntEnum(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testIntEnum
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testIntEnum::
;cases/./../tests/enum.c:95: ASSERT(INT_ZERO == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/./../tests/enum.c:96: ASSERT(INT_256 == 256);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/./../tests/enum.c:98: ie = INT_ZERO;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_ie), hl
;cases/./../tests/enum.c:99: ASSERT(ie == INT_ZERO);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_ie+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ie
	or	a, (hl)
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
	ld	hl, #0x0063
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_31
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_33
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_29
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/./../tests/enum.c:100: ie = INT_256;
;	genAssign
;fetchPairLong
	ld	hl, #0x0100
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_ie), hl
;cases/./../tests/enum.c:101: ASSERT(ie == INT_256);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	ld	a, (_ie+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ie + 1)
	dec	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00123$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0065
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_31
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_34
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_29
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/enum.c:102: }
;	genEndFunction
	ret
;	Total testIntEnum function size at codegen: 1 bytes.
__str_29:
	.ascii "Assertion failed"
	.db 0x00
__str_30:
	.ascii "INT_ZERO == 0"
	.db 0x00
__str_31:
	.ascii "cases/./../tests/enum.c"
	.db 0x00
__str_32:
	.ascii "INT_256 == 256"
	.db 0x00
___str_33:
	.ascii "ie == INT_ZERO"
	.db 0x00
___str_34:
	.ascii "ie == INT_256"
	.db 0x00
;cases/tst_enum.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_enum.c:6: __prints("Running testSimpleEnum\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
;	genCall
	call	___prints
;cases/tst_enum.c:7: testSimpleEnum();
;	genCall
	call	_testSimpleEnum
;cases/tst_enum.c:8: __prints("Running testValuesEnum\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_36
;	genCall
	call	___prints
;cases/tst_enum.c:9: testValuesEnum();
;	genCall
	call	_testValuesEnum
;cases/tst_enum.c:10: __prints("Running testIndexedEnum\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_37
;	genCall
	call	___prints
;cases/tst_enum.c:11: testIndexedEnum();
;	genCall
	call	_testIndexedEnum
;cases/tst_enum.c:12: __prints("Running testSignedEnum\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_38
;	genCall
	call	___prints
;cases/tst_enum.c:13: testSignedEnum();
;	genCall
	call	_testSignedEnum
;cases/tst_enum.c:14: __prints("Running testIntEnum\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_39
;	genCall
	call	___prints
;cases/tst_enum.c:15: testIntEnum();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_enum.c:16: }
;	genEndFunction
	jp	_testIntEnum
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_35:
	.ascii "Running testSimpleEnum"
	.db 0x0a
	.db 0x00
___str_36:
	.ascii "Running testValuesEnum"
	.db 0x0a
	.db 0x00
___str_37:
	.ascii "Running testIndexedEnum"
	.db 0x0a
	.db 0x00
___str_38:
	.ascii "Running testSignedEnum"
	.db 0x0a
	.db 0x00
___str_39:
	.ascii "Running testIntEnum"
	.db 0x0a
	.db 0x00
;cases/tst_enum.c:21: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_enum.c:23: return "enum.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_40
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_enum.c:24: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0005
___str_40:
	.ascii "enum.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
