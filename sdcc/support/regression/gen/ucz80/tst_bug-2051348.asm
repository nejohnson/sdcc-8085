;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2051348
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug2051348
	.globl _App_PutSprite
	.globl ___prints
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
_Labirint_objCell:
	.ds 1
_Labirint_manX:
	.ds 1
_Labirint_manY:
	.ds 1
_Labirint_manDirX:
	.ds 1
_Labirint_manDirY:
	.ds 1
_Labirint_manPresent:
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
;cases/./../tests/bug-2051348.c:12: void App_PutSprite (SHORTINT x, SHORTINT y, SHORTINT spr)
;	genLabel
;	genFunction
;	---------------------------------
; Function App_PutSprite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_App_PutSprite::
;cases/./../tests/bug-2051348.c:14: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total App_PutSprite function size at codegen: 3 bytes.
;cases/./../tests/bug-2051348.c:19: static SHORTINT Labirint_GetManSprite (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Labirint_GetManSprite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Labirint_GetManSprite:
;cases/./../tests/bug-2051348.c:21: return(0);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2051348.c:22: }
;	genEndFunction
	ret
;	Total Labirint_GetManSprite function size at codegen: 1 bytes.
;cases/./../tests/bug-2051348.c:24: static BOOLEAN Labirint_ManCanGo (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Labirint_ManCanGo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Labirint_ManCanGo:
;cases/./../tests/bug-2051348.c:26: return(0);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2051348.c:27: }
;	genEndFunction
	ret
;	Total Labirint_ManCanGo function size at codegen: 1 bytes.
;cases/./../tests/bug-2051348.c:29: static BOOLEAN Labirint_ManGoing (SHORTINT x, SHORTINT y)
;	genLabel
;	genFunction
;	---------------------------------
; Function Labirint_ManGoing
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Labirint_ManGoing:
;cases/./../tests/bug-2051348.c:31: return(0);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2051348.c:32: }
;	genEndFunction
	ret
;	Total Labirint_ManGoing function size at codegen: 1 bytes.
;cases/./../tests/bug-2051348.c:34: static void Labirint_SetCell (SHORTINT x, SHORTINT y, SHORTINT cell)
;	genLabel
;	genFunction
;	---------------------------------
; Function Labirint_SetCell
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Labirint_SetCell:
;cases/./../tests/bug-2051348.c:36: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total Labirint_SetCell function size at codegen: 3 bytes.
;cases/./../tests/bug-2051348.c:38: static void Labirint_TryMoveMan (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Labirint_TryMoveMan
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_Labirint_TryMoveMan:
;cases/./../tests/bug-2051348.c:41: if (Labirint_ManCanGo()) {
;	genCall
	call	_Labirint_ManCanGo
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/bug-2051348.c:42: x = (Labirint_manX + Labirint_manDirX) + Labirint_manDirX;
;	genPlus
;	Shift into pair
	ld	hl, #_Labirint_manDirX
	ld	a, (_Labirint_manX+0)
	add	a, (hl)
	ld	b, a
;	genPlus
;	Shift into pair
	ld	hl, #_Labirint_manDirX
	ld	a, b
	add	a, (hl)
	ld	e, a
;cases/./../tests/bug-2051348.c:43: y = (Labirint_manY + Labirint_manDirY) + Labirint_manDirY;
;	genPlus
;	Shift into pair
	ld	hl, #_Labirint_manDirY
	ld	a, (_Labirint_manY+0)
	add	a, (hl)
	ld	c, a
;	genPlus
;	Shift into pair
	ld	hl, #_Labirint_manDirY
	ld	a, c
	add	a, (hl)
;cases/./../tests/bug-2051348.c:44: Labirint_manPresent = Labirint_ManGoing(x, y);
;	genSend
	push	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_Labirint_ManGoing
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_Labirint_manPresent), a
; common peephole 19 loaded (#_Labirint_manPresent) from a directly instead of using hl.
;cases/./../tests/bug-2051348.c:45: if (!Labirint_manPresent) {
;	genIfx
	ld	a, (_Labirint_manPresent+0)
	or	a, a
;cases/./../tests/bug-2051348.c:46: return;
;	genRet
;	genLabel
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00102$.
;cases/./../tests/bug-2051348.c:52: Labirint_manX = Labirint_manX + Labirint_manDirX;
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_Labirint_manX
	ld	(hl), b
;cases/./../tests/bug-2051348.c:53: Labirint_manY = Labirint_manY + Labirint_manDirY;
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_Labirint_manY
	ld	(hl), c
;cases/./../tests/bug-2051348.c:57: App_PutSprite(Labirint_manX, Labirint_manY, manSprite);
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/bug-2051348.c:58: }
;	genEndFunction
	ret
;	Total Labirint_TryMoveMan function size at codegen: 1 bytes.
;cases/./../tests/bug-2051348.c:61: testBug2051348(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug2051348
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug2051348::
;cases/./../tests/bug-2051348.c:63: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2051348.c:64: }
;	genEndFunction
	ret
;	Total testBug2051348 function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-2051348.c"
	.db 0x00
;cases/tst_bug-2051348.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2051348.c:6: __prints("Running testBug2051348\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-2051348.c:7: testBug2051348();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2051348.c:8: }
;	genEndFunction
	jp	_testBug2051348
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug2051348"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2051348.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2051348.c:15: return "bug-2051348.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2051348.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-2051348.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
