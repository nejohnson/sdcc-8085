;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr77766
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl _f
	.globl _d
	.globl _j
	.globl _g
	.globl _e
	.globl _c
	.globl _h
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
	.ds 1
_b::
	.ds 2
_h::
	.ds 2
_c::
	.ds 1
_e::
	.ds 2
_g::
	.ds 2
_j::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_d::
	.ds 2
_f::
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
;cases/./../tests/gcc-torture-execute-pr77766.c:16: testTortureExecute (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr77766.c:31: e = 0;
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-pr77766.c:18: for (; f; f = a) {
;	genIfx
	ld	a, (_f+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_f
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;cases/./../tests/gcc-torture-execute-pr77766.c:19: g = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g), hl
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-pr77766.c:20: for (; g <= 32; ++g) {
;	genCmpGt
	ld	a, #0x20
	ld	iy, #_g
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	po, 00208$
	xor	a, #0x80
00208$:
	jp	m, 00122$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr77766.c:21: i = 0;
;	genAddrOf
	ld	bc, #_c+0
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-pr77766.c:22: for (; i < 3; i++)
;	genCmpLt
	ld	a, e
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00107$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr77766.c:23: while (1 > d)
;	genLabel
00103$:
;	genCmpGt
;	Shift into pair
	ld	hl, #_d
	ld	a, (hl)
; common peephole 96b move inc hl before sub a, #0x01
	inc	hl
	sub	a, #0x01
	ld	a, (hl)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00116$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr77766.c:24: if (c[b])
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_b)
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;cases/./../tests/gcc-torture-execute-pr77766.c:25: break;
;	genLabel
00116$:
;cases/./../tests/gcc-torture-execute-pr77766.c:22: for (; i < 3; i++)
;	genPlus
	inc	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;cases/./../tests/gcc-torture-execute-pr77766.c:26: L:
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-pr77766.c:27: if (j)
;	genIfx
	ld	a, (_j+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00122$
;cases/./../tests/gcc-torture-execute-pr77766.c:20: for (; g <= 32; ++g) {
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_g)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
;	genLabel
00122$:
;cases/./../tests/gcc-torture-execute-pr77766.c:18: for (; f; f = a) {
;	genCast
;	genMove_o size 1 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+0)
	ld	(_f+0), a
;	genMove_o size 1 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_f+1), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-pr77766.c:31: e = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr77766.c:37: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00129$.
;cases/./../tests/gcc-torture-execute-pr77766.c:38: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-pr77766.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr77766.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr77766.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr77766.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr77766.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr77766.c:15: return "gcc-torture-execute-pr77766.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr77766.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-pr77766.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__d:
	.dw #0x0005
__xinit__f:
	.dw #0x0004
	.area _CABS (ABS)
