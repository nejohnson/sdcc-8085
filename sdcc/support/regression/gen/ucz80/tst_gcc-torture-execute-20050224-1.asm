;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20050224_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _f
	.globl _e
	.globl _d
	.globl _c
	.globl _b
	.globl _a
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
_a::
	.ds 4
_b::
	.ds 4
_c::
	.ds 4
_d::
	.ds 4
_e::
	.ds 4
_f::
	.ds 4
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
;cases/./../tests/gcc-torture-execute-20050224-1.c:18: foo (int x, int y, int z)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20050224-1.c:20: ASSERT (!(x != 245 || y != 36 || z != 444));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf5
	or	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00130$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00131$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x24
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00132$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xbc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0014
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
00101$:
;cases/./../tests/gcc-torture-execute-20050224-1.c:21: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total foo function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!(x != 245 || y != 36 || z != 444)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20050224-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20050224-1.c:24: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -6
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-20050224-1.c:29: ASSERT (!(sizeof (unsigned long) < 4));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/./../tests/gcc-torture-execute-20050224-1.c:31: for (g = a; g < b; g += 0x1000)
;	genAssign
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	hl, #_a
	ld	bc, #4
	ldir
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
; common peephole 174a reused value still in bc.
	ld	d, b
	ld	e, c
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00112$:
;	genCmpLt
;	Shift into pair
	ld	hl, #_b
	ld	a, -6 (ix)
	sub	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
	jp	nc, 00110$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20050224-1.c:32: if (g < c)
;	genCmpLt
;	Shift into pair
	ld	hl, #_c
	ld	a, -6 (ix)
	sub	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20050224-1.c:33: h++;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
; common peephole 84 jumped to 00113$ directly instead of via 00165$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00165$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-20050224-1.c:34: else if (g >= d && g < e)
;	genCmpLt
;	Shift into pair
	ld	hl, #_d
	ld	a, -6 (ix)
	sub	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;	genCmpLt
;	Shift into pair
	ld	hl, #_e
	ld	a, -6 (ix)
	sub	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20050224-1.c:35: j++;
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20050224-1.c:36: else if (g < f)
;	genCmpLt
;	Shift into pair
	ld	hl, #_f
	ld	a, -6 (ix)
	sub	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00113$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20050224-1.c:37: i++;
;	genPlus
	inc	bc
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20050224-1.c:31: for (g = a; g < b; g += 0x1000)
;	genPlus
	ld	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, -5 (ix)
	add	a, #0x10
	ld	-5 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	jp	nc, 00112$
; common peephole 84 jumped to 00112$ directly instead of via 00166$.
	inc	-3 (ix)
; common peephole 159 removed unused label 00166$.
;	genGoto
	jp	00112$
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-20050224-1.c:38: foo (i, j, h);
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;	genLabel
; common peephole 159 removed unused label 00114$.
;cases/./../tests/gcc-torture-execute-20050224-1.c:39: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 14 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "!(sizeof (unsigned long) < 4)"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-20050224-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20050224-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20050224-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20050224-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20050224-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20050224-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20050224-1.c:15: return "gcc-torture-execute-20050224-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20050224-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gcc-torture-execute-20050224-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__a:
	.byte #0x00, #0x00, #0x00, #0xc0	; 3221225472
__xinit__b:
	.byte #0x00, #0x00, #0x40, #0xc0	; 3225419776
__xinit__c:
	.byte #0x58, #0xb9, #0x1b, #0xc0	; 3223042392
__xinit__d:
	.byte #0x00, #0x40, #0x26, #0xc0	; 3223732224
__xinit__e:
	.byte #0x00, #0x80, #0x28, #0xc0	; 3223879680
__xinit__f:
	.byte #0x78, #0x43, #0x2d, #0xc0	; 3224191864
	.area _CABS (ABS)
