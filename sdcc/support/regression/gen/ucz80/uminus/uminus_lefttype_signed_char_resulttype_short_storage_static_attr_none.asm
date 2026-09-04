;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testUMinus
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
_testUMinus_left_10000_13:
	.ds 1
_testUMinus_result_10000_13:
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
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:11: testUMinus(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testUMinus
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testUMinus::
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:19: ASSERT(result == -53);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:21: left = -76;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testUMinus_left_10000_13
	ld	(hl), #0xb4
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:22: result = -left;
;	genAssign
;fetchPairLong
	ld	hl, #0x004c
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testUMinus_result_10000_13), hl
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:24: ASSERT(result == 76);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:25: }
;	genEndFunction
	ret
;	Total testUMinus function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "result == -53"
	.db 0x00
___str_2:
	.ascii "cases/uminus/uminus_lefttype_signed_char_resulttype_short_st"
	.ascii "orage_static_attr_none.c"
	.db 0x00
___str_3:
	.ascii "result == 76"
	.db 0x00
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:28: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:30: __prints("Running testUMinus\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:31: testUMinus();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:32: }
;	genEndFunction
	jp	_testUMinus
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testUMinus"
	.db 0x0a
	.db 0x00
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:37: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:39: return "uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/uminus/uminus_lefttype_signed_char_resulttype_short_storage_static_attr_none.c:40: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "uminus_lefttype_signed_char_resulttype_short_storage_static_"
	.ascii "attr_none"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
