;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug1505811
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _buggy
	.globl _func2
	.globl _func1
	.globl _func0
	.globl ___prints
	.globl ___fail
	.globl _ep_init
	.globl _glbl
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
_glbl::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ep_init::
	.ds 6
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
;cases/./../tests/bug1505811.c:12: void func0() { glbl = 0; }
;	genLabel
;	genFunction
;	---------------------------------
; Function func0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func0::
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_glbl), a
; common peephole 19 loaded (#_glbl) from a directly instead of using hl.
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total func0 function size at codegen: 1 bytes.
;cases/./../tests/bug1505811.c:13: void func1() { glbl = 1; }
;	genLabel
;	genFunction
;	---------------------------------
; Function func1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func1::
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_glbl
	ld	(hl), #0x01
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total func1 function size at codegen: 1 bytes.
;cases/./../tests/bug1505811.c:14: void func2() { glbl = 2; }
;	genLabel
;	genFunction
;	---------------------------------
; Function func2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func2::
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_glbl
	ld	(hl), #0x02
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total func2 function size at codegen: 1 bytes.
;cases/./../tests/bug1505811.c:20: void buggy()
;	genLabel
;	genFunction
;	---------------------------------
; Function buggy
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_buggy::
;cases/./../tests/bug1505811.c:23: for(i = 1; i <= 2; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x01
;	genLabel
00102$:
;cases/./../tests/bug1505811.c:25: ep_init[i]();
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_ep_init
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genCall
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	call	___sdcc_call_hl
	pop	bc
;cases/./../tests/bug1505811.c:23: for(i = 1; i <= 2; i++)
;	genPlus
	inc	c
;	genCmpGt
	ld	a, #0x02
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug1505811.c:27: }
;	genEndFunction
	ret
;	Total buggy function size at codegen: 4 bytes.
;cases/./../tests/bug1505811.c:30: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug1505811.c:32: buggy();
;	genCall
	call	_buggy
;cases/./../tests/bug1505811.c:33: ASSERT(glbl == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_glbl)
	sub	a, #0x02
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1505811.c:34: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "glbl == 2"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug1505811.c"
	.db 0x00
;cases/tst_bug1505811.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug1505811.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug1505811.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1505811.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug1505811.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug1505811.c:15: return "bug1505811.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1505811.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug1505811.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__ep_init:
	.dw _func0
	.dw _func1
	.dw _func2
	.area _CABS (ABS)
