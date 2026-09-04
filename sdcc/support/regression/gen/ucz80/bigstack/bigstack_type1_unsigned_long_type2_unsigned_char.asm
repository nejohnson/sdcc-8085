;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bigstack_type1_unsigned_long_type2_unsigned_char
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testStack
	.globl _f
	.globl ___prints
	.globl ___fail
	.globl _int2
	.globl _int1
	.globl ___numCases
	.globl _g
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_int1::
	.ds 4
_int2::
	.ds 1
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
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:28: void f(unsigned long par1, unsigned char par2)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 780 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -780
	ld	iy, #-780
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:31: g(array);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_g
	pop	de
	pop	hl
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:32: int1 = par1;
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_int1), de
	ld	(_int1 + 2), hl
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:33: int2 = par2;
;	genAssign
;	genMove_o size 1 result type 11 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
	ld	(#_int2), a
; common peephole 19 loaded (#_int2) from a directly instead of using hl.
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:34: ASSERT(array[0] == 0 && array[ARRAYSIZE - 1] == (unsigned char)(ARRAYSIZE - 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x0b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00116$.
;	skipping generated iCode
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #___str_2
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0022
	push	de
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:35: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total f function size at codegen: 7 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "array[0] == 0 && array[ARRAYSIZE - 1] == (unsigned char)(ARR"
	.ascii "AYSIZE - 1)"
	.db 0x00
___str_2:
	.ascii "cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_c"
	.ascii "har.c"
	.db 0x00
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:37: void g(unsigned char *array)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:39: array[0] = 0; array[ARRAYSIZE - 1] = (unsigned char)(ARRAYSIZE - 1);
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
;fetchPairLong
	ld	bc, #0x030b
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x0b
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:40: }
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:43: testStack(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testStack
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testStack::
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:45: f(23, 42);
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2a
	push	af
	inc	sp
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0017
	ld	hl, #0x0000
;	genCall
	call	_f
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:46: ASSERT (int1 == (unsigned long)23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_int1)
	sub	a, #0x17
	ld	iy, #_int1
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002e
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
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:47: ASSERT (int2 == (unsigned char)42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_int2)
	sub	a, #0x2a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002f
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
00106$:
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:48: f(0xa5a5a5, 0x5a5a5a);
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5a
	push	af
	inc	sp
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xa5a5
	ld	hl, #0x00a5
;	genCall
	call	_f
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:49: ASSERT (int1 == (unsigned long)0xa5a5a5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_int1)
	sub	a, #0xa5
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_int1 + 1)
	sub	a, #0xa5
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_int1 + 2)
	sub	a, #0xa5
; common peephole 54 used hl instead of iy.
	ld	hl, #_int1 + 3
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00145$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0031
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:50: ASSERT (int2 == (unsigned char)0x5a5a5a);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_int2)
	sub	a, #0x5a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0032
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:51: }
;	genEndFunction
	ret
;	Total testStack function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "int1 == (unsigned long)23"
	.db 0x00
___str_5:
	.ascii "cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_c"
	.ascii "har.c"
	.db 0x00
___str_6:
	.ascii "int2 == (unsigned char)42"
	.db 0x00
___str_7:
	.ascii "int1 == (unsigned long)0xa5a5a5"
	.db 0x00
___str_8:
	.ascii "int2 == (unsigned char)0x5a5a5a"
	.db 0x00
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:55: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:57: __prints("Running testStack\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___prints
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:58: testStack();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:59: }
;	genEndFunction
	jp	_testStack
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_9:
	.ascii "Running testStack"
	.db 0x0a
	.db 0x00
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:64: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:66: return "bigstack_type1_unsigned_long_type2_unsigned_char";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigstack/bigstack_type1_unsigned_long_type2_unsigned_char.c:67: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_10:
	.ascii "bigstack_type1_unsigned_long_type2_unsigned_char"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
