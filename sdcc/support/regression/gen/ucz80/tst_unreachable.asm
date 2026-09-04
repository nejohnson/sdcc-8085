;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_unreachable
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testUnreachable
	.globl _f
	.globl ___prints
	.globl _i
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
_i::
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
;cases/./../tests/unreachable.c:19: void f(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f::
;cases/./../tests/unreachable.c:21: if(i)
;	genDummyRead
; common peephole 1 removed dead load from #_i into iy.
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
;cases/./../tests/unreachable.c:22: unreachable();
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/unreachable.c:23: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
;cases/./../tests/unreachable.c:27: testUnreachable(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testUnreachable
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testUnreachable::
;cases/./../tests/unreachable.c:32: f();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/unreachable.c:34: }
;	genEndFunction
	jp	_f
; common peephole 152 removed unused ret.
;	Total testUnreachable function size at codegen: 1 bytes.
;cases/tst_unreachable.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_unreachable.c:6: __prints("Running testUnreachable\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_unreachable.c:7: testUnreachable();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_unreachable.c:8: }
;	genEndFunction
	jp	_testUnreachable
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testUnreachable"
	.db 0x0a
	.db 0x00
;cases/tst_unreachable.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_unreachable.c:15: return "unreachable.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_unreachable.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "unreachable.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
