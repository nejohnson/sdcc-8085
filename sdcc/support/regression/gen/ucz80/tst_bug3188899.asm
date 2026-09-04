;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3188899
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug3188899
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
_testBug3188899_s1_10000_13:
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
;cases/./../tests/bug3188899.c:10: void * testBug3188899 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug3188899
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug3188899::
;cases/./../tests/bug3188899.c:14: return s2;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_testBug3188899_s2_10000_13)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3188899.c:15: }
;	genEndFunction
	ret
;	Total testBug3188899 function size at codegen: 1 bytes.
_testBug3188899_s2_10000_13:
	.dw _testBug3188899_s1_10000_13
;cases/tst_bug3188899.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3188899.c:6: __prints("Running testBug3188899\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug3188899.c:7: testBug3188899();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3188899.c:8: }
;	genEndFunction
	jp	_testBug3188899
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug3188899"
	.db 0x0a
	.db 0x00
;cases/tst_bug3188899.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3188899.c:15: return "bug3188899.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3188899.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug3188899.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
