;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module muldiv_type_short_storage_static_attr_none
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMod
	.globl _test16to32
	.globl _testDiv
	.globl _mark
	.globl _testMul
	.globl _testUnsignedMul
	.globl _testUnsignedModDiv
	.globl ___prints
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
_testUnsignedModDiv_i_10000_13:
	.ds 2
_testUnsignedMul_i_10000_15:
	.ds 2
_testMul_i_10000_17:
	.ds 2
_testDiv_i_10000_22:
	.ds 2
_test16to32_i_10000_24:
	.ds 2
_test16to32_j_10000_24:
	.ds 2
_test16to32_ui_10000_24:
	.ds 2
_test16to32_uj_10000_24:
	.ds 2
_testMod_i_10000_26:
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
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:10: testUnsignedModDiv(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testUnsignedModDiv
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testUnsignedModDiv::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:17: i = 100;
;	genAssign
;fetchPairLong
	ld	hl, #0x0064
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testUnsignedModDiv_i_10000_13), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:20: ASSERT(result == 33);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:23: ASSERT(result == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:26: ASSERT(result == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:29: ASSERT(result == 32);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:32: }
;	genEndFunction
	ret
;	Total testUnsignedModDiv function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "result == 33"
	.db 0x00
___str_2:
	.ascii "cases/muldiv/muldiv_type_short_storage_static_attr_none.c"
	.db 0x00
___str_3:
	.ascii "result == 8"
	.db 0x00
___str_4:
	.ascii "result == 2"
	.db 0x00
___str_5:
	.ascii "result == 32"
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:35: testUnsignedMul(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testUnsignedMul
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testUnsignedMul::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:41: i = 37;
;	genAssign
;fetchPairLong
	ld	hl, #0x0025
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testUnsignedMul_i_10000_15), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:45: ASSERT(result == 111);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:48: ASSERT(result == ((unsigned short)444));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:50: }
;	genEndFunction
	ret
;	Total testUnsignedMul function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "result == 111"
	.db 0x00
___str_8:
	.ascii "cases/muldiv/muldiv_type_short_storage_static_attr_none.c"
	.db 0x00
___str_9:
	.ascii "result == ((unsigned short)444)"
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:53: testMul(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMul
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testMul::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:64: ASSERT(result == 25);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:66: ASSERT(i*-4 == -20);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:67: i = -10;
;	genAssign
;fetchPairLong
	ld	hl, #0xfff6
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testMul_i_10000_17), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:70: ASSERT(i*12 == -120);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:72: ASSERT(i*-3 == 30);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:76: }
;	genEndFunction
	ret
;	Total testMul function size at codegen: 1 bytes.
___str_10:
	.ascii "Assertion failed"
	.db 0x00
___str_11:
	.ascii "result == 25"
	.db 0x00
___str_12:
	.ascii "cases/muldiv/muldiv_type_short_storage_static_attr_none.c"
	.db 0x00
___str_13:
	.ascii "i*-4 == -20"
	.db 0x00
___str_14:
	.ascii "i*12 == -120"
	.db 0x00
