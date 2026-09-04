;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module far_rabbits_type_unsigned_long_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testFarPtrArith
	.globl _testFarArith
	.globl _testFarPtr
	.globl _testFarObj
	.globl _writefarptr
	.globl _readfarptr
	.globl ___prints
	.globl ___fail
	.globl _ii
	.globl _j
	.globl _i
	.globl _farmemblock
	.globl ___numCases
	.globl _ci
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_farmemblock::
	.ds 2
_i::
	.ds 8
_j::
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ii::
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
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:22: unsigned long long readfarptr(__far unsigned long long *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function readfarptr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_readfarptr::
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:24: return(*p);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:25: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total readfarptr function size at codegen: 17 bytes.
_ci:
	.byte #0xaa, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:27: void writefarptr(__far unsigned long long *p, unsigned long long i)
;	genLabel
;	genFunction
;	---------------------------------
; Function writefarptr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_writefarptr::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:29: *p = i;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ld	bc, #0x0008
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:30: }
;	genEndFunction
	pop	hl
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total writefarptr function size at codegen: 14 bytes.
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:32: void testFarObj(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFarObj
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testFarObj::
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:35: ASSERT(ii == 0x55);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ii)
	sub	a, #0x55
	ld	iy, #_ii
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
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
	ld	hl, #0x0023
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
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:36: ASSERT(ci == 0xaa);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ci)
	sub	a, #0xaa
	ld	iy, #_ci
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
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0024
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
; common peephole 159 removed unused label 00101$.
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:37: }
;	genEndFunction
	ret
;	Total testFarObj function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "ii == 0x55"
	.db 0x00
___str_2:
	.ascii "cases/far_rabbits/far_rabbits_type_unsigned_long_long.c"
	.db 0x00
