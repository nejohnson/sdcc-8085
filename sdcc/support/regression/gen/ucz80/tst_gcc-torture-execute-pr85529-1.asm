;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr85529_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _c
	.globl _s
	.globl _f
	.globl _e
	.globl _d
	.globl _b
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
_b::
	.ds 2
_d::
	.ds 2
_e::
	.ds 2
_f::
	.ds 2
_g:
	.ds 2
_s::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_c::
	.ds 2
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
;cases/./../tests/gcc-torture-execute-pr85529-1.c:16: foo (signed char i, int j)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_foo::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr85529-1.c:18: return i < 0 ? i : i << j;
;	genCmpLt
	bit	7, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
;	genLeftShift
	ld	b, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
00113$:
	add	a, a
00114$:
	djnz	00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr85529-1.c:19: }
;	genEndFunction
	ret
;	Total foo function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr85529-1.c:22: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr85529-1.c:25: signed char k = -83;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0xad
;cases/./../tests/gcc-torture-execute-pr85529-1.c:26: if (!d)
;	genIfx
	ld	a, (_d+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_d
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/gcc-torture-execute-pr85529-1.c:28: k = e || f;
;	genIfx
	ld	a, (_e+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_e
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genIfx
	ld	a, (_f+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_f
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
	ld	c, a
; common peephole 121a replaced constant #0x00 by a (which has just been tested to be #0x00).
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x01
;	genLabel
00114$:
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-pr85529-1.c:29: L:
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr85529-1.c:30: for (; b < 1; b++)
;	genCmpLt
	ld	a, (_b+0)
	sub	a, #0x01
	ld	a, (_b+1)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85529-1.c:31: s.a != (k < foo (k, 2) && (c = k = g));
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0002
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpLt
	ld	a, c
	sub	a, e
	jp	po, 00174$
	xor	a, #0x80
00174$:
	jp	p, 00117$
;	skipping generated iCode
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_g)
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 0 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_c+0), a
	rlca
	sbc	a, a
	ld	(_c+1), a
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-pr85529-1.c:30: for (; b < 1; b++)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_b)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_b), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-pr85529-1.c:32: if (c != 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c)
	dec	a
; common peephole 54 used hl instead of iy.
	ld	hl, #_c + 1
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00175$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85529-1.c:33: ASSERT (0);
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
	ld	hl, #0x0021
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
; common peephole 159 removed unused label 00106$.
;cases/./../tests/gcc-torture-execute-pr85529-1.c:34: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/./../tests/gcc-torture-execute-pr85529-1.c:36: }
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
	.ascii "cases/./../tests/gcc-torture-execute-pr85529-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr85529-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr85529-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr85529-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr85529-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr85529-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr85529-1.c:15: return "gcc-torture-execute-pr85529-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr85529-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr85529-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__c:
	.dw #0x0001
	.area _CABS (ABS)
