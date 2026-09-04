;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr88693
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _baz
	.globl _bar
	.globl _qux
	.globl _quux
	.globl _foo
	.globl _strlen
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
_bar_u_10000_48:
	.ds 9
_baz_u_10000_50:
	.ds 9
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
;cases/./../tests/gcc-torture-execute-pr88693.c:41: static unsigned char u[9] = "abcdefghi";
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_bar_u_10000_48
	ld	(hl), #0x61
;	genPlus
	ld	hl, #_bar_u_10000_48 + 1
;	genPointerSet
	ld	(hl), #0x62
;	genPlus
	ld	hl, #_bar_u_10000_48 + 2
;	genPointerSet
	ld	(hl), #0x63
;	genPlus
	ld	hl, #_bar_u_10000_48 + 3
;	genPointerSet
	ld	(hl), #0x64
;	genPlus
	ld	hl, #_bar_u_10000_48 + 4
;	genPointerSet
	ld	(hl), #0x65
;	genPlus
	ld	hl, #_bar_u_10000_48 + 5
;	genPointerSet
	ld	(hl), #0x66
;	genPlus
	ld	hl, #_bar_u_10000_48 + 6
;	genPointerSet
	ld	(hl), #0x67
;	genPlus
	ld	hl, #_bar_u_10000_48 + 7
;	genPointerSet
	ld	(hl), #0x68
;	genPlus
	ld	hl, #_bar_u_10000_48 + 8
;	genPointerSet
	ld	(hl), #0x69
;cases/./../tests/gcc-torture-execute-pr88693.c:53: static unsigned char u[] = { 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r' };
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_baz_u_10000_50
	ld	(hl), #0x6a
;	genPlus
	ld	hl, #_baz_u_10000_50 + 1
;	genPointerSet
	ld	(hl), #0x6b
;	genPlus
	ld	hl, #_baz_u_10000_50 + 2
;	genPointerSet
	ld	(hl), #0x6c
;	genPlus
	ld	hl, #_baz_u_10000_50 + 3
;	genPointerSet
	ld	(hl), #0x6d
;	genPlus
	ld	hl, #_baz_u_10000_50 + 4
;	genPointerSet
	ld	(hl), #0x6e
;	genPlus
	ld	hl, #_baz_u_10000_50 + 5
;	genPointerSet
	ld	(hl), #0x6f
;	genPlus
	ld	hl, #_baz_u_10000_50 + 6
;	genPointerSet
	ld	(hl), #0x70
;	genPlus
	ld	hl, #_baz_u_10000_50 + 7
;	genPointerSet
	ld	(hl), #0x71
;	genPlus
	ld	hl, #_baz_u_10000_50 + 8
;	genPointerSet
	ld	(hl), #0x72
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-pr88693.c:12: foo (char *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_foo::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr88693.c:14: if (strlen (p) != 9)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_strlen
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x09
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr88693.c:15: ASSERT (0);
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
	ld	hl, #0x000f
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
;cases/./../tests/gcc-torture-execute-pr88693.c:16: }
;	genEndFunction
	ret
;	Total foo function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr88693.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr88693.c:19: quux (char *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function quux
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_quux::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr88693.c:22: for (i = 0; i < 100; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-pr88693.c:23: if (p[i] != 'x')
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x78
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr88693.c:24: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0018
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
	pop	bc
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr88693.c:22: for (i = 0; i < 100; i++)
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x64
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/gcc-torture-execute-pr88693.c:25: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total quux function size at codegen: 4 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-pr88693.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr88693.c:28: qux (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function qux
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 100 bytes.
_qux::
;	adjustStack by -100
	ld	hl, #-100
	add	hl, sp
;cases/./../tests/gcc-torture-execute-pr88693.c:32: memset (b, 'x', sizeof (b));
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x64
00103$:
	ld	(hl), #0x78
	inc	hl
	djnz	00103$
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr88693.c:33: quux (b);
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_quux
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr88693.c:35: }
;	genEndFunction
;	adjustStack by 100
	ld	hl, #100
	add	hl, sp
	ld	sp, hl
	ret
;	Total qux function size at codegen: 10 bytes.
;cases/./../tests/gcc-torture-execute-pr88693.c:38: bar (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 100 bytes.
_bar::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -100
	ld	hl, #-100
	add	hl, sp
;cases/./../tests/gcc-torture-execute-pr88693.c:43: memcpy (b, u, sizeof (u));
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_bar_u_10000_48
;fetchPairLong
	ld	bc, #0x0009
	ldir
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr88693.c:44: b[sizeof (u)] = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-91 (ix), #0x00
;cases/./../tests/gcc-torture-execute-pr88693.c:45: foo (b);
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr88693.c:47: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total bar function size at codegen: 7 bytes.
;cases/./../tests/gcc-torture-execute-pr88693.c:50: baz (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function baz
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 100 bytes.
_baz::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -100
	ld	hl, #-100
	add	hl, sp
;cases/./../tests/gcc-torture-execute-pr88693.c:55: memcpy (b, u, sizeof (u));
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_baz_u_10000_50
;fetchPairLong
	ld	bc, #0x0009
	ldir
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr88693.c:56: b[sizeof (u)] = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-91 (ix), #0x00
;cases/./../tests/gcc-torture-execute-pr88693.c:57: foo (b);
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr88693.c:59: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total baz function size at codegen: 7 bytes.
;cases/./../tests/gcc-torture-execute-pr88693.c:62: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr88693.c:64: qux ();
;	genCall
	call	_qux
;cases/./../tests/gcc-torture-execute-pr88693.c:65: bar ();
;	genCall
	call	_bar
;cases/./../tests/gcc-torture-execute-pr88693.c:66: baz ();
;	genCall
;cases/./../tests/gcc-torture-execute-pr88693.c:67: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr88693.c:68: }
;	genEndFunction
	jp	_baz
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-pr88693.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr88693.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr88693.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr88693.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr88693.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr88693.c:15: return "gcc-torture-execute-pr88693.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr88693.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "gcc-torture-execute-pr88693.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
