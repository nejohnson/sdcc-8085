;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3560
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _mygame
	.globl _possible
	.globl _depl
	.globl ___prints
	.globl ___fail
	.globl _next
	.globl _Control_1
	.globl _key
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
_key::
	.ds 1
_Control_1::
	.ds 1
_next::
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
;cases/./../tests/bug-3560.c:17: void depl(uint16_t touche, uint8_t* end_piece)
;	genLabel
;	genFunction
;	---------------------------------
; Function depl
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_depl::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3560.c:19: ASSERT (!*end_piece);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0013
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
	pop	bc
;	genLabel
00104$:
;cases/./../tests/bug-3560.c:20: *end_piece = 1;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x01
	ld	(bc), a
;cases/./../tests/bug-3560.c:21: Control_1 = (key >> 1);
;	genRightShift
	ld	a, (_key+0)
	srl	a
	ld	(#_Control_1), a
; common peephole 19 loaded (#_Control_1) from a directly instead of using hl.
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3560.c:22: }
;	genEndFunction
	ret
;	Total depl function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!*end_piece"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3560.c"
	.db 0x00
;cases/./../tests/bug-3560.c:24: uint8_t possible (uint8_t * pce)
;	genLabel
;	genFunction
;	---------------------------------
; Function possible
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_possible::
;cases/./../tests/bug-3560.c:26: return key;
;	genRet
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_key)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3560.c:27: }
;	genEndFunction
	ret
;	Total possible function size at codegen: 1 bytes.
;cases/./../tests/bug-3560.c:29: void mygame()
;	genLabel
;	genFunction
;	---------------------------------
; Function mygame
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_mygame::
;	adjustStack by -1
	dec	sp
;cases/./../tests/bug-3560.c:33: uint8_t end_game=0;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;cases/./../tests/bug-3560.c:35: while(! end_game) 
;	genLabel
00112$:
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00115$
;cases/./../tests/bug-3560.c:37: do
;	genLabel
00109$:
;cases/./../tests/bug-3560.c:39: end_piece = 0; 
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;cases/./../tests/bug-3560.c:40: key = Control_1;
;	genAssign
;	genMove_o size 1 result type 11 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Control_1+0)
	ld	(#_key), a
; common peephole 19 loaded (#_key) from a directly instead of using hl.
;cases/./../tests/bug-3560.c:42: if (!(key & 0b00000010))
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_key)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
;	skipping generated iCode
;cases/./../tests/bug-3560.c:43: depl(bas, &end_piece);
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
	call	_depl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00107$:
;cases/./../tests/bug-3560.c:44: else if (!(key & 0b00001000))
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00168$.
;	skipping generated iCode
;cases/./../tests/bug-3560.c:45: depl(droite, &end_piece);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0003
;	genCall
	call	_depl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00104$:
;cases/./../tests/bug-3560.c:46: else if (!(key & 0b00000100))
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00169$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00170$.
;	skipping generated iCode
;cases/./../tests/bug-3560.c:47: depl(gauche, &end_piece);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0002
;	genCall
	call	_depl
;	genLabel
00110$:
;cases/./../tests/bug-3560.c:49: while(!end_piece);
;	genIfx
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/bug-3560.c:50: end_game= (!possible(&next));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_next
;	genCall
	call	_possible
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00115$:
;cases/./../tests/bug-3560.c:52: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total mygame function size at codegen: 11 bytes.
;cases/./../tests/bug-3560.c:55: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3560.c:57: Control_1 = 0b00000111;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_Control_1
	ld	(hl), #0x07
;cases/./../tests/bug-3560.c:58: mygame();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3560.c:59: }
;	genEndFunction
	jp	_mygame
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3560.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3560.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-3560.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3560.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3560.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3560.c:15: return "bug-3560.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3560.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3560.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
