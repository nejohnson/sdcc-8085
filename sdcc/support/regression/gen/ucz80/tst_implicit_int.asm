;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_implicit_int
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testint
	.globl ___prints
	.globl _y
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
_x:
	.ds 2
_y::
	.ds 2
_testint_b_10000_13:
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
;cases/./../tests/implicit_int.c:16: void testint(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testint
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testint::
;	adjustStack by -2
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/implicit_int.c:24: }
;	genEndFunction
;	adjustStack by 2
; common peephole 50b eliminated dead push/pop pair.
	ret
;	Total testint function size at codegen: 2 bytes.
;cases/tst_implicit_int.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_implicit_int.c:6: __prints("Running testint\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_implicit_int.c:7: testint();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_implicit_int.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testint"
	.db 0x0a
	.db 0x00
;cases/tst_implicit_int.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_implicit_int.c:15: return "implicit_int.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_implicit_int.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "implicit_int.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
