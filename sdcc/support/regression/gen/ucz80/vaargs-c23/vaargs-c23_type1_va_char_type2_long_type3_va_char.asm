;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module vaargs_c23_type1_va_char_type2_long_type3_va_char
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testArgs
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
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:93: testArgs(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testArgs
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testArgs::
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:112: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testArgs function size at codegen: 1 bytes.
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:116: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:118: __prints("Running testArgs\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:119: testArgs();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:120: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testArgs"
	.db 0x0a
	.db 0x00
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:125: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:127: return "vaargs-c23_type1_va_char_type2_long_type3_va_char";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/vaargs-c23/vaargs-c23_type1_va_char_type2_long_type3_va_char.c:128: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "vaargs-c23_type1_va_char_type2_long_type3_va_char"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
