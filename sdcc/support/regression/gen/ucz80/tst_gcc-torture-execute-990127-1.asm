;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_990127_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
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
;cases/./../tests/gcc-torture-execute-990127-1.c:13: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 21 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -21
	ld	hl, #-21
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-990127-1.c:20: a = 10;
;	genAssign
;fetchPairLong
	ld	hl, #0x000a
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-990127-1.c:21: b = 20;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), #0x14
	ld	-18 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-990127-1.c:22: c = 30;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), #0x1e
	ld	-16 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-990127-1.c:23: pa = &a; pb = &b; pc = &c;
;	genAddrOf
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-15 (ix), c
	ld	-14 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAddrOf
	ld	hl, #2
	add	hl, sp
	ex	de, hl
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-13 (ix), e
	ld	-12 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAddrOf
	ld	hl, #4
	add	hl, sp
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), l
	ld	-10 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-990127-1.c:25: x = 0; y = 0; z = 0;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-5 (ix), a
	ld	-4 (ix), a
;cases/./../tests/gcc-torture-execute-990127-1.c:27: for(i=0;i<10;i++){
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x00
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-990127-1.c:28: if( pa == &a ) pa = &b;
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00185$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00186$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), e
	ld	-14 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-990127-1.c:29: else pa = &a;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), c
	ld	-14 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-990127-1.c:30: while( (*pa)-- ){
;	genLabel
00130$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00107$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
	ld	-6 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMinus
	add	a, #0xff
	ld	-5 (ix), a
	ld	a, l
	adc	a, #0xff
	ld	-4 (ix), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;	genIfx
	ld	a, -6 (ix)
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/gcc-torture-execute-990127-1.c:31: x++;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00187$
	inc	-1 (ix)
00187$:
;cases/./../tests/gcc-torture-execute-990127-1.c:32: if( (*pa) < 3 ) break;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	genCmpLt
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	sub	a, #0x03
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00109$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-990127-1.c:33: else pa = &b;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), e
	ld	-14 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-990127-1.c:35: x++;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-5 (ix), l
	ld	-4 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/gcc-torture-execute-990127-1.c:36: pa = &b;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-15 (ix), e
	ld	-14 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-990127-1.c:27: for(i=0;i<10;i++){
;	genPlus
	inc	-3 (ix)
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, #0x0a
	jp	c, 00115$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-990127-1.c:39: if ((*pa) != -5 || (*pb) != -5 || x != 43)
;	genPointerGet
;fetchPairLong
; common peephole 157 used ex to load de into hl.
	ex	de, hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCmpEq
	cp	a, #0xfb
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
; common peephole 84 jumped to 00111$ directly instead of via 00188$.
	inc	c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00188$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00189$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -13 (ix)
	ld	h, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCmpEq
	cp	a, #0xfb
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
; common peephole 84 jumped to 00111$ directly instead of via 00190$.
	inc	c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00190$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00191$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2b
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00192$.
;	skipping generated iCode
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-990127-1.c:40: ASSERT (0);
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
	ld	hl, #0x0028
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
00112$:
;cases/./../tests/gcc-torture-execute-990127-1.c:42: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00117$.
;cases/./../tests/gcc-torture-execute-990127-1.c:43: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 8 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-990127-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-990127-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-990127-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-990127-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-990127-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-990127-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-990127-1.c:15: return "gcc-torture-execute-990127-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-990127-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-990127-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
