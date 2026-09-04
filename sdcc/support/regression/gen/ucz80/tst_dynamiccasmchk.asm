;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_dynamiccasmchk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDynamicC
	.globl _passVarg
	.globl _passPtr
	.globl _passLong
	.globl _passInt
	.globl _passChar
	.globl ___prints
	.globl ___fail
	.globl _l
	.globl _i
	.globl _c
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
_c::
	.ds 1
_i::
	.ds 2
_l::
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
;cases/./../tests/dynamiccasmchk.c:14: unsigned char passChar(char p) __dynamicc __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function passChar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_passChar::
; naked function: no prologue.
;cases/./../tests/dynamiccasmchk.c:32: __endasm;
;	genInline
;	genInline
	ld ix, #0xabcd
	ld a, (_c)
	cp a, l
	jr nz, bad_char
	pop bc
	pop hl
	push hl
	push bc
	cp a, l
	jr nz, bad_char
	ld hl, #1
	ret
bad_char:
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dynamiccasmchk.c:33: }
;	genEndFunction
; naked function: No epilogue.
;cases/./../tests/dynamiccasmchk.c:35: unsigned char passInt(int p) __dynamicc __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function passInt
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_passInt::
; naked function: no prologue.
;cases/./../tests/dynamiccasmchk.c:56: __endasm;
;	genInline
;	genInline
	ld ix, #0xabcd
	ex de, hl
	ld hl, (_i)
	cp a, a
	sbc hl, de
	jr nz, bad_int
	pop bc
	pop hl
	push hl
	push bc
	cp a, a
	sbc hl, de
	jr nz, bad_int
	ld hl, #1
	ret
bad_int:
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dynamiccasmchk.c:57: }
;	genEndFunction
; naked function: No epilogue.
;cases/./../tests/dynamiccasmchk.c:59: unsigned char passLong(long p) __dynamicc __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function passLong
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_passLong::
; naked function: no prologue.
;cases/./../tests/dynamiccasmchk.c:92: __endasm;
;	genInline
;	genInline
	ld ix, #0xabcd
	ld hl, (_l)
	cp a, a
	sbc hl, de
	jr nz, bad_long
	ld hl, (_l+2)
	cp a, a
	sbc hl, bc
	jr nz, bad_long
	pop iy
	pop hl
	push hl
	push iy
	cp a, a
	sbc hl, de
	jr nz, bad_long
	pop iy
	pop de
	pop hl
	push hl
	push de
	push iy
	cp a, a
	sbc hl, bc
	jr nz, bad_long
	ld hl, #1
	ret
bad_long:
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dynamiccasmchk.c:93: }
;	genEndFunction
; naked function: No epilogue.
;cases/./../tests/dynamiccasmchk.c:95: unsigned char passPtr(char *p) __dynamicc __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function passPtr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_passPtr::
; naked function: no prologue.
;cases/./../tests/dynamiccasmchk.c:116: __endasm;
;	genInline
;	genInline
	ld ix, #0xabcd
	ex de, hl
	ld hl, #_c
	cp a, a
	sbc hl, de
	jr nz, bad_ptr
	pop bc
	pop hl
	push hl
	push bc
	cp a, a
	sbc hl, de
	jr nz, bad_ptr
	ld hl, #1
	ret
bad_ptr:
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dynamiccasmchk.c:117: }
;	genEndFunction
; naked function: No epilogue.
;cases/./../tests/dynamiccasmchk.c:119: unsigned char passVarg(int p, ...) __dynamicc __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function passVarg
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_passVarg::
; naked function: no prologue.
;cases/./../tests/dynamiccasmchk.c:140: __endasm;
;	genInline
;	genInline
	ld ix, #0xabcd
	ex de, hl
	ld hl, (_i)
	cp a, a
	sbc hl, de
	jr nz, bad_varg
	pop bc
	pop hl
	push hl
	push bc
	cp a, a
	sbc hl, de
	jr nz, bad_varg
	ld hl, #1
	ret
