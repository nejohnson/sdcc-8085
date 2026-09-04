;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_930111_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _wwrite
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
;cases/./../tests/gcc-torture-execute-930111-1.c:18: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-930111-1.c:21: if (wwrite((long long) 0) != 123)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_wwrite
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x7b
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-930111-1.c:22: ASSERT(0);
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
	ld	hl, #0x0016
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
;cases/./../tests/gcc-torture-execute-930111-1.c:23: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-930111-1.c:25: }
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
	.ascii "cases/./../tests/gcc-torture-execute-930111-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-930111-1.c:29: wwrite(long long i)
;	genLabel
;	genFunction
;	---------------------------------
; Function wwrite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_wwrite::
;cases/./../tests/gcc-torture-execute-930111-1.c:31: switch(i)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	ld	iy, #2
	add	iy, sp
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
	jp	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00142$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0a
	ld	iy, #2
	add	iy, sp
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x17
	ld	iy, #2
	add	iy, sp
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1c
	ld	iy, #2
	add	iy, sp
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2f
	ld	iy, #2
	add	iy, sp
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-930111-1.c:37: case 47:
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-930111-1.c:38: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/gcc-torture-execute-930111-1.c:39: default:
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-930111-1.c:40: return 123;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x007b
;cases/./../tests/gcc-torture-execute-930111-1.c:41: }
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-930111-1.c:42: }
;	genEndFunction
	pop	hl
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total wwrite function size at codegen: 6 bytes.
;cases/tst_gcc-torture-execute-930111-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-930111-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-930111-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-930111-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-930111-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-930111-1.c:15: return "gcc-torture-execute-930111-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-930111-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-930111-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
