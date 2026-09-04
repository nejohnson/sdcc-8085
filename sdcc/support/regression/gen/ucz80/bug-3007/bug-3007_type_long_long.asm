;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3007_type_long_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug2
	.globl _inc2
	.globl _testBug
	.globl _inc
	.globl ___prints
	.globl ___fail
	.globl _a
	.globl _a2
	.globl _a1
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
_a1::
	.ds 8
_a2::
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_a::
	.ds 8
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
;cases/bug-3007/bug-3007_type_long_long.c:8: void inc(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inc::
;cases/bug-3007/bug-3007_type_long_long.c:10: a++;
;	genPlus
	ld	iy, #_a
	inc	0 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	1 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	2 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	3 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	4 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	5 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	6 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	7 (iy)
; common peephole 159 removed unused label 00103$.
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_long_long.c:11: }
;	genEndFunction
	ret
;	Total inc function size at codegen: 1 bytes.
;cases/bug-3007/bug-3007_type_long_long.c:13: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bug-3007/bug-3007_type_long_long.c:16: for (i = 0; i < (long long)300; i++)
;	genAssign
;	genMove_o size 8 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x2c
	ld	-7 (ix), #0x01
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00104$:
;cases/bug-3007/bug-3007_type_long_long.c:17: inc();
;	genCall
	call	_inc
;	genMinus
	ld	a, -8 (ix)
	add	a, #0xff
	ld	-8 (ix), a
	ld	a, -7 (ix)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-6 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	a, -2 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, -1 (ix)
	adc	a, #0xff
;cases/bug-3007/bug-3007_type_long_long.c:16: for (i = 0; i < (long long)300; i++)
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;cases/bug-3007/bug-3007_type_long_long.c:18: ASSERT (a == (long long)300);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a)
	sub	a, #0x2c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a + 1)
	dec	a
	ld	iy, #_a
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
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
00105$:
;cases/bug-3007/bug-3007_type_long_long.c:19: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "a == (long long)300"
	.db 0x00
___str_2:
	.ascii "cases/bug-3007/bug-3007_type_long_long.c"
	.db 0x00
;cases/bug-3007/bug-3007_type_long_long.c:23: void inc2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inc2::
;cases/bug-3007/bug-3007_type_long_long.c:25: while(--a1)
;	genLabel
00101$:
;	genMinus
;	Shift into pair
	ld	hl, #_a1
	ld	a, (hl)
	add	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
;	genIfx
	ld	a, (_a1+7)
	ld	iy, #_a1
	or	a, 6 (iy)
	or	a, 5 (iy)
	or	a, 4 (iy)
	or	a, 3 (iy)
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
	ret	z
; common peephole 161 replaced jump by return.
;cases/bug-3007/bug-3007_type_long_long.c:26: a2++;
;	genPlus
	ld	iy, #_a2
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00122$.
	inc	7 (iy)
; common peephole 159 removed unused label 00122$.
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/bug-3007/bug-3007_type_long_long.c:27: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
; common peephole 152 removed unused ret.
;	Total inc2 function size at codegen: 1 bytes.
;cases/bug-3007/bug-3007_type_long_long.c:29: void testBug2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug2::
;cases/bug-3007/bug-3007_type_long_long.c:31: a1 = 31;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a1
	ld	(hl), #0x1f
	xor	a, a
	ld	(_a1+1), a
	ld	(_a1+2), a
	ld	(_a1+3), a
	ld	(_a1+4), a
	ld	(_a1+5), a
	ld	(_a1+6), a
	ld	(_a1+7), a
;cases/bug-3007/bug-3007_type_long_long.c:32: inc2();
;	genCall
	call	_inc2
;cases/bug-3007/bug-3007_type_long_long.c:33: ASSERT(a1 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a1+7)
	ld	iy, #_a1
	or	a, 6 (iy)
	or	a, 5 (iy)
	or	a, 4 (iy)
	or	a, 3 (iy)
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
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
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/bug-3007/bug-3007_type_long_long.c:34: ASSERT(a2 == 30);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a2)
	sub	a, #0x1e
	ld	iy, #_a2
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_long_long.c:35: }
;	genEndFunction
	ret
;	Total testBug2 function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "a1 == 0"
	.db 0x00
___str_5:
	.ascii "cases/bug-3007/bug-3007_type_long_long.c"
	.db 0x00
___str_6:
	.ascii "a2 == 30"
	.db 0x00
;cases/bug-3007/bug-3007_type_long_long.c:39: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3007/bug-3007_type_long_long.c:41: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/bug-3007/bug-3007_type_long_long.c:42: testBug();
;	genCall
	call	_testBug
;cases/bug-3007/bug-3007_type_long_long.c:43: __prints("Running testBug2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___prints
;cases/bug-3007/bug-3007_type_long_long.c:44: testBug2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_long_long.c:45: }
;	genEndFunction
	jp	_testBug2
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "Running testBug2"
	.db 0x0a
	.db 0x00
;cases/bug-3007/bug-3007_type_long_long.c:50: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3007/bug-3007_type_long_long.c:52: return "bug-3007_type_long_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_long_long.c:53: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_9:
	.ascii "bug-3007_type_long_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__a:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.area _CABS (ABS)