___str_15:
	.ascii "i*-3 == 30"
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:78: void mark(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function mark
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_mark::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:80: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total mark function size at codegen: 1 bytes.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:83: testDiv(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDiv
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testDiv::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:90: ASSERT(i/5 == 20);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:93: ASSERT(i/-4 == -25);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:95: i = -50;
;	genAssign
;fetchPairLong
	ld	hl, #0xffce
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testDiv_i_10000_22), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:97: ASSERT(i/25 == -2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:99: ASSERT(i/-12 == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:101: ASSERT(i/4 == -12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:103: }
;	genEndFunction
	ret
;	Total testDiv function size at codegen: 1 bytes.
___str_16:
	.ascii "Assertion failed"
	.db 0x00
___str_17:
	.ascii "i/5 == 20"
	.db 0x00
___str_18:
	.ascii "cases/muldiv/muldiv_type_short_storage_static_attr_none.c"
	.db 0x00
___str_19:
	.ascii "i/-4 == -25"
	.db 0x00
___str_20:
	.ascii "i/25 == -2"
	.db 0x00
___str_21:
	.ascii "i/-12 == 4"
	.db 0x00
___str_22:
	.ascii "i/4 == -12"
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:106: test16to32(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test16to32
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test16to32::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:114: ASSERT((long)i * (long)j == 123l * (long)0xaa);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:116: ASSERT((long)i * (long)j == -123l * (long)0xaa);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:120: ASSERT((long)i * (long)j == 42l * 42l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:122: ASSERT((long)i * (long)j == -42l * 42l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:124: ASSERT((long)i * (long)j == -42l * -42l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:127: ASSERT((unsigned long)i * (unsigned long)j == 2342ul * 4223ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:128: ASSERT((long)i * (long)j == 2342l * 4223l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:129: j = -j;
;	genAssign
;fetchPairLong
	ld	hl, #0xef81
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_test16to32_j_10000_24), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:130: ASSERT((long)i * (long)j == 2342l * -4223l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:131: i = -i;
;	genAssign
;fetchPairLong
	ld	hl, #0xf6da
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_test16to32_i_10000_24), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:132: ASSERT((long)i * (long)j == -2342l * -4223l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:136: ASSERT((unsigned long)ui * (unsigned long)uj == 42ul * 42ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:139: ASSERT((unsigned long)ui * (unsigned long)uj == 2342ul * 4223ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:140: ui = 0xffff;
;	genAssign
;fetchPairLong
	ld	hl, #0xffff
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_test16to32_ui_10000_24), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:141: uj = 0x8000;
;	genAssign
;fetchPairLong
	ld	hl, #0x8000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_test16to32_uj_10000_24), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:142: ASSERT((unsigned long)ui * (unsigned long)uj == 0xfffful * 0x8000ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:144: }
;	genEndFunction
	ret
;	Total test16to32 function size at codegen: 1 bytes.
___str_23:
	.ascii "Assertion failed"
	.db 0x00
___str_24:
	.ascii "(long)i * (long)j == 123l * (long)0xaa"
	.db 0x00
___str_25:
	.ascii "cases/muldiv/muldiv_type_short_storage_static_attr_none.c"
	.db 0x00
___str_26:
	.ascii "(long)i * (long)j == -123l * (long)0xaa"
	.db 0x00
___str_27:
	.ascii "(long)i * (long)j == 42l * 42l"
	.db 0x00
___str_28:
	.ascii "(long)i * (long)j == -42l * 42l"
	.db 0x00
___str_29:
	.ascii "(long)i * (long)j == -42l * -42l"
	.db 0x00
___str_30:
	.ascii "(unsigned long)i * (unsigned long)j == 2342ul * 4223ul"
	.db 0x00
___str_31:
	.ascii "(long)i * (long)j == 2342l * 4223l"
	.db 0x00
___str_32:
	.ascii "(long)i * (long)j == 2342l * -4223l"
	.db 0x00
___str_33:
	.ascii "(long)i * (long)j == -2342l * -4223l"
	.db 0x00
___str_34:
	.ascii "(unsigned long)ui * (unsigned long)uj == 42ul * 42ul"
	.db 0x00
___str_35:
	.ascii "(unsigned long)ui * (unsigned long)uj == 2342ul * 4223ul"
	.db 0x00
___str_36:
	.ascii "(unsigned long)ui * (unsigned long)uj == 0xfffful * 0x8000ul"
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:147: testMod(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMod
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testMod::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:156: ASSERT(i%17 == 15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:157: ASSERT(i%(unsigned char)19 == 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:160: ASSERT(i%-7 == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:162: ASSERT(i%-8 == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:164: i = -49;
;	genAssign
;fetchPairLong
	ld	hl, #0xffcf
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testMod_i_10000_26), hl
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:166: ASSERT(i%3 == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:168: ASSERT(i%-5 == -4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:170: ASSERT(i%4 == -1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:172: }
;	genEndFunction
	ret
;	Total testMod function size at codegen: 1 bytes.
___str_37:
	.ascii "Assertion failed"
	.db 0x00
___str_38:
	.ascii "i%17 == 15"
	.db 0x00
___str_39:
	.ascii "cases/muldiv/muldiv_type_short_storage_static_attr_none.c"
	.db 0x00
___str_40:
	.ascii "i%(unsigned char)19 == 5"
	.db 0x00
___str_41:
	.ascii "i%-7 == 2"
	.db 0x00
___str_42:
	.ascii "i%-8 == 4"
	.db 0x00
___str_43:
	.ascii "i%3 == -1"
	.db 0x00
___str_44:
	.ascii "i%-5 == -4"
	.db 0x00
___str_45:
	.ascii "i%4 == -1"
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:176: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:178: __prints("Running testUnsignedModDiv\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_46
;	genCall
	call	___prints
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:179: testUnsignedModDiv();
;	genCall
	call	_testUnsignedModDiv
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:180: __prints("Running testUnsignedMul\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_47
;	genCall
	call	___prints
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:181: testUnsignedMul();
;	genCall
	call	_testUnsignedMul
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:182: __prints("Running testMul\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_48
;	genCall
	call	___prints
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:183: testMul();
;	genCall
	call	_testMul
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:184: __prints("Running testDiv\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_49
;	genCall
	call	___prints
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:185: testDiv();
;	genCall
	call	_testDiv
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:186: __prints("Running test16to32\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_50
;	genCall
	call	___prints
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:187: test16to32();
;	genCall
	call	_test16to32
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:188: __prints("Running testMod\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_51
;	genCall
	call	___prints
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:189: testMod();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:190: }
;	genEndFunction
	jp	_testMod
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_46:
	.ascii "Running testUnsignedModDiv"
	.db 0x0a
	.db 0x00
___str_47:
	.ascii "Running testUnsignedMul"
	.db 0x0a
	.db 0x00
___str_48:
	.ascii "Running testMul"
	.db 0x0a
	.db 0x00
___str_49:
	.ascii "Running testDiv"
	.db 0x0a
	.db 0x00
___str_50:
	.ascii "Running test16to32"
	.db 0x0a
	.db 0x00
___str_51:
	.ascii "Running testMod"
	.db 0x0a
	.db 0x00
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:195: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:197: return "muldiv_type_short_storage_static_attr_none";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_52
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/muldiv/muldiv_type_short_storage_static_attr_none.c:198: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0006
___str_52:
	.ascii "muldiv_type_short_storage_static_attr_none"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
