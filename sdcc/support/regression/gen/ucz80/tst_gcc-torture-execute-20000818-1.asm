;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20000818_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl _temporary_obstack
	.globl ___numCases
	.globl _yylex
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_temporary_obstack::
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
;cases/./../tests/gcc-torture-execute-20000818-1.c:25: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20000818-1.c:27: int ch = yylex ();
;	genCall
;cases/./../tests/gcc-torture-execute-20000818-1.c:29: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20000818-1.c:30: }
;	genEndFunction
	jp	_yylex
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20000818-1.c:32: int yylex (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function yylex
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_yylex::
;cases/./../tests/gcc-torture-execute-20000818-1.c:54: return ch;
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20000818-1.c:39: ch = input ();
;	genCall
	call	_input
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000818-1.c:40: if (ISALNUM (ch))
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_ISALNUM
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/gcc-torture-execute-20000818-1.c:41: obstack_1grow (&temporary_obstack, ch);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_temporary_obstack
;	genCall
	call	_obstack_1grow
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20000818-1.c:42: else if (ch != '_')
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x5f
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000818-1.c:54: return ch;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-20000818-1.c:55: }
;	genEndFunction
	ret
;	Total yylex function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20000818-1.c:57: static int input (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function input
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_input:
;cases/./../tests/gcc-torture-execute-20000818-1.c:59: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20000818-1.c:60: }
;	genEndFunction
	ret
;	Total input function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20000818-1.c:62: static int ISALNUM (int ch)
;	genLabel
;	genFunction
;	---------------------------------
; Function ISALNUM
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ISALNUM:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000818-1.c:64: return ((ch >= 'A' && ch <= 'Z')
;	genCmpLt
	ld	a, l
	sub	a, #0x41
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00111$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x5a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-20000818-1.c:65: || (ch >= 'a' && ch <= 'z')
;	genCmpLt
	ld	a, l
	sub	a, #0x61
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x7a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-20000818-1.c:66: || (ch >= '0' && ch <= '0'));
;	genCmpLt
	ld	a, l
	sub	a, #0x30
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x30
	cp	a, l
	ld	a, #0x00
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;	genLabel
00103$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x01
;	genLabel
00105$:
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20000818-1.c:67: }
;	genEndFunction
	ret
;	Total ISALNUM function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20000818-1.c:69: static void obstack_1grow (void **ptr, int ch)
;	genLabel
;	genFunction
;	---------------------------------
; Function obstack_1grow
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_obstack_1grow:
;cases/./../tests/gcc-torture-execute-20000818-1.c:71: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total obstack_1grow function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20000818-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20000818-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20000818-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000818-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20000818-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20000818-1.c:15: return "gcc-torture-execute-20000818-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000818-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-20000818-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
