;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2912
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _m32_tanf
	.globl _m32_cosf
	.globl _m32_sinf
	.globl ___prints
	.globl ___fail
	.globl _z
	.globl _y
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
_y::
	.ds 4
_z::
	.ds 4
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
;cases/./../tests/bug-2912.c:14: float m32_sinf (float x) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function m32_sinf
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_m32_sinf::
;	genReceive
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_y), hl
	ld	(_y + 2), de
;cases/./../tests/bug-2912.c:16: y = x;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2912.c:17: }
;	genEndFunction
	ret
;	Total m32_sinf function size at codegen: 1 bytes.
;cases/./../tests/bug-2912.c:19: float m32_cosf (float x) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function m32_cosf
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_m32_cosf::
;cases/./../tests/bug-2912.c:21: z = y;
;	genAssign
	ld	de, #_z
	ld	hl, #_y
	ld	bc, #4
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2912.c:22: }
;	genEndFunction
	ret
;	Total m32_cosf function size at codegen: 11 bytes.
;cases/./../tests/bug-2912.c:24: float m32_tanf (float x) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function m32_tanf
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_m32_tanf::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2912.c:26: return m32_sinf(x)/m32_cosf(x);
;	genSend
	push	hl
	push	de
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_m32_sinf
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
;	genSend
	push	bc
	push	iy
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_m32_cosf
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	iy
	pop	bc
;	genIpush
	push	de
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	pop	hl
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsdiv
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2912.c:27: }
;	genEndFunction
	ret
;	Total m32_tanf function size at codegen: 1 bytes.
;cases/./../tests/bug-2912.c:30: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/bug-2912.c:33: volatile float x = 23.0f;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), #0xb8
	ld	-1 (ix), #0x41
;cases/./../tests/bug-2912.c:35: m32_tanf(x);
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_m32_tanf
;cases/./../tests/bug-2912.c:37: ASSERT(y == x);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 156 used ex to load hl into de.
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
; common peephole 52a replaced push/pop pair by loads.
; common peephole 50b eliminated dead push/pop pair.
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_y)
	ld	hl, (_y + 2)
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
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
	ld	hl, #0x0025
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
;cases/./../tests/bug-2912.c:38: ASSERT(z == x);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 156 used ex to load hl into de.
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
; common peephole 52a replaced push/pop pair by loads.
; common peephole 50b eliminated dead push/pop pair.
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_z)
	ld	hl, (_z + 2)
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0026
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
;cases/./../tests/bug-2912.c:40: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "y == x"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-2912.c"
	.db 0x00
___str_3:
	.ascii "z == x"
	.db 0x00
;cases/tst_bug-2912.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2912.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-2912.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2912.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2912.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2912.c:15: return "bug-2912.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2912.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-2912.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
