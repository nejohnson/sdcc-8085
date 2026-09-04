;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20030221_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
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
;cases/./../tests/gcc-torture-execute-20030221-1.c:17: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
;cases/./../tests/gcc-torture-execute-20030221-1.c:19: char buf[16] = "1234567890";
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genPointerSet
	ld	(hl), #0x31
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-15 (ix), #0x32
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), #0x33
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), #0x34
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0x35
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), #0x36
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), #0x37
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), #0x38
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x39
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x30
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;cases/./../tests/gcc-torture-execute-20030221-1.c:20: char *p = buf;
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20030221-1.c:22: *p++ = (char) strlen (buf);
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_strlen
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;	genPlus
	inc	bc
;cases/./../tests/gcc-torture-execute-20030221-1.c:24: if ((buf[0] != 10) || (p - buf != 1))
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x0a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00116$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20030221-1.c:25: ASSERT (0);
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
	ld	hl, #__str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_2
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_1
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20030221-1.c:27: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-20030221-1.c:28: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_1:
	.ascii "Assertion failed"
	.db 0x00
__str_2:
	.ascii "0"
	.db 0x00
__str_3:
	.ascii "cases/./../tests/gcc-torture-execute-20030221-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20030221-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20030221-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20030221-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20030221-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20030221-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20030221-1.c:15: return "gcc-torture-execute-20030221-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20030221-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "gcc-torture-execute-20030221-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
