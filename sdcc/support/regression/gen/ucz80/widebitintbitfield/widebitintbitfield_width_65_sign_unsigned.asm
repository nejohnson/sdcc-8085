;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module widebitintbitfield_width_65_sign_unsigned
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testWideBitIntBitField
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
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:33: void testWideBitIntBitField(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testWideBitIntBitField
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testWideBitIntBitField::
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:54: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testWideBitIntBitField function size at codegen: 1 bytes.
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:58: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:60: __prints("Running testWideBitIntBitField\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:61: testWideBitIntBitField();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:62: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testWideBitIntBitField"
	.db 0x0a
	.db 0x00
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:67: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:69: return "widebitintbitfield_width_65_sign_unsigned";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/widebitintbitfield/widebitintbitfield_width_65_sign_unsigned.c:70: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "widebitintbitfield_width_65_sign_unsigned"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
