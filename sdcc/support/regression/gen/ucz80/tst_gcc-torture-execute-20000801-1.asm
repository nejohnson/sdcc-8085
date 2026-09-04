;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20000801_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
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
;cases/./../tests/gcc-torture-execute-20000801-1.c:12: foo (char *bp, unsigned n)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -3
	push	af
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000801-1.c:15: register char *ep = bp + n;
;	genPlus
	add	a, l
	ld	-3 (ix), a
	ld	a, d
	adc	a, h
	ld	-2 (ix), a
;cases/./../tests/gcc-torture-execute-20000801-1.c:18: while (bp < ep)
;	genLabel
00101$:
;	genCmpLt
	ld	a, l
	sub	a, -3 (ix)
	ld	a, h
	sbc	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000801-1.c:20: sp = bp + 3;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	bc
	inc	bc
	inc	bc
;cases/./../tests/gcc-torture-execute-20000801-1.c:21: c = *sp;
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000801-1.c:22: *sp = *bp;
;	genPointerGet
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-20000801-1.c:23: *bp++ = c;
;	genPointerSet
	ld	(hl), e
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	de
;cases/./../tests/gcc-torture-execute-20000801-1.c:24: sp = bp + 1;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	hl
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000801-1.c:25: c = *sp;
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000801-1.c:26: *sp = *bp;
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-20000801-1.c:27: *bp++ = c;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-20000801-1.c:28: bp += 2;
;	genPlus
; common peephole 96b move inc hl before ld (de), a
	inc	hl
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20000801-1.c:30: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-20000801-1.c:33: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testTortureExecute::
;	adjustStack by -2
	push	af
;cases/./../tests/gcc-torture-execute-20000801-1.c:35: int one = 1;
;	genAssign
;fetchPairLong
	ld	hl, #0x0001
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000801-1.c:38: return;
;	genRet
;cases/./../tests/gcc-torture-execute-20000801-1.c:46: return;
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-20000801-1.c:47: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total testTortureExecute function size at codegen: 2 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20000801-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20000801-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20000801-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
;cases/tst_gcc-torture-execute-20000801-1.c:7: testTortureExecute();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000801-1.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20000801-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20000801-1.c:15: return "gcc-torture-execute-20000801-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000801-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20000801-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
