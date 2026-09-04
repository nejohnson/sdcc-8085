;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr78559
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _fn2
	.globl ___prints
	.globl ___fail
	.globl _d
	.globl _g
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
_g::
	.ds 2
_d::
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
;cases/./../tests/gcc-torture-execute-pr78559.c:17: fn2 (int p1, int p2)
;	genLabel
;	genFunction
;	---------------------------------
; Function fn2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fn2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr78559.c:19: return p2 >= 2 || 5 >> p2 ? p1 : p1 << p2;
;	genCmpLt
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00106$.
;	skipping generated iCode
;	genRightShift
	ld	b, e
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x05
	xor	a, a
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
00117$:
	sra	a
	rr	c
00118$:
	djnz	00117$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
;	genLabel
; common peephole 159 removed unused label 00106$.
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00103$.
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
00119$:
	add	hl, hl
00120$:
	dec	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00119$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr78559.c:20: }
;	genEndFunction
	ret
;	Total fn2 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr78559.c:23: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr78559.c:25: int result = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;cases/./../tests/gcc-torture-execute-pr78559.c:26: lbl_2582:
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr78559.c:27: if (g)
;	genIfx
	ld	a, (_g+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_g
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00133$
;cases/./../tests/gcc-torture-execute-pr78559.c:29: for (int c = -3; c; c++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0xfffd
;	genLabel
00112$:
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/gcc-torture-execute-pr78559.c:30: result = fn2 (1, g);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_g)
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
	call	_fn2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-pr78559.c:29: for (int c = -3; c; c++)
;	genPlus
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;cases/./../tests/gcc-torture-execute-pr78559.c:34: for (int i = 0; i < 2; i += 2)
;	genLabel
00133$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00115$:
;	genCmpLt
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr78559.c:35: if (d)
;	genIfx
	ld	a, (_d+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_d
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;cases/./../tests/gcc-torture-execute-pr78559.c:34: for (int i = 0; i < 2; i += 2)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x02
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr78559.c:38: if (result != 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00184$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr78559.c:39: ASSERT (0);
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
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0027
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_2
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/./../tests/gcc-torture-execute-pr78559.c:40: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00117$.
;cases/./../tests/gcc-torture-execute-pr78559.c:41: }
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
	.ascii "cases/./../tests/gcc-torture-execute-pr78559.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr78559.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr78559.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr78559.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr78559.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr78559.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr78559.c:15: return "gcc-torture-execute-pr78559.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr78559.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr78559.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__g:
	.dw #0x0014
__xinit__d:
	.dw #0x0000
	.area _CABS (ABS)
