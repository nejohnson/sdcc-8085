;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintvararg_width_33
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBitIntVarArg
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
;cases/bitintvararg/bitintvararg_width_33.c:24: returnFirstArg(int marker, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function returnFirstArg
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 5 bytes.
_returnFirstArg:
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/bitintvararg/bitintvararg_width_33.c:29: va_start(ap, marker);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/bitintvararg/bitintvararg_width_33.c:30: i = va_arg(ap, bitinttype);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0005
	ldir
;cases/bitintvararg/bitintvararg_width_33.c:34: return i;
;	genRet
	ld	hl, #7
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #5
	ldir
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/bitintvararg/bitintvararg_width_33.c:35: }
;	genEndFunction
;	adjustStack by 5
	pop	af
	pop	af
	inc	sp
	ret
;	Total returnFirstArg function size at codegen: 16 bytes.
;cases/bitintvararg/bitintvararg_width_33.c:38: returnSecondArg(int marker, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function returnSecondArg
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_returnSecondArg:
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/bitintvararg/bitintvararg_width_33.c:43: va_start(ap, marker);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/bitintvararg/bitintvararg_width_33.c:44: UNUSED(va_arg(ap, bitinttype));
;	skipping iCode since result will be rematerialized
;cases/bitintvararg/bitintvararg_width_33.c:45: i = va_arg(ap, bitinttype);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0005
	ldir
;cases/bitintvararg/bitintvararg_width_33.c:49: return i;
;	genRet
	ld	hl, #7
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #5
	ldir
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/bitintvararg/bitintvararg_width_33.c:50: }
;	genEndFunction
;	adjustStack by 5
	pop	af
	pop	af
	inc	sp
	ret
;	Total returnSecondArg function size at codegen: 16 bytes.
;cases/bitintvararg/bitintvararg_width_33.c:54: testBitIntVarArg(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitIntVarArg
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_testBitIntVarArg::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/bitintvararg/bitintvararg_width_33.c:60: ASSERT(returnFirstArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, (bitinttype)0x5555555555555555ull) == (bitinttype)0xaaaaaaaaaaaaaaaaull);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0155
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00aa
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xaa
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	ld	hl, #0x000c
	push	hl
; common peephole 94d pushed register pair twice.
	add	hl, sp
	push	hl
	call	_returnFirstArg
;	adjustStack by 14
	ld	hl, #14
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00123$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003c
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
;cases/bitintvararg/bitintvararg_width_33.c:61: ASSERT(returnSecondArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, (bitinttype)0x5555555555555555ull) == (bitinttype)0x5555555555555555ull);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0155
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00aa
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xaa
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	ld	hl, #0x000c
	push	hl
; common peephole 94d pushed register pair twice.
	add	hl, sp
	push	hl
	call	_returnSecondArg
;	adjustStack by 14
	ld	hl, #14
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00124$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00124$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00124$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00124$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00124$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003d
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
00101$:
;cases/bitintvararg/bitintvararg_width_33.c:64: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBitIntVarArg function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "returnFirstArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, (b"
	.ascii "itinttype)0x5555555555555555ull) == (bitinttype)0xaaaaaaaaaa"
	.ascii "aaaaaaull"
	.db 0x00
___str_2:
	.ascii "cases/bitintvararg/bitintvararg_width_33.c"
	.db 0x00
___str_3:
	.ascii "returnSecondArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, ("
	.ascii "bitinttype)0x5555555555555555ull) == (bitinttype)0x555555555"
	.ascii "5555555ull"
	.db 0x00
;cases/bitintvararg/bitintvararg_width_33.c:68: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintvararg/bitintvararg_width_33.c:70: __prints("Running testBitIntVarArg\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/bitintvararg/bitintvararg_width_33.c:71: testBitIntVarArg();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintvararg/bitintvararg_width_33.c:72: }
;	genEndFunction
	jp	_testBitIntVarArg
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBitIntVarArg"
	.db 0x0a
	.db 0x00
;cases/bitintvararg/bitintvararg_width_33.c:77: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintvararg/bitintvararg_width_33.c:79: return "bitintvararg_width_33";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintvararg/bitintvararg_width_33.c:80: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bitintvararg_width_33"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
