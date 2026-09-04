;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_genericnonintrinsicnaddr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testGeneric
	.globl _set_b
	.globl _set_a
	.globl ___prints
	.globl _bi
	.globl _ai
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
_ai::
	.ds 2
_bi::
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
;cases/./../tests/genericnonintrinsicnaddr.c:7: void set_a(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_a
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_set_a::
;cases/./../tests/genericnonintrinsicnaddr.c:9: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total set_a function size at codegen: 1 bytes.
;cases/./../tests/genericnonintrinsicnaddr.c:11: void set_b(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_b
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_set_b::
;cases/./../tests/genericnonintrinsicnaddr.c:13: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total set_b function size at codegen: 1 bytes.
;cases/./../tests/genericnonintrinsicnaddr.c:23: void testGeneric(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testGeneric
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testGeneric::
;cases/./../tests/genericnonintrinsicnaddr.c:26: ASSERT(_Generic(ai, default : 0, space_a int *: 1, space_b int* : 2) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/genericnonintrinsicnaddr.c:27: ASSERT(_Generic(bi, default : 0, space_a int *: 1, space_b int* : 2) == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/genericnonintrinsicnaddr.c:29: }
;	genEndFunction
	ret
;	Total testGeneric function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "_Generic(ai, default : 0, space_a int *: 1, space_b int* : 2"
	.ascii ") == 1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/genericnonintrinsicnaddr.c"
	.db 0x00
__str_3:
	.ascii "_Generic(bi, default : 0, space_a int *: 1, space_b int* : 2"
	.ascii ") == 2"
	.db 0x00
;cases/tst_genericnonintrinsicnaddr.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_genericnonintrinsicnaddr.c:6: __prints("Running testGeneric\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_genericnonintrinsicnaddr.c:7: testGeneric();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_genericnonintrinsicnaddr.c:8: }
;	genEndFunction
	jp	_testGeneric
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testGeneric"
	.db 0x0a
	.db 0x00
;cases/tst_genericnonintrinsicnaddr.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_genericnonintrinsicnaddr.c:15: return "genericnonintrinsicnaddr.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_genericnonintrinsicnaddr.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "genericnonintrinsicnaddr.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
