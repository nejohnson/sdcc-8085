;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20020118_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl _n
	.globl _q
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
_q::
	.ds 2
_n::
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
;cases/./../tests/gcc-torture-execute-20020118-1.c:17: foo (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_foo::
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20020118-1.c:23: p = (signed char *) q; n = p[2];
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_q)
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:24: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:25: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:26: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:27: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:28: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:29: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:30: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:31: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:32: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;cases/./../tests/gcc-torture-execute-20020118-1.c:33: p = (signed char *) q; n = p[2];
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n+0), a
	rlca
	sbc	a, a
	ld	(_n+1), a
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-20020118-1.c:35: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
; common peephole 152 removed unused ret.
;	Total foo function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20020118-1.c:38: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20020118-1.c:40: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20020118-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20020118-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_gcc-torture-execute-20020118-1.c:7: testTortureExecute();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020118-1.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20020118-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20020118-1.c:15: return "gcc-torture-execute-20020118-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020118-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-20020118-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
