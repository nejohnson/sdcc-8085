;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug1458678
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDummy
	.globl _does_not_give_error
	.globl _should_not_give_error
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
;cases/./../tests/bug1458678.c:13: void should_not_give_error(char * const w)
;	genLabel
;	genFunction
;	---------------------------------
; Function should_not_give_error
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_should_not_give_error::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug1458678.c:15: w[0]='a';
;	genPointerSet
	ld	(hl), #0x61
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1458678.c:16: }
;	genEndFunction
	ret
;	Total should_not_give_error function size at codegen: 1 bytes.
;cases/./../tests/bug1458678.c:19: void does_not_give_error(char * w)
;	genLabel
;	genFunction
;	---------------------------------
; Function does_not_give_error
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_does_not_give_error::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug1458678.c:21: w[0]='a';
;	genPointerSet
	ld	(hl), #0x61
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1458678.c:22: }
;	genEndFunction
	ret
;	Total does_not_give_error function size at codegen: 1 bytes.
;cases/./../tests/bug1458678.c:32: testDummy(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDummy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testDummy::
;cases/./../tests/bug1458678.c:34: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testDummy function size at codegen: 1 bytes.
;cases/tst_bug1458678.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug1458678.c:6: __prints("Running testDummy\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug1458678.c:7: testDummy();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1458678.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testDummy"
	.db 0x0a
	.db 0x00
;cases/tst_bug1458678.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug1458678.c:15: return "bug1458678.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1458678.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug1458678.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
