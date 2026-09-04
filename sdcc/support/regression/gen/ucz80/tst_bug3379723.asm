;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3379723
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl __Check_B_By_B
	.globl ___prints
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_rGPIO_B_Output_Enable	=	0x00f0
_rGPIO_B_Input_Enable	=	0x00f1
_rGPIO_B	=	0x00f2
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
;cases/./../tests/bug3379723.c:15: UCHAR _Check_B_By_B(UCHAR iAndMask)		// pull low
;	genLabel
;	genFunction
;	---------------------------------
; Function _Check_B_By_B
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
__Check_B_By_B::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3379723.c:19: iOrMask = ~iAndMask;
;	genXor
	ld	e, a
; common peephole 98 removed redundant load from e into a.
	cpl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3379723.c:20: rGPIO_B_Input_Enable &= iAndMask;
;	genAnd
	in	a, (_rGPIO_B_Input_Enable)
	and	a, e
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	out	(_rGPIO_B_Input_Enable), a
;cases/./../tests/bug3379723.c:21: rGPIO_B_Output_Enable |= iOrMask;	
;	genOr
	in	a, (_rGPIO_B_Output_Enable)
	or	a, b
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	out	(_rGPIO_B_Output_Enable), a
;cases/./../tests/bug3379723.c:22: rGPIO_B |= iOrMask;
;	genOr
	in	a, (_rGPIO_B)
	or	a, b
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	out	(_rGPIO_B), a
;cases/./../tests/bug3379723.c:23: iVal = rGPIO_B;
;	genAssign
	in	a, (_rGPIO_B)
;cases/./../tests/bug3379723.c:24: iVal &= iAndMask;
;	genAnd
	and	a, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3379723.c:25: rGPIO_B &= iAndMask;
;	genAnd
	in	a, (_rGPIO_B)
	and	a, e
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	out	(_rGPIO_B), a
;cases/./../tests/bug3379723.c:26: rGPIO_B_Output_Enable &= iAndMask;	
;	genAnd
	in	a, (_rGPIO_B_Output_Enable)
	and	a, e
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	out	(_rGPIO_B_Output_Enable), a
;cases/./../tests/bug3379723.c:27: rGPIO_B_Input_Enable |= iOrMask;
;	genOr
	in	a, (_rGPIO_B_Input_Enable)
	or	a, b
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	out	(_rGPIO_B_Input_Enable), a
;cases/./../tests/bug3379723.c:29: return iVal;
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3379723.c:30: }
;	genEndFunction
	ret
;	Total _Check_B_By_B function size at codegen: 1 bytes.
;cases/./../tests/bug3379723.c:34: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3379723.c:36: ASSERT (1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3379723.c:37: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug3379723.c"
	.db 0x00
;cases/tst_bug3379723.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3379723.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug3379723.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3379723.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3379723.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3379723.c:15: return "bug3379723.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3379723.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug3379723.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
