;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_960909_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f
	.globl _ffs
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
;cases/./../tests/gcc-torture-execute-960909-1.c:12: ffs (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function ffs
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_ffs::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-960909-1.c:16: if (x == 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-960909-1.c:17: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-960909-1.c:19: for (bit = 1, mask = 1; !(x & mask); bit++, mask <<= 1)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0001 from hl for load into de.
	ld	hl,#0x0001
	ld	e,l
	ld	d,h
;	genLabel
00105$:
;	genAnd
	ld	a, l
	and	a, c
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	and	a, b
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	genPlus
	inc	de
;	genLeftShift
	add	hl, hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-960909-1.c:22: return bit;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-960909-1.c:23: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total ffs function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-960909-1.c:25: void f (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-960909-1.c:28: y = ffs (x) - 1;
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_ffs
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	de
;cases/./../tests/gcc-torture-execute-960909-1.c:29: if (y < 0) 
;	genCmpLt
	bit	7, d
	ret	z
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-960909-1.c:30: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-960909-1.c:31: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-960909-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-960909-1.c:34: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-960909-1.c:36: f (1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
;cases/./../tests/gcc-torture-execute-960909-1.c:37: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-960909-1.c:38: }
;	genEndFunction
	jp	_f
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-960909-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-960909-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-960909-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-960909-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-960909-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-960909-1.c:15: return "gcc-torture-execute-960909-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-960909-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-960909-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
