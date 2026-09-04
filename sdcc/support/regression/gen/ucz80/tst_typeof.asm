;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_typeof
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTypeof
	.globl _g2
	.globl _g1
	.globl _g0
	.globl ___prints
	.globl ___numCases
	.globl _l7
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
;cases/./../tests/typeof.c:12: void g0(long l)
;	genLabel
;	genFunction
;	---------------------------------
; Function g0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g0::
;cases/./../tests/typeof.c:16: ASSERT(sizeof(i) == sizeof(int));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/typeof.c:17: }
;	genEndFunction
	ret
;	Total g0 function size at codegen: 1 bytes.
_l7:
	.byte #0x07, #0x00, #0x00, #0x00	;  7
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "sizeof(i) == sizeof(int)"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/typeof.c"
	.db 0x00
;cases/./../tests/typeof.c:19: void g1(long l)
;	genLabel
;	genFunction
;	---------------------------------
; Function g1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g1::
;cases/./../tests/typeof.c:23: ASSERT(sizeof(i) == sizeof(long));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/typeof.c:24: }
;	genEndFunction
	ret
;	Total g1 function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "sizeof(i) == sizeof(long)"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/typeof.c"
	.db 0x00
;cases/./../tests/typeof.c:26: void g2(char c)
;	genLabel
;	genFunction
;	---------------------------------
; Function g2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g2::
;cases/./../tests/typeof.c:30: ASSERT(sizeof(i) == sizeof(int));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/typeof.c:31: }
;	genEndFunction
	ret
;	Total g2 function size at codegen: 1 bytes.
__str_6:
	.ascii "Assertion failed"
	.db 0x00
__str_7:
	.ascii "sizeof(i) == sizeof(int)"
	.db 0x00
__str_8:
	.ascii "cases/./../tests/typeof.c"
	.db 0x00
;cases/./../tests/typeof.c:35: testTypeof(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTypeof
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTypeof::
;cases/./../tests/typeof.c:38: g0(0);
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_g0
;cases/./../tests/typeof.c:39: g1(0);
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_g1
;cases/./../tests/typeof.c:40: g2(0);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	call	_g2
;cases/./../tests/typeof.c:41: ASSERT(sizeof(l7) == sizeof(long));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/typeof.c:43: }
;	genEndFunction
	ret
;	Total testTypeof function size at codegen: 1 bytes.
__str_9:
	.ascii "Assertion failed"
	.db 0x00
__str_10:
	.ascii "sizeof(l7) == sizeof(long)"
	.db 0x00
__str_11:
	.ascii "cases/./../tests/typeof.c"
	.db 0x00
;cases/tst_typeof.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_typeof.c:6: __prints("Running testTypeof\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___prints
;cases/tst_typeof.c:7: testTypeof();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_typeof.c:8: }
;	genEndFunction
	jp	_testTypeof
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_12:
	.ascii "Running testTypeof"
	.db 0x0a
	.db 0x00
;cases/tst_typeof.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_typeof.c:15: return "typeof.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_typeof.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_13:
	.ascii "typeof.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