___str_3:
	.ascii "ci == 0xaa"
	.db 0x00
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:39: void testFarPtr(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFarPtr
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testFarPtr::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:42: i = 0xa5;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	ld	(hl), #0xa5
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:43: ASSERT(i == 0xa5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:46: ASSERT(readfarptr(&i) == 0xa5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_i
;	genCall
	push	hl
	ld	hl, #0x0002
	add	hl, sp
; common peephole 156 used ex to load hl into de.
	ex	de, hl
	pop	hl
	push	de
	call	_readfarptr
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xa5
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
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
	ld	hl, #___str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:47: writefarptr(&i, 0x5a);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x5a
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_i
;	genCall
	call	_writefarptr
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:48: ASSERT(i == 0x5a);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_i)
	sub	a, #0x5a
	ld	iy, #_i
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00127$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0030
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___fail
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:51: unsigned long long k = 23;
;	genLabel
00101$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:60: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testFarPtr function size at codegen: 5 bytes.
___str_4:
	.ascii "Assertion failed"
	.db 0x00
___str_5:
	.ascii "i == 0xa5"
	.db 0x00
___str_6:
	.ascii "cases/far_rabbits/far_rabbits_type_unsigned_long_long.c"
	.db 0x00
___str_7:
	.ascii "readfarptr(&i) == 0xa5"
	.db 0x00
___str_8:
	.ascii "i == 0x5a"
	.db 0x00
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:62: void testFarArith(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFarArith
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testFarArith::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:64: i = 23;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	ld	(hl), #0x17
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:65: j = 42;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x2a
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:66: ASSERT(i + j == 23 + 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:67: i += j;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	ld	(hl), #0x41
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:68: ASSERT(readfarptr(&i) == 23 + 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_i
;	genCall
	push	hl
	ld	hl, #0x0002
	add	hl, sp
; common peephole 156 used ex to load hl into de.
	ex	de, hl
	pop	hl
	push	de
	call	_readfarptr
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x41
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00116$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0044
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:69: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testFarArith function size at codegen: 5 bytes.
___str_9:
	.ascii "Assertion failed"
	.db 0x00
___str_10:
	.ascii "i + j == 23 + 42"
	.db 0x00
___str_11:
	.ascii "cases/far_rabbits/far_rabbits_type_unsigned_long_long.c"
	.db 0x00
___str_12:
	.ascii "readfarptr(&i) == 23 + 42"
	.db 0x00
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:71: void testFarPtrArith(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFarPtrArith
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testFarPtrArith::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:73: __far char *p = farmemblock;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:74: __far char *volatile q = farmemblock;
;	genAssign
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #<(_farmemblock)
	ld	-1 (ix), #>(_farmemblock)
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:75: ASSERT(p + sizeof(farmemblock) == farmemblock + sizeof(farmemblock));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPlus
	ld	hl, #_farmemblock + 2
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCmpEq
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #(_farmemblock + 2)
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:76: ASSERT(q + sizeof(farmemblock) == farmemblock + sizeof(farmemblock));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genCmpEq
;	genMove_o size 1 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #<((_farmemblock + 2))
	sub	a, #<((_farmemblock + 2))
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00164$
;	genMove_o size 1 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #>((_farmemblock + 2))
	sub	a, #>((_farmemblock + 2))
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00164$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:77: p[0] = 23;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_farmemblock
	ld	(hl), #0x17
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:78: p[sizeof(farmemblock) - 1] = 42;
;	genPlus
	ld	hl, #_farmemblock + 1
;	genPointerSet
	ld	(hl), #0x2a
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:79: ASSERT(farmemblock[0] == 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#_farmemblock + 0)
;	genCmpEq
	cp	a, #0x17
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:80: ASSERT(farmemblock[sizeof(farmemblock) - 1] == 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_farmemblock + 1) + 0)
;	genCmpEq
	cp	a, #0x2a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0050
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:81: q[0] = 42;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_farmemblock
	ld	(hl), #0x2a
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:82: q[sizeof(farmemblock) - 1] = 23;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	ld	(hl), #0x17
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:83: ASSERT(farmemblock[0] == 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#_farmemblock + 0)
;	genCmpEq
	cp	a, #0x2a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0053
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:84: ASSERT(farmemblock[sizeof(farmemblock) - 1] == 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#(_farmemblock + 1) + 0)
;	genCmpEq
	cp	a, #0x17
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00168$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0054
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_20
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:85: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testFarPtrArith function size at codegen: 5 bytes.
___str_13:
	.ascii "Assertion failed"
	.db 0x00
___str_14:
	.ascii "p + sizeof(farmemblock) == farmemblock + sizeof(farmemblock)"
	.db 0x00
___str_15:
	.ascii "cases/far_rabbits/far_rabbits_type_unsigned_long_long.c"
	.db 0x00
___str_16:
	.ascii "q + sizeof(farmemblock) == farmemblock + sizeof(farmemblock)"
	.db 0x00
___str_17:
	.ascii "farmemblock[0] == 23"
	.db 0x00
___str_18:
	.ascii "farmemblock[sizeof(farmemblock) - 1] == 42"
	.db 0x00
___str_19:
	.ascii "farmemblock[0] == 42"
	.db 0x00
___str_20:
	.ascii "farmemblock[sizeof(farmemblock) - 1] == 23"
	.db 0x00
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:89: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:91: __prints("Running testFarObj\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
;	genCall
	call	___prints
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:92: testFarObj();
;	genCall
	call	_testFarObj
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:93: __prints("Running testFarPtr\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
;	genCall
	call	___prints
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:94: testFarPtr();
;	genCall
	call	_testFarPtr
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:95: __prints("Running testFarArith\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_23
;	genCall
	call	___prints
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:96: testFarArith();
;	genCall
	call	_testFarArith
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:97: __prints("Running testFarPtrArith\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___prints
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:98: testFarPtrArith();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:99: }
;	genEndFunction
	jp	_testFarPtrArith
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_21:
	.ascii "Running testFarObj"
	.db 0x0a
	.db 0x00
___str_22:
	.ascii "Running testFarPtr"
	.db 0x0a
	.db 0x00
___str_23:
	.ascii "Running testFarArith"
	.db 0x0a
	.db 0x00
___str_24:
	.ascii "Running testFarPtrArith"
	.db 0x0a
	.db 0x00
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:104: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:106: return "far_rabbits_type_unsigned_long_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/far_rabbits/far_rabbits_type_unsigned_long_long.c:107: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0004
___str_25:
	.ascii "far_rabbits_type_unsigned_long_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__ii:
	.byte #0x55, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.area _CABS (ABS)
