;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_packcast
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _testCastPack
	.globl _spoil
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
;cases/./../tests/packcast.c:7: spoil(int a)
;	genLabel
;	genFunction
;	---------------------------------
; Function spoil
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_spoil::
;cases/./../tests/packcast.c:9: UNUSED(a);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/packcast.c:10: }
;	genEndFunction
	ret
;	Total spoil function size at codegen: 1 bytes.
;cases/./../tests/packcast.c:13: testCastPack(char x)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCastPack
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_testCastPack::
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/packcast.c:18: for (i = 0; i < 5; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/packcast.c:20: for (j = 0; j < 5; j++)
;	genLabel
00112$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genLabel
00103$:
;cases/./../tests/packcast.c:22: spoil(a);
;	genDummyRead
	ld	iy, #0
	add	iy, sp
; common peephole 7 removed dead load from 0 (iy) into a.
;cases/./../tests/packcast.c:20: for (j = 0; j < 5; j++)
;	genPlus
	inc	b
;	genCmpLt
	ld	a, b
	sub	a, #0x05
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;cases/./../tests/packcast.c:18: for (i = 0; i < 5; i++)
;	genPlus
	inc	c
;	genCmpLt
	ld	a, c
	sub	a, #0x05
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00112$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/packcast.c:25: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total testCastPack function size at codegen: 2 bytes.
;cases/./../tests/packcast.c:27: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/packcast.c:29: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_packcast.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_packcast.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_packcast.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_packcast.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_packcast.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_packcast.c:15: return "packcast.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_packcast.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "packcast.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
