;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitfields_nibbles_operation_4_pattern_1_varType_6
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:423: testBitfields(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitfields
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitfields:
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:474: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBitfields function size at codegen: 1 bytes.
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:477: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:479: __prints("Running testBitfields\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:480: testBitfields();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:481: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBitfields"
	.db 0x0a
	.db 0x00
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:486: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:488: return "bitfields-nibbles_operation_4_pattern_1_varType_6";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-nibbles/bitfields-nibbles_operation_4_pattern_1_varType_6.c:489: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bitfields-nibbles_operation_4_pattern_1_varType_6"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