bad_varg:
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dynamiccasmchk.c:141: }
;	genEndFunction
; naked function: No epilogue.
;cases/./../tests/dynamiccasmchk.c:171: void testDynamicC(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDynamicC
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
_testDynamicC::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -7
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;cases/./../tests/dynamiccasmchk.c:174: char lc = c;
;	genAssign
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c+0)
	ld	-7 (ix), a
;cases/./../tests/dynamiccasmchk.c:175: int li = i;
;	genAssign
;fetchPairLong
	ld	hl, (_i)
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dynamiccasmchk.c:176: long ll = l;
;	genAssign
	ld	hl, #3
	add	hl, sp
	ex	de, hl
	ld	hl, #_l
	ld	bc, #4
	ldir
;cases/./../tests/dynamiccasmchk.c:177: ASSERT(passChar(c));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c)
	ld	l, a
;	genIpush
	push	ix
	push	hl
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_passChar
;	adjustStack by 2
	pop	af
	pop	ix
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b1
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
00104$:
;cases/./../tests/dynamiccasmchk.c:178: ASSERT(passInt(i));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_i)
;	genIpush
	push	ix
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_passInt
;	adjustStack by 2
	pop	af
	pop	ix
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b2
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/./../tests/dynamiccasmchk.c:179: ASSERT(passLong(l));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_l)
	ld	bc, (_l + 2)
;	genIpush
	push	ix
	push	bc
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_passLong
;	adjustStack by 4
	pop	af
	pop	af
	pop	ix
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b3
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/./../tests/dynamiccasmchk.c:180: ASSERT(passPtr(&c));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAddrOf
	ld	hl, #_c+0
;	genCast
;	(locations are the same)
;	genIpush
	push	ix
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_passPtr
;	adjustStack by 2
	pop	af
	pop	ix
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b4
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/./../tests/dynamiccasmchk.c:181: ASSERT(passVarg(i));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_i)
;	genIpush
	push	ix
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_passVarg
;	adjustStack by 2
	pop	af
	pop	ix
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b5
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/./../tests/dynamiccasmchk.c:183: ASSERT(lc == c);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_c
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00183$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b7
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/./../tests/dynamiccasmchk.c:184: ASSERT(li == i);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_i
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00184$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00184$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b8
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/./../tests/dynamiccasmchk.c:185: ASSERT(ll == l);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_l
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00185$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00185$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00185$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00185$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b9
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/./../tests/dynamiccasmchk.c:186: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testDynamicC function size at codegen: 14 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "passChar(c)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/dynamiccasmchk.c"
	.db 0x00
___str_3:
	.ascii "passInt(i)"
	.db 0x00
___str_4:
	.ascii "passLong(l)"
	.db 0x00
___str_5:
	.ascii "passPtr(&c)"
	.db 0x00
___str_6:
	.ascii "passVarg(i)"
	.db 0x00
___str_7:
	.ascii "lc == c"
	.db 0x00
___str_8:
	.ascii "li == i"
	.db 0x00
___str_9:
	.ascii "ll == l"
	.db 0x00
;cases/tst_dynamiccasmchk.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_dynamiccasmchk.c:6: __prints("Running testDynamicC\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___prints
;cases/tst_dynamiccasmchk.c:7: testDynamicC();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_dynamiccasmchk.c:8: }
;	genEndFunction
	jp	_testDynamicC
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_10:
	.ascii "Running testDynamicC"
	.db 0x0a
	.db 0x00
;cases/tst_dynamiccasmchk.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_dynamiccasmchk.c:15: return "dynamiccasmchk.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_dynamiccasmchk.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_11:
	.ascii "dynamiccasmchk.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__c:
	.db #0x5a	; 90	'Z'
__xinit__i:
	.dw #0x55aa
__xinit__l:
	.byte #0xaa, #0x55, #0xa5, #0x5a	;  1520784810
	.area _CABS (ABS)
