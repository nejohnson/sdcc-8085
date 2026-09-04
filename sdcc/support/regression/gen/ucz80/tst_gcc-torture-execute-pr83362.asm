;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr83362
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl _c
	.globl _e
	.globl _d
	.globl _b
	.globl _a
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
_a::
	.ds 4
_b::
	.ds 4
_d::
	.ds 4
_e::
	.ds 4
_c::
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
;cases/./../tests/gcc-torture-execute-pr83362.c:17: foo (u32 p)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_foo:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
;	genReceive
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr83362.c:19: do
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-pr83362.c:21: e /= 0xfff;
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0fff
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_e)
	ld	hl, (_e + 2)
;	genCall
	call	__divulong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), de
	ld	(_e + 2), hl
;cases/./../tests/gcc-torture-execute-pr83362.c:22: if (p > c)
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c)
	ld	c, a
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	de, #0x0000
;	genCmpGt
	ld	a, c
	sub	a, -4 (ix)
	ld	a, b
	sbc	a, -3 (ix)
	ld	a, e
	sbc	a, -2 (ix)
	ld	a, d
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr83362.c:23: d = 0;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_d+0), a
	ld	(_d+1), a
	ld	(_d+2), a
	ld	(_d+3), a
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr83362.c:24: e -= 3;
;	genMinus
;	Shift into pair
	ld	hl, #_e
	ld	a, (hl)
	add	a, #0xfd
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr83362.c:25: e *= b <= a;
;	genCmpGt
;	Shift into pair
	ld	hl, #_a
	ld	a, (hl)
	ld	iy, #_b
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 2 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 3 (iy)
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genNot
	xor	a, #0x01
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	de, #0x0000
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_e)
	ld	hl, (_e + 2)
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), de
	ld	(_e + 2), hl
;cases/./../tests/gcc-torture-execute-pr83362.c:27: while (e >= 88030);
;	genCmpLt
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x57de
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_e)
	cp	a, a
	sbc	hl, de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	ld	de, #0x0001
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	ld	hl, (_e + 2)
	sbc	hl, de
	jp	nc, 00103$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr83362.c:28: return e;
;	genRet
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_e)
	ld	hl, (_e + 2)
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/gcc-torture-execute-pr83362.c:29: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-pr83362.c:33: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr83362.c:36: u32 x = foo (1164);
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x048c
	ld	hl, #0x0000
;	genCall
	call	_foo
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr83362.c:37: if (x != 0xfd)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xfd
	or	a, d
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr83362.c:38: ASSERT (0);
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
	ld	hl, #0x0026
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
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-pr83362.c:39: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-pr83362.c:41: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr83362.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr83362.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr83362.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr83362.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr83362.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr83362.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr83362.c:15: return "gcc-torture-execute-pr83362.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr83362.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr83362.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
