;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_1029883_sign1_unsigned_sign2_unsigned_type_int
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testgcse
	.globl _gcse2
	.globl _inc2
	.globl _gcse1
	.globl _inc1
	.globl _spoil
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
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:20: spoil(unsigned int val)
;	genLabel
;	genFunction
;	---------------------------------
; Function spoil
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_spoil::
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:22: UNUSED(val);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:23: }
;	genEndFunction
	ret
;	Total spoil function size at codegen: 1 bytes.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:26: inc1(unsigned int *valptr)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_inc1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:28: (*valptr)++;
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	dec	hl
;	genPlus
	inc	bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:29: }
;	genEndFunction
	ret
;	Total inc1 function size at codegen: 1 bytes.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:32: gcse1(unsigned int target)
;	genLabel
;	genFunction
;	---------------------------------
; Function gcse1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_gcse1::
;	adjustStack by -2
;	genReceive
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26a merged push and ex (sp), since hl isn't used.
	push	hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:35: inc1(&target);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_inc1
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:36: return target;
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:37: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total gcse1 function size at codegen: 2 bytes.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:41: inc2(struct1 *s)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_inc2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:43: (*s->field2)++;
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	dec	hl
;	genPlus
	inc	bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:44: }
;	genEndFunction
	ret
;	Total inc2 function size at codegen: 4 bytes.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:47: gcse2(unsigned int target)
;	genLabel
;	genFunction
;	---------------------------------
; Function gcse2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_gcse2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -6
	push	af
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:51: s.field2 = &s.field3;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:52: *s.field2 = target;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:54: inc2(&s);
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_inc2
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:55: return s.field3;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:56: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total gcse2 function size at codegen: 5 bytes.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:60: testgcse(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testgcse
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testgcse::
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:62: ASSERT(gcse1(1)==2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
	call	_gcse1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, d
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
	ld	hl, #0x003e
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
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:63: ASSERT(gcse2(1)==2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
	call	_gcse2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, d
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
	ld	hl, #0x003f
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
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:64: }
;	genEndFunction
	ret
;	Total testgcse function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "gcse1(1)==2"
	.db 0x00
___str_2:
	.ascii "cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_"
	.ascii "type_int.c"
	.db 0x00
___str_3:
	.ascii "gcse2(1)==2"
	.db 0x00
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:67: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:69: __prints("Running testgcse\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:70: testgcse();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:71: }
;	genEndFunction
	jp	_testgcse
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testgcse"
	.db 0x0a
	.db 0x00
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:76: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:78: return "bug-1029883_sign1_unsigned_sign2_unsigned_type_int";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-1029883/bug-1029883_sign1_unsigned_sign2_unsigned_type_int.c:79: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-1029883_sign1_unsigned_sign2_unsigned_type_int"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
