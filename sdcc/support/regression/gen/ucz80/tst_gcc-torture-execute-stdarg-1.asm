;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_stdarg_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f1
	.globl _f0
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _pap
	.globl _gap
	.globl _d
	.globl _x
	.globl _bar_arg
	.globl _foo_arg
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
_foo_arg::
	.ds 2
_bar_arg::
	.ds 2
_x::
	.ds 4
_d::
	.ds 4
_gap::
	.ds 2
_pap::
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
;cases/./../tests/gcc-torture-execute-stdarg-1.c:20: foo (int v, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-stdarg-1.c:22: switch (v)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-stdarg-1.c:24: case 5: foo_arg = va_arg (ap, int); break;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
; common peephole 156b removed inc hl / dec hl pair.
; common peephole 156b removed inc hl / dec hl pair.
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_foo_arg+0), a
	inc	hl
	ld	(_foo_arg+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_foo_arg+1), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;cases/./../tests/gcc-torture-execute-stdarg-1.c:25: default: ASSERT (0);
;	genLabel
00102$:
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
	ld	hl, #0x0019
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
;cases/./../tests/gcc-torture-execute-stdarg-1.c:26: }
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-stdarg-1.c:27: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-stdarg-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-stdarg-1.c:51: f0 (int i, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function f0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f0::
;cases/./../tests/gcc-torture-execute-stdarg-1.c:53: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total f0 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-stdarg-1.c:56: f1 (int i, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f1::
;cases/./../tests/gcc-torture-execute-stdarg-1.c:60: va_end (ap);
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-stdarg-1.c:61: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-stdarg-1.c:139: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-stdarg-1.c:143: d = 31.0;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_d+0), a
	ld	(_d+1), a
	ld	iy, #_d
	ld	2 (iy), #0xf8
	ld	3 (iy), #0x41
;cases/./../tests/gcc-torture-execute-stdarg-1.c:167: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-stdarg-1.c:168: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-stdarg-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-stdarg-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-stdarg-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-stdarg-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-stdarg-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-stdarg-1.c:15: return "gcc-torture-execute-stdarg-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-stdarg-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-stdarg-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
