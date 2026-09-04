;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testrightshift
	.globl _testleftshift
	.globl _setcount
	.globl _setoperand1
	.globl _setoperand0
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
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:44: bitinttype setoperand0(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function setoperand0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_setoperand0::
;	adjustStack by -2
	push	af
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:46: volatile bitinttype tmp = OPERAND0;
;	genAssign
;fetchPairLong
	ld	hl, #0xe9fa
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:47: return(tmp);
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:48: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total setoperand0 function size at codegen: 2 bytes.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:50: bitinttype setoperand1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function setoperand1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_setoperand1::
;	adjustStack by -2
	push	af
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:52: volatile bitinttype tmp = OPERAND1;
;	genAssign
;fetchPairLong
	ld	hl, #0x6e7f
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:53: return(tmp);
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:54: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total setoperand1 function size at codegen: 2 bytes.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:56: counttype setcount(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function setcount
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_setcount::
;	adjustStack by -1
	dec	sp
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:58: volatile counttype tmp = 7;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:59: return(tmp);
;	genRet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from #0x07 instead of going through 0 (iy).
	ld	0 (iy), #0x07
	ld	a, #0x07
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:60: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total setcount function size at codegen: 2 bytes.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:62: void testleftshift(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testleftshift
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testleftshift::
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:78: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testleftshift function size at codegen: 1 bytes.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:80: void testrightshift(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testrightshift
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testrightshift::
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:96: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testrightshift function size at codegen: 1 bytes.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:100: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:102: __prints("Running testleftshift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:104: __prints("Running testrightshift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:105: testrightshift();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:106: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testleftshift"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "Running testrightshift"
	.db 0x0a
	.db 0x00
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:111: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:113: return "bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_16_count_7_varstorage_auto_countstorage_static_direction_0.c:114: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_2:
	.ascii "bitintshift_width_16_count_7_varstorage_auto_countstorage_st"
	.ascii "atic_direction_0"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
