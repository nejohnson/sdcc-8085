;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3117729
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _RC4Init
	.globl _swap
	.globl _mod_16x8
	.globl ___prints
	.globl _y
	.globl _x
	.globl _state
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
_state::
	.ds 256
_x::
	.ds 1
_y::
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
;cases/./../tests/bug-3117729.c:20: UCHAR mod_16x8(USHORT s16, UCHAR i8)
;	genLabel
;	genFunction
;	---------------------------------
; Function mod_16x8
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_mod_16x8::
;cases/./../tests/bug-3117729.c:22: return (0);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3117729.c:23: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total mod_16x8 function size at codegen: 3 bytes.
;cases/./../tests/bug-3117729.c:29: void swap(PCHAR pa, PCHAR pb)
;	genLabel
;	genFunction
;	---------------------------------
; Function swap
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_swap::
;cases/./../tests/bug-3117729.c:31: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total swap function size at codegen: 1 bytes.
;cases/./../tests/bug-3117729.c:33: void RC4Init(PCHAR pKey, UCHAR iKeyLen)
;	genLabel
;	genFunction
;	---------------------------------
; Function RC4Init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_RC4Init::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3117729.c:38: do
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00101$:
;cases/./../tests/bug-3117729.c:40: state[i] = i;
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #_state
	ld	d, #0x00
	add	hl, de
;	genPointerSet
	ld	(hl), e
;cases/./../tests/bug-3117729.c:41: i ++;
;	genPlus
;cases/./../tests/bug-3117729.c:42: } while (i);
;	genIfx
; common peephole 1 removed dead load from e into a.
; common peephole 100b removed redundant or after inc
;cases/./../tests/bug-3117729.c:44: x = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 154c reuseded zero of register (which has just been tested to be #0x00).
	ld	a, e
	ld	(#_x), a
; common peephole 19 loaded (#_x) from a directly instead of using hl.
;cases/./../tests/bug-3117729.c:45: do
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00104$:
;cases/./../tests/bug-3117729.c:47: x = x + state[i] + pKey[mod_16x8(i, iKeyLen)];
;	genPlus
;fetchPairLong
	ld	hl, #_state
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genPlus
;	Shift into pair
	ld	hl, #_x
	add	a, (hl)
	ld	d, a
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genIpush
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	af
	inc	sp
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_mod_16x8
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genPlus
	add	a, d
	ld	hl, #_x
	ld	(hl), a
;cases/./../tests/bug-3117729.c:49: i ++;
;	genPlus
;cases/./../tests/bug-3117729.c:50: } while(i);
;	genIfx
	inc	e
; common peephole 1 removed dead load from e into a.
; common peephole 100b removed redundant or after inc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;cases/./../tests/bug-3117729.c:51: x = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/bug-3117729.c:52: y = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_y), a
; common peephole 19 loaded (#_y) from a directly instead of using hl.
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-3117729.c:53: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total RC4Init function size at codegen: 5 bytes.
;cases/./../tests/bug-3117729.c:57: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3117729.c:59: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3117729.c:60: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-3117729.c"
	.db 0x00
;cases/tst_bug-3117729.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3117729.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-3117729.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3117729.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3117729.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3117729.c:15: return "bug-3117729.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3117729.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3117729.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
