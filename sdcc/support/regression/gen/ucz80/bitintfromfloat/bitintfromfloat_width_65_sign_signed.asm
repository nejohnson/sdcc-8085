;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintfromfloat_width_65_sign_signed
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCast
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
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:26: void testCast (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCast
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testCast::
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:34: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testCast function size at codegen: 1 bytes.
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:38: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:40: __prints("Running testCast\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:41: testCast();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:42: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testCast"
	.db 0x0a
	.db 0x00
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:47: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:49: return "bitintfromfloat_width_65_sign_signed";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintfromfloat/bitintfromfloat_width_65_sign_signed.c:50: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bitintfromfloat_width_65_sign_signed"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
