;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module structparam_type_long_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testParam
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
;cases/structparam/structparam_type_long_long.c:16: long long f(struct s s)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 17 bytes.
_f::
;	adjustStack by -17
	ld	hl, #-17
	add	hl, sp
	ld	sp, hl
;cases/structparam/structparam_type_long_long.c:18: return s.a + s.b;
;	genAddrOf
	ld	hl, #21
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
;	genAssign
;	(locations are the same)
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	bc, #0x0008
	ldir
;	genPlus
;	Shift into pair
	ld	hl, #9
	add	hl, sp
;	Shift into pair
	push	de
	ld	iy, #11
	add	iy, sp
	push	iy
	pop	de
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	add	a, (hl)
	ld	(de), a
	ld	a, 1 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 2 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 3 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 4 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 5 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 6 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 7 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;	genRet
	ld	hl, #19
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #9
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long_long.c:19: }
;	genEndFunction
;	adjustStack by 17
	ld	hl, #17
	add	hl, sp
	ld	sp, hl
	ret
;	Total f function size at codegen: 22 bytes.
;cases/structparam/structparam_type_long_long.c:23: long long g(long long i, long long j)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 24 bytes.
_g::
;	adjustStack by -24
	ld	hl, #-24
	add	hl, sp
;cases/structparam/structparam_type_long_long.c:25: struct s s = {i, j};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
	ex	de, hl
	ld	hl, #28
	add	hl, sp
	ld	bc, #0x0008
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	hl, #36
	add	hl, sp
	ld	bc, #0x0008
	ldir
;cases/structparam/structparam_type_long_long.c:26: return f(s);
;	genPointerPush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 120 removed loads by exploiting commutativity of addition.
; common peephole 130b added +15 to immediate 0
	ld	hl, #0xf
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
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	ld	hl, #0x0020
	add	hl, sp
	push	hl
	call	_f
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genRet
	ld	hl, #26
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #16
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long_long.c:27: }
;	genEndFunction
;	adjustStack by 24
	ld	hl, #24
	add	hl, sp
	ld	sp, hl
	ret
;	Total g function size at codegen: 22 bytes.
;cases/structparam/structparam_type_long_long.c:30: void testParam (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testParam
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testParam::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/structparam/structparam_type_long_long.c:33: ASSERT (g(23, 42) == 23 + 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x2a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x17
	push	hl
;	genCall
	ld	hl, #0x0010
	add	hl, sp
	push	hl
	call	_g
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
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
; common peephole 159 removed unused label 00113$.
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
00101$:
;cases/structparam/structparam_type_long_long.c:35: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testParam function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "g(23, 42) == 23 + 42"
	.db 0x00
___str_2:
	.ascii "cases/structparam/structparam_type_long_long.c"
	.db 0x00
;cases/structparam/structparam_type_long_long.c:39: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/structparam/structparam_type_long_long.c:41: __prints("Running testParam\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/structparam/structparam_type_long_long.c:42: testParam();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long_long.c:43: }
;	genEndFunction
	jp	_testParam
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testParam"
	.db 0x0a
	.db 0x00
;cases/structparam/structparam_type_long_long.c:48: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/structparam/structparam_type_long_long.c:50: return "structparam_type_long_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long_long.c:51: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "structparam_type_long_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
