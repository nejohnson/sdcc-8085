;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_charconst
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCharConst
	.globl ___prints
	.globl _wc
	.globl _c
	.globl _Uc
	.globl _uc
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
_uc::
	.ds 2
_Uc::
	.ds 4
_c::
	.ds 1
_wc::
	.ds 4
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
;cases/./../tests/charconst.c:22: testCharConst(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCharConst
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testCharConst::
;cases/./../tests/charconst.c:25: ASSERT (_Generic('c', default: 1, int: 0) == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/charconst.c:26: ASSERT (_Generic(L'c', default: 1, wchar_t: 0) == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/charconst.c:28: ASSERT (_Generic(u'c', default: 1, char16_t: 0) == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/charconst.c:29: ASSERT (_Generic(U'c', default: 1, char32_t: 0) == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/charconst.c:32: }
;	genEndFunction
	ret
;	Total testCharConst function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "_Generic('c', default: 1, int: 0) == 0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/charconst.c"
	.db 0x00
__str_3:
	.ascii "_Generic(L'c', default: 1, wchar_t: 0) == 0"
	.db 0x00
__str_4:
	.ascii "_Generic(u'c', default: 1, char16_t: 0) == 0"
	.db 0x00
__str_5:
	.ascii "_Generic(U'c', default: 1, char32_t: 0) == 0"
	.db 0x00
;cases/tst_charconst.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_charconst.c:6: __prints("Running testCharConst\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_charconst.c:7: testCharConst();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_charconst.c:8: }
;	genEndFunction
	jp	_testCharConst
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testCharConst"
	.db 0x0a
	.db 0x00
;cases/tst_charconst.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_charconst.c:15: return "charconst.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_charconst.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "charconst.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__uc:
	.dw #0x0063
__xinit__Uc:
	.byte #0x63, #0x00, #0x00, #0x00	; 99
__xinit__c:
	.db #0x63	; 99	'c'
__xinit__wc:
	.byte #0x63, #0x00, #0x00, #0x00	; 99
	.area _CABS (ABS)
