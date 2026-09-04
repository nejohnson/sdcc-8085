;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr61306_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _fake_bswap32
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
;cases/./../tests/gcc-torture-execute-pr61306-2.c:27: fake_bswap32 (uint32_t in)
;	genLabel
;	genFunction
;	---------------------------------
; Function fake_bswap32
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_fake_bswap32::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr61306-2.c:29: return fake_const_swab32 (in);
;	genAnd
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into b.
; common peephole 1 removed dead load from #0x0000 into de.
;	genLeftShift
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 12 loaded -4 (ix) into h directly instead of going through c.
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into de.
; common peephole 1 removed dead load from #0x00 into l.
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 7 removed dead load from -4 (ix) into c.
	ld	b, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	rlca
	sbc	a, a
	push	iy
	ld	-9 (ix), a
	pop	iy
;	genAnd
;	genMove_o size 1 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x00
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), b
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-5 (ix), a
	ld	a, -7 (ix)
	ld	-6 (ix), a
	ld	-7 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x00
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genOr
;	genMove_o size 3 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	pop	bc
	push	bc
	ld	l, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	or	a, -5 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;	genRightShift
	ld	a, #0x08
00107$:
	srl	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00108$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genOr
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	or	a, -7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	ld	b, #0x18
00109$:
	srl	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
; common peephole 159 removed unused label 00110$.
	djnz	00109$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genOr
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr61306-2.c:30: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fake_bswap32 function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-pr61306-2.c:34: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr61306-2.c:41: if (fake_bswap32 (0x81828384) != 0xff838281)
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x8384
	ld	hl, #0x8182
;	genCall
	call	_fake_bswap32
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	bc, #0x8281
	cp	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00117$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x83
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00117$
	inc	d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00117$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr61306-2.c:42: ASSERT (0);
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
	ld	hl, #0x002a
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
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-pr61306-2.c:44: }
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
	.ascii "cases/./../tests/gcc-torture-execute-pr61306-2.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr61306-2.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr61306-2.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr61306-2.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr61306-2.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr61306-2.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr61306-2.c:15: return "gcc-torture-execute-pr61306-2.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr61306-2.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr61306-2.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
