;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_cmpsf_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _fle
	.globl _fgt
	.globl _fge
	.globl _flt
	.globl _fne
	.globl _feq
	.globl ___prints
	.globl ___fail
	.globl _correct_results
	.globl _args
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
_args::
	.ds 32
_correct_results::
	.ds 768
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
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:19: feq (float x, float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function feq
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_feq::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:21: if (x == y)
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	c, 2 (iy)
	ld	b, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:22: return T;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:24: return F;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x008c
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:25: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total feq function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:28: fne (float x, float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function fne
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fne::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:30: if (x != y)
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	c, 2 (iy)
	ld	b, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:31: return T;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:33: return F;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x008c
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:34: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total fne function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:37: flt (float x, float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function flt
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_flt::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:39: if (x < y)
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	c, 2 (iy)
	ld	b, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fslt
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:40: return T;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:42: return F;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x008c
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:43: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total flt function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:46: fge (float x, float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function fge
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fge::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:48: if (x >= y)
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	c, 2 (iy)
	ld	b, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fslt
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:49: return T;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:51: return F;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x008c
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:52: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total fge function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:55: fgt (float x, float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function fgt
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fgt::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:57: if (x > y)
;	genIpush
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #6
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fslt
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:58: return T;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:60: return F;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x008c
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:61: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total fgt function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:64: fle (float x, float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function fle
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fle::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:66: if (x <= y)
;	genIpush
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #6
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fslt
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:67: return T;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000d
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:69: return F;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x008c
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:70: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total fle function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:158: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:161: const int *res = correct_results;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #<(_correct_results)
	ld	-15 (ix), #>(_correct_results)
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:164: for (i = 0; i < 8; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:166: float arg0 = args[i];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_args
	add	hl, de
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:167: for (j = 0; j < 8; j++)
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:169: float arg1 = args[j];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_args
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, 0 (iy)
	ld	-10 (ix), a
	ld	a, 1 (iy)
	ld	-9 (ix), a
	ld	a, 2 (iy)
	ld	-8 (ix), a
	ld	a, 3 (iy)
	ld	-7 (ix), a
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:171: ASSERT(feq (arg0, arg1) == *res++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_feq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
	ld	a, -16 (ix)
	add	a, #0x02
	ld	-6 (ix), a
	ld	a, -15 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00203$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ab
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
00110$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:172: ASSERT(fne (arg0, arg1) == *res++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fne
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	bc
	inc	bc
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00204$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00ac
	push	hl
;	genIpush
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:173: ASSERT(flt (arg0, arg1) == *res++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_flt
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
	inc	bc
	inc	bc
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00205$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00ad
	push	hl
;	genIpush
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:174: ASSERT(fge (arg0, arg1) == *res++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fge
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
	inc	bc
	inc	bc
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00206$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00ae
	push	hl
;	genIpush
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00116$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:175: ASSERT(fgt (arg0, arg1) == *res++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fgt
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
	inc	bc
	inc	bc
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00207$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00af
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
	pop	bc
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:176: ASSERT(fle (arg0, arg1) == *res++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fle
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
	inc	bc
	inc	bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	bc
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00208$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b0
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
00104$:
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:167: for (j = 0; j < 8; j++)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00209$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x08
	jp	c, 00103$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:164: for (i = 0; i < 8; i++)
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00210$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, #0x08
	jp	c, 00105$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:180: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-cmpsf-1.c:181: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 27 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "feq (arg0, arg1) == *res++"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-cmpsf-1.c"
	.db 0x00
___str_3:
	.ascii "fne (arg0, arg1) == *res++"
	.db 0x00
___str_4:
	.ascii "flt (arg0, arg1) == *res++"
	.db 0x00
___str_5:
	.ascii "fge (arg0, arg1) == *res++"
	.db 0x00
___str_6:
	.ascii "fgt (arg0, arg1) == *res++"
	.db 0x00
___str_7:
	.ascii "fle (arg0, arg1) == *res++"
	.db 0x00
;cases/tst_gcc-torture-execute-cmpsf-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-cmpsf-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-cmpsf-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-cmpsf-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_8:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-cmpsf-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-cmpsf-1.c:15: return "gcc-torture-execute-cmpsf-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-cmpsf-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_9:
	.ascii "gcc-torture-execute-cmpsf-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__args:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
	.byte #0x00, #0x00, #0x80, #0xbf	; -1.000000e+00
	.byte #0xff, #0xff, #0x7f, #0x7f	;  3.402823e+38
	.byte #0x00, #0x00, #0x80, #0x00	;  1.175494e-38
	.byte #0x13, #0x2e, #0xe1, #0x29	;  1.000000e-13
	.byte #0xa3, #0x79, #0xeb, #0x4c	;  1.234568e+08
	.byte #0xa3, #0x79, #0x6b, #0xce	; -9.876543e+08
__xinit__correct_results:
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x000d
	.dw #0x008c
	.dw #0x008c
	.dw #0x000d
	.dw #0x008c
	.dw #0x000d
	.area _CABS (ABS)
