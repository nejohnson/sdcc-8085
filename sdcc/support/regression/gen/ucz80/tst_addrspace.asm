;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_addrspace
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSpace
	.globl _set_b
	.globl _set_a
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
;cases/./../tests/addrspace.c:6: void set_a(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_a
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_set_a::
;cases/./../tests/addrspace.c:8: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total set_a function size at codegen: 1 bytes.
;cases/./../tests/addrspace.c:10: void set_b(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_b
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_set_b::
;cases/./../tests/addrspace.c:12: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total set_b function size at codegen: 1 bytes.
;cases/./../tests/addrspace.c:26: void testSpace(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSpace
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSpace::
;cases/./../tests/addrspace.c:28: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testSpace function size at codegen: 1 bytes.
;cases/tst_addrspace.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_addrspace.c:6: __prints("Running testSpace\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_addrspace.c:7: testSpace();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_addrspace.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testSpace"
	.db 0x0a
	.db 0x00
;cases/tst_addrspace.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_addrspace.c:15: return "addrspace.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_addrspace.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "addrspace.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
