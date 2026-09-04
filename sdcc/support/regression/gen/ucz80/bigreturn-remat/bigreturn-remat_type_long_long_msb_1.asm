;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bigreturn_remat_type_long_long_msb_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testRemat
	.globl _g
	.globl _f
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
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:14: struct s f(struct s p) // Returned via extra hidden parameter
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:16: p.i++; // Uses rematerialized address to parameter
;	genAddrOf
	ld	hl, #12
	add	hl, sp
	ex	de, hl
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	7 (iy)
00103$:
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ld	bc, #0x0008
	ldir
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:17: return (p);
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #12
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:18: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f function size at codegen: 21 bytes.
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:20: long long g(struct s p) // Returned via extra hidden parameter for large return types only.
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_g::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:22: p.i++; // Uses rematerialized address to parameter
;	genAddrOf
	ld	hl, #12
	add	hl, sp
	ex	de, hl
;	genCast
;	(locations are the same)
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genPlus
	ld	iy, #0
	add	iy, sp
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	7 (iy)
00103$:
;	genPointerSet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ld	bc, #0x0008
	ldir
	pop	de
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:23: return (p.i);
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
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:24: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total g function size at codegen: 25 bytes.
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:28: testRemat(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testRemat
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 24 bytes.
_testRemat::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -24
	ld	hl, #-24
	add	hl, sp
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:32: s.i = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:33: ASSERT (f(s).i == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerPush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 120 removed loads by exploiting commutativity of addition.
; common peephole 130b added +7 to immediate 0
	ld	hl, #0x7
	add	hl, sp
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	ld	hl, #0x0010
	add	hl, sp
	push	hl
	call	_f
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
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
	ld	hl, #0x0021
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
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:34: ASSERT (g(s) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerPush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 120 removed loads by exploiting commutativity of addition.
; common peephole 130b added +7 to immediate 0
	ld	hl, #0x7
	add	hl, sp
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	ld	hl, #0x0018
	add	hl, sp
	push	hl
	call	_g
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
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
	ld	hl, #0x0022
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
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:36: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testRemat function size at codegen: 9 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "f(s).i == 1"
	.db 0x00
___str_2:
	.ascii "cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c"
	.db 0x00
___str_3:
	.ascii "g(s) == 1"
	.db 0x00
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:40: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:42: __prints("Running testRemat\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:43: testRemat();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:44: }
;	genEndFunction
	jp	_testRemat
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testRemat"
	.db 0x0a
	.db 0x00
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:49: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:51: return "bigreturn-remat_type_long_long_msb_1";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bigreturn-remat/bigreturn-remat_type_long_long_msb_1.c:52: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bigreturn-remat_type_long_long_msb_1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
