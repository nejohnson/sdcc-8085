;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitint_width_65_sign_unsigned
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBitInt
	.globl ___prints
	.globl _ll
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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_i::
	.ds 2
_ll::
	.ds 8
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
;cases/bitint/bitint_width_65_sign_unsigned.c:36: void testBitInt(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitInt
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitInt::
;cases/bitint/bitint_width_65_sign_unsigned.c:82: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBitInt function size at codegen: 1 bytes.
;cases/bitint/bitint_width_65_sign_unsigned.c:86: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitint/bitint_width_65_sign_unsigned.c:88: __prints("Running testBitInt\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/bitint/bitint_width_65_sign_unsigned.c:89: testBitInt();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitint/bitint_width_65_sign_unsigned.c:90: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBitInt"
	.db 0x0a
	.db 0x00
;cases/bitint/bitint_width_65_sign_unsigned.c:95: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitint/bitint_width_65_sign_unsigned.c:97: return "bitint_width_65_sign_unsigned";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitint/bitint_width_65_sign_unsigned.c:98: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bitint_width_65_sign_unsigned"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__i:
	.dw #0x002a
__xinit__ll:
	.byte #0x2a, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.area _CABS (ABS)
