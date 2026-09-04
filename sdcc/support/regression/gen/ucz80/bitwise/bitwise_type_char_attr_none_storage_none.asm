;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitwise_type_char_attr_none_storage_none
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testXor
	.globl _testOr
	.globl _testAnd
	.globl _testTwoOpBitwise
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
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:10: testTwoOpBitwise(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTwoOpBitwise
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTwoOpBitwise::
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:17: ASSERT((char)(left & right) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:18: ASSERT((char)(right & left) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:19: ASSERT((char)(left & 0xc1ec) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:20: ASSERT((char)(0x3df7 & right) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:24: ASSERT((char)(left | right) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:25: ASSERT((char)(right | left) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:26: ASSERT((char)(left | 0xc1ec) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:27: ASSERT((char)(0x3df7 | right) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:29: ASSERT((char)(left ^ right) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:30: ASSERT((char)(right ^ left) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:31: ASSERT((char)(left ^ 0xc1ec) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:32: ASSERT((char)(0x3df7 ^ right) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:38: ASSERT((char)(~left) == (char)0xFFFFC208);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:42: }
;	genEndFunction
	ret
;	Total testTwoOpBitwise function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(char)(left & right) == (char)0x1E4"
	.db 0x00
___str_2:
	.ascii "cases/bitwise/bitwise_type_char_attr_none_storage_none.c"
	.db 0x00
___str_3:
	.ascii "(char)(right & left) == (char)0x1E4"
	.db 0x00
___str_4:
	.ascii "(char)(left & 0xc1ec) == (char)0x1E4"
	.db 0x00
___str_5:
	.ascii "(char)(0x3df7 & right) == (char)0x1E4"
	.db 0x00
___str_6:
	.ascii "(char)(left | right) == (char)0xFDFF"
	.db 0x00
___str_7:
	.ascii "(char)(right | left) == (char)0xFDFF"
	.db 0x00
___str_8:
	.ascii "(char)(left | 0xc1ec) == (char)0xFDFF"
	.db 0x00
___str_9:
	.ascii "(char)(0x3df7 | right) == (char)0xFDFF"
	.db 0x00
___str_10:
	.ascii "(char)(left ^ right) == (char)0xFC1B"
	.db 0x00
___str_11:
	.ascii "(char)(right ^ left) == (char)0xFC1B"
	.db 0x00
___str_12:
	.ascii "(char)(left ^ 0xc1ec) == (char)0xFC1B"
	.db 0x00
___str_13:
	.ascii "(char)(0x3df7 ^ right) == (char)0xFC1B"
	.db 0x00
___str_14:
	.ascii "(char)(~left) == (char)0xFFFFC208"
	.db 0x00
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:45: testAnd(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAnd
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testAnd::
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:78: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:85: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:91: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:98: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:107: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:113: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:121: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:127: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:135: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:141: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:149: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:155: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:164: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:170: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:176: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:182: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00149$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:189: }
;	genEndFunction
	ret
;	Total testAnd function size at codegen: 1 bytes.
___str_15:
	.ascii "Assertion failed"
	.db 0x00
___str_16:
	.ascii "res == 1"
	.db 0x00
___str_17:
	.ascii "cases/bitwise/bitwise_type_char_attr_none_storage_none.c"
	.db 0x00
___str_18:
	.ascii "res == 0"
	.db 0x00
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:192: testOr(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testOr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testOr::
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:206: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:213: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:220: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:226: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:236: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:245: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:251: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:257: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00125$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:260: }
;	genEndFunction
	ret
;	Total testOr function size at codegen: 1 bytes.
___str_19:
	.ascii "Assertion failed"
	.db 0x00
___str_20:
	.ascii "res == 1"
	.db 0x00
___str_21:
	.ascii "cases/bitwise/bitwise_type_char_attr_none_storage_none.c"
	.db 0x00
___str_22:
	.ascii "res == 0"
	.db 0x00
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:263: testXor(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testXor
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testXor::
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:275: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:282: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:289: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:296: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:303: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:309: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:316: ASSERT(res == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:322: ASSERT(res == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00125$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:325: }
;	genEndFunction
	ret
;	Total testXor function size at codegen: 1 bytes.
___str_23:
	.ascii "Assertion failed"
	.db 0x00
___str_24:
	.ascii "res == 1"
	.db 0x00
___str_25:
	.ascii "cases/bitwise/bitwise_type_char_attr_none_storage_none.c"
	.db 0x00
___str_26:
	.ascii "res == 0"
	.db 0x00
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:328: testBug_1777758(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug_1777758
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug_1777758:
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:334: ASSERT(ep == 127);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:335: }
;	genEndFunction
	ret
;	Total testBug_1777758 function size at codegen: 1 bytes.
___str_27:
	.ascii "Assertion failed"
	.db 0x00
___str_28:
	.ascii "ep == 127"
	.db 0x00
___str_29:
	.ascii "cases/bitwise/bitwise_type_char_attr_none_storage_none.c"
	.db 0x00
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:339: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:341: __prints("Running testTwoOpBitwise\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_30
;	genCall
	call	___prints
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:342: testTwoOpBitwise();
;	genCall
	call	_testTwoOpBitwise
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:343: __prints("Running testAnd\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___prints
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:344: testAnd();
;	genCall
	call	_testAnd
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:345: __prints("Running testOr\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
;	genCall
	call	___prints
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:346: testOr();
;	genCall
	call	_testOr
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:347: __prints("Running testXor\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
;	genCall
	call	___prints
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:348: testXor();
;	genCall
	call	_testXor
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:349: __prints("Running testBug_1777758\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_34
;	genCall
	call	___prints
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:350: testBug_1777758();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:351: }
;	genEndFunction
	jp	_testBug_1777758
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_30:
	.ascii "Running testTwoOpBitwise"
	.db 0x0a
	.db 0x00
___str_31:
	.ascii "Running testAnd"
	.db 0x0a
	.db 0x00
___str_32:
	.ascii "Running testOr"
	.db 0x0a
	.db 0x00
___str_33:
	.ascii "Running testXor"
	.db 0x0a
	.db 0x00
___str_34:
	.ascii "Running testBug_1777758"
	.db 0x0a
	.db 0x00
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:356: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:358: return "bitwise_type_char_attr_none_storage_none";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_35
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitwise/bitwise_type_char_attr_none_storage_none.c:359: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0005
___str_35:
	.ascii "bitwise_type_char_attr_none_storage_none"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
