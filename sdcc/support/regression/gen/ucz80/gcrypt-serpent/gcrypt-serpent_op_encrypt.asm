;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gcrypt_serpent_op_encrypt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSerpent
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
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:850: void testSerpent (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSerpent
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSerpent::
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:878: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testSerpent function size at codegen: 1 bytes.
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:882: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:884: __prints("Running testSerpent\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:885: testSerpent();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:886: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testSerpent"
	.db 0x0a
	.db 0x00
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:891: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:893: return "gcrypt-serpent_op_encrypt";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/gcrypt-serpent/gcrypt-serpent_op_encrypt.c:894: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcrypt-serpent_op_encrypt"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
