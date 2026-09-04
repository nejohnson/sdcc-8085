;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20100430_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _wrapper
	.globl ___prints
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
_g:
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
;cases/./../tests/gcc-torture-execute-20100430-1.c:36: dummy (unsigned short s)
;	genLabel
;	genFunction
;	---------------------------------
; Function dummy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_dummy:
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g), hl
;cases/./../tests/gcc-torture-execute-20100430-1.c:38: g = s;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20100430-1.c:39: }
;	genEndFunction
	ret
;	Total dummy function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20100430-1.c:42: foo (info_t *info)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_foo:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20100430-1.c:46: for (i = 0; i < info->buf.pst1.cc11; i++)
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00107$:
;	genPointerGet
;fetchPairLong
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genCmpLt
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	po, 00145$
	xor	a, #0x80
00145$:
	jp	p, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20100430-1.c:47: for (j = 0; j < info->buf.pst2[i].cc22; j++)
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, l
	add	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, h
	adc	a, -9 (ix)
	ld	-7 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00104$:
;	genPointerGet
;fetchPairLong
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, l
	ld	a, -1 (ix)
	sbc	a, h
	jp	po, 00146$
	xor	a, #0x80
00146$:
	jp	p, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20100430-1.c:48: dummy (info->buf.pst2[i].ss[j]);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -4 (ix)
	ld	l, a
	ld	a, h
	adc	a, -3 (ix)
;	genPointerGet
;fetchPairLong
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genSend
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_dummy
	pop	de
	pop	bc
;cases/./../tests/gcc-torture-execute-20100430-1.c:47: for (j = 0; j < info->buf.pst2[i].cc22; j++)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00147$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00147$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-20100430-1.c:46: for (i = 0; i < info->buf.pst1.cc11; i++)
;	genPlus
	inc	bc
;	genGoto
	jp	00107$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20100430-1.c:50: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-20100430-1.c:51: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 8 bytes.
;cases/./../tests/gcc-torture-execute-20100430-1.c:54: wrapper (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function wrapper
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 896 bytes.
_wrapper::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -896
	ld	hl, #-896
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-20100430-1.c:57: info.buf.pst1.cc11 = 2;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), #0x02
;cases/./../tests/gcc-torture-execute-20100430-1.c:58: info.buf.pst2[0].cc22 = info.buf.pst2[1].cc22 = 8;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #228
	add	iy, sp
	ld	0 (iy), #0x08
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #5
	add	iy, sp
	ld	0 (iy), #0x08
;cases/./../tests/gcc-torture-execute-20100430-1.c:59: return foo (&info);
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20100430-1.c:60: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total wrapper function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-20100430-1.c:64: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20100430-1.c:67: wrapper();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20100430-1.c:69: }
;	genEndFunction
	jp	_wrapper
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20100430-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20100430-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20100430-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20100430-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20100430-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20100430-1.c:15: return "gcc-torture-execute-20100430-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20100430-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-20100430-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
