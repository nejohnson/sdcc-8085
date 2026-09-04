;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug2956580
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _foo
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
;cases/./../tests/bug2956580.c:9: char foo(const char* s)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_foo::
;	adjustStack by -1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug2956580.c:15: a[*++s] |= 1;
;	genPointerGet
;fetchPairLong
; common peephole 96c move inc hl before dec sp
	inc	hl
	dec	sp
;	_moveFrom_tpair_()
	ld	e, (hl)
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
	add	hl, de
;	genPointerGet
;	genOr
;	genPointerSet
; common peephole 75 set bit 0 of (hl) directly instead of going through a.
	set	0, (hl)
; common peephole 1 removed dead load from (hl) into a.
;cases/./../tests/bug2956580.c:16: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug2956580.c:17: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total foo function size at codegen: 2 bytes.
;cases/./../tests/bug2956580.c:20: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug2956580.c:22: ASSERT (1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug2956580.c:23: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug2956580.c"
	.db 0x00
;cases/tst_bug2956580.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug2956580.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug2956580.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2956580.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug2956580.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug2956580.c:15: return "bug2956580.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2956580.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug2956580.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
