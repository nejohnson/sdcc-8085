;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1
	
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
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:44: bitinttype setoperand0(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function setoperand0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 5 bytes.
_setoperand0::
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:46: volatile bitinttype tmp = OPERAND0;
;	genAssign
;	genMove_o size 5 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0xfa
	ld	1 (iy), #0xe9
	ld	2 (iy), #0xd8
	ld	3 (iy), #0xc7
	ld	4 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:47: return(tmp);
;	genRet
	ld	hl, #7
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #5
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:48: }
;	genEndFunction
;	adjustStack by 5
	pop	af
	pop	af
	inc	sp
	ret
;	Total setoperand0 function size at codegen: 12 bytes.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:50: bitinttype setoperand1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function setoperand1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 5 bytes.
_setoperand1::
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:52: volatile bitinttype tmp = OPERAND1;
;	genAssign
;	genMove_o size 5 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x7f
	ld	1 (iy), #0x6e
	ld	2 (iy), #0x5d
	ld	3 (iy), #0x4c
	ld	4 (iy), #0x01
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:53: return(tmp);
;	genRet
	ld	hl, #7
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #5
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:54: }
;	genEndFunction
;	adjustStack by 5
	pop	af
	pop	af
	inc	sp
	ret
;	Total setoperand1 function size at codegen: 12 bytes.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:56: counttype setcount(void)
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
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:58: volatile counttype tmp = 33;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:59: return(tmp);
;	genRet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from #0x21 instead of going through 0 (iy).
	ld	0 (iy), #0x21
	ld	a, #0x21
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:60: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total setcount function size at codegen: 2 bytes.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:62: void testleftshift(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testleftshift
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testleftshift::
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:78: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testleftshift function size at codegen: 1 bytes.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:80: void testrightshift(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testrightshift
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testrightshift::
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:96: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testrightshift function size at codegen: 1 bytes.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:100: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:102: __prints("Running testleftshift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:104: __prints("Running testrightshift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:105: testrightshift();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:106: }
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
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:111: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:113: return "bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintshift/bitintshift_width_33_count_33_varstorage_auto_countstorage_static_direction_1.c:114: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_2:
	.ascii "bitintshift_width_33_count_33_varstorage_auto_countstorage_s"
	.ascii "tatic_direction_1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
