;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_524685
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDivPow2
	.globl ___prints
	.globl ___fail
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
;cases/./../tests/bug-524685.c:6: testDivPow2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDivPow2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testDivPow2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/bug-524685.c:10: left = -18;
;	genAssign
;fetchPairLong
	ld	hl, #0xffee
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-524685.c:11: ASSERT(left/4 == (-18/4));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;	skipping generated iCode
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genLabel
00105$:
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
;	genCmpEq
	ld	de, #0xfffc
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00122$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/./../tests/bug-524685.c:12: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testDivPow2 function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "left/4 == (-18/4)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-524685.c"
	.db 0x00
;cases/tst_bug-524685.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-524685.c:6: __prints("Running testDivPow2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-524685.c:7: testDivPow2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-524685.c:8: }
;	genEndFunction
	jp	_testDivPow2
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testDivPow2"
	.db 0x0a
	.db 0x00
;cases/tst_bug-524685.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-524685.c:15: return "bug-524685.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-524685.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-524685.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
