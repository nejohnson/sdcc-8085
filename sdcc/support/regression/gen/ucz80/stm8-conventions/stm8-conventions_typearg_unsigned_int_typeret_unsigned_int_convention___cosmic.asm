;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module stm8_conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCallingConvention
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
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:38: testCallingConvention(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCallingConvention
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testCallingConvention::
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:47: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testCallingConvention function size at codegen: 1 bytes.
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:51: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:53: __prints("Running testCallingConvention\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:54: testCallingConvention();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:55: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testCallingConvention"
	.db 0x0a
	.db 0x00
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:60: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:62: return "stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stm8-conventions/stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention___cosmic.c:63: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_c"
	.ascii "onvention___cosmic"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
