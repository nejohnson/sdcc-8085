;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_long_asm_line
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testLongAsmLine
	.globl ___prints
	.globl _CLKCON
	.globl _U0GCR
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
_U0GCR::
	.ds 1
_CLKCON::
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
;cases/./../tests/long_asm_line.c:17: testLongAsmLine(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testLongAsmLine
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testLongAsmLine::
;cases/./../tests/long_asm_line.c:19: U0GCR = 230400 == 2400 ? 6 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 4800 ? 7 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 9600 ? 8 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 14400 ? 8 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 19200 ? 9 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 28800 ? 9 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 38400 ? 10 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 57600 ? 10 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 76800 ? 11 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 115200 ? 11 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 153600 ? 12 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 230400 ? 12 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 230400 == 307200 ? 13 + ((CLKCON & (1 << CC2430_CLKCON_OSC)) >> CC2430_CLKCON_OSC) : 0;
;	genAnd
	ld	a, (_CLKCON+0)
	and	a, #0x40
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	rlca
	rlca
	and	a, #0x03
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0x0c
	ld	(#_U0GCR), a
; common peephole 19 loaded (#_U0GCR) from a directly instead of using hl.
;cases/./../tests/long_asm_line.c:20: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/long_asm_line.c:21: }
;	genEndFunction
	ret
;	Total testLongAsmLine function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/long_asm_line.c"
	.db 0x00
;cases/tst_long_asm_line.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_long_asm_line.c:6: __prints("Running testLongAsmLine\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_long_asm_line.c:7: testLongAsmLine();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_long_asm_line.c:8: }
;	genEndFunction
	jp	_testLongAsmLine
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testLongAsmLine"
	.db 0x0a
	.db 0x00
;cases/tst_long_asm_line.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_long_asm_line.c:15: return "long_asm_line.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_long_asm_line.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "long_asm_line.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
