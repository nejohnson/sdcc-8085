;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_1805702
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _test
	.globl ___prints
	.globl _foo
	.globl ___numCases
	.globl ___fsdiv
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_foo::
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
;cases/./../tests/bug-1805702.c:28: float __fsdiv (float a1, float a2) __nonbanked {
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsdiv
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___fsdiv::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-1805702.c:30: return (a1 + a2);
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	c, 2 (iy)
	ld	b, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-1805702.c:31: }
;	genEndFunction
	pop	iy
;	adjustStack by 4
	pop	af
	pop	af
	jp	(iy)
;	Total __fsdiv function size at codegen: 6 bytes.
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/bug-1805702.c:10: test(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test::
;cases/./../tests/bug-1805702.c:13: foo = 10;
;	genAssign
;fetchPairLong
	ld	hl, #0x000a
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_foo), hl
;cases/./../tests/bug-1805702.c:15: ASSERT(foo == 10);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-1805702.c:17: }
;	genEndFunction
	ret
;	Total test function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "foo == 10"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-1805702.c"
	.db 0x00
;cases/tst_bug-1805702.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-1805702.c:6: __prints("Running test\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-1805702.c:7: test();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-1805702.c:8: }
;	genEndFunction
	jp	_test
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running test"
	.db 0x0a
	.db 0x00
;cases/tst_bug-1805702.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-1805702.c:15: return "bug-1805702.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-1805702.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-1805702.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
