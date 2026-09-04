;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3244
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _f
	.globl _bprintf
	.globl _aprintf
	.globl ___prints
	.globl ___fail
	.globl _p
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
_p::
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
;cases/./../tests/bug-3244.c:15: int aprintf(const char *c, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function aprintf
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_aprintf::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/bug-3244.c:17: ASSERT(0);
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
	ld	hl, #0x0011
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3244.c:18: }
;	genEndFunction
	pop	ix
	ret
;	Total aprintf function size at codegen: 3 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-3244.c"
	.db 0x00
;cases/./../tests/bug-3244.c:20: int bprintf(const char *c, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function bprintf
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bprintf::
;cases/./../tests/bug-3244.c:22: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3244.c:23: }
;	genEndFunction
	ret
;	Total bprintf function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "1"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/bug-3244.c"
	.db 0x00
;cases/./../tests/bug-3244.c:25: void f(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f::
;cases/./../tests/bug-3244.c:27: if (p < 0x0200)
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_p)
;	genCmpLt
	ld	a, h
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/bug-3244.c:28: aprintf("1. First time it does not evaluate to TRUE\r\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genCall
	call	_aprintf
;	adjustStack by 2
	pop	af
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/./../tests/bug-3244.c:30: bprintf("2. First time it does evaluate to FALSE\r\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
	push	hl
;	genCall
	call	_bprintf
;	adjustStack by 2
	pop	af
;	genLabel
00103$:
;cases/./../tests/bug-3244.c:32: if (p < 0x0200)
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_p)
;	genCmpLt
	ld	a, h
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/bug-3244.c:33: aprintf("3. But now it incorrectly evaluates to TRUE\r\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genCall
	call	_aprintf
;	adjustStack by 2
	pop	af
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00105$:
;cases/./../tests/bug-3244.c:35: bprintf("4. It should have been FALSE\r\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
	push	hl
;	genCall
	call	_bprintf
;	adjustStack by 2
	pop	af
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-3244.c:36: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
___str_6:
	.ascii "1. First time it does not evaluate to TRUE"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "2. First time it does evaluate to FALSE"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "3. But now it incorrectly evaluates to TRUE"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "4. It should have been FALSE"
	.db 0x0d
	.db 0x0a
	.db 0x00
;cases/./../tests/bug-3244.c:39: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3244.c:41: f();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3244.c:42: }
;	genEndFunction
	jp	_f
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3244.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3244.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___prints
;cases/tst_bug-3244.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3244.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_10:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3244.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3244.c:15: return "bug-3244.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3244.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_11:
	.ascii "bug-3244.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__p:
	.dw #0x0202
	.area _CABS (ABS)
