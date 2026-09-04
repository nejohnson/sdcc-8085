;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_426632
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___main
	.globl ___prints
	.globl _day
	.globl _month
	.globl _year
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
_year::
	.ds 1
_month::
	.ds 1
_day::
	.ds 1
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
;cases/./../tests/bug-426632.c:16: void *__main()
;	genLabel
;	genFunction
;	---------------------------------
; Function __main
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
___main::
;	adjustStack by -7
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-426632.c:24: date_ptr = &d;
;	genAddrOf
	ld	hl, #4
	add	hl, sp
	ex	de, hl
;	genCast
;	(locations are the same)
;cases/./../tests/bug-426632.c:26: year = date_ptr->year;
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#_year), a
; common peephole 19 loaded (#_year) from a directly instead of using hl.
;cases/./../tests/bug-426632.c:27: month = date_ptr->month;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	bc
	ld	a, (bc)
	ld	(#_month), a
; common peephole 19 loaded (#_month) from a directly instead of using hl.
;cases/./../tests/bug-426632.c:28: day = date_ptr->day;
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	inc	de
	inc	de
	ld	a, (de)
	ld	(#_day), a
; common peephole 19 loaded (#_day) from a directly instead of using hl.
;cases/./../tests/bug-426632.c:32: y = 1;
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), #0x80
	ld	3 (iy), #0x3f
;cases/./../tests/bug-426632.c:33: y = y+i;
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	0 (iy), #0x33
	ld	1 (iy), #0x33
	ld	2 (iy), #0x8b
	ld	3 (iy), #0x40
;cases/./../tests/bug-426632.c:35: p = &y;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/bug-426632.c:36: return p;
;	genRet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-426632.c:37: }
;	genEndFunction
;	adjustStack by 7
	pop	af
	pop	af
	pop	af
	inc	sp
	ret
;	Total __main function size at codegen: 5 bytes.
;cases/./../tests/bug-426632.c:39: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-426632.c:41: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-426632.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-426632.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-426632.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-426632.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-426632.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-426632.c:15: return "bug-426632.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-426632.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-426632.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
