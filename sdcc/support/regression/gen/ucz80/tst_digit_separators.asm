;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_digit_separators
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDigitSeparators
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
;cases/./../tests/digit_separators.c:12: testDigitSeparators(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDigitSeparators
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testDigitSeparators::
;cases/./../tests/digit_separators.c:15: ASSERT (1'120'377 == 1120377);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/digit_separators.c:16: ASSERT (0b0'00'11'00'01 == 0b000110001);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/digit_separators.c:17: ASSERT (0x01'ff'5a == 0x01ff5a);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/digit_separators.c:18: ASSERT (012'3'4 == 01234);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/digit_separators.c:20: }
;	genEndFunction
	ret
;	Total testDigitSeparators function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1'120'377 == 1120377"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/digit_separators.c"
	.db 0x00
__str_3:
	.ascii "0b0'00'11'00'01 == 0b000110001"
	.db 0x00
__str_4:
	.ascii "0x01'ff'5a == 0x01ff5a"
	.db 0x00
__str_5:
	.ascii "012'3'4 == 01234"
	.db 0x00
;cases/tst_digit_separators.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_digit_separators.c:6: __prints("Running testDigitSeparators\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_digit_separators.c:7: testDigitSeparators();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_digit_separators.c:8: }
;	genEndFunction
	jp	_testDigitSeparators
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testDigitSeparators"
	.db 0x0a
	.db 0x00
;cases/tst_digit_separators.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_digit_separators.c:15: return "digit_separators.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_digit_separators.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "digit_separators.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
