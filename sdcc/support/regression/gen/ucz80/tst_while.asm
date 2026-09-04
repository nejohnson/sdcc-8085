;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_while
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testEmptyWhile
	.globl ___prints
	.globl _c2
	.globl _c1
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
_c1::
	.ds 1
_c2::
	.ds 1
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
;cases/./../tests/while.c:10: testEmptyWhile(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testEmptyWhile
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testEmptyWhile::
;cases/./../tests/while.c:13: do {} while (c1 && c2);
;	genLabel
00102$:
;	genIfx
	ld	a, (_c1+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/while.c:16: do {} while ( c1 &&  c1);
;	genLabel
00105$:
;	genIfx
	ld	a, (_c1+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;	genIfx
	ld	a, (_c1+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;cases/./../tests/while.c:18: do {} while (!c1 && !c2);
;	genLabel
00111$:
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;cases/./../tests/while.c:21: do {} while (!c2 && !c1);
;	genLabel
00120$:
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/while.c:22: do {} while (!c2 && !c2);
;	genLabel
00123$:
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00123$
;cases/./../tests/while.c:25: do {} while ( c1 || !c2);
;	genLabel
00129$:
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;cases/./../tests/while.c:26: do {} while (!c2 ||  c1);
;	genLabel
00132$:
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00132$
;cases/./../tests/while.c:27: do {} while (!c2 || !c2);
;	genLabel
00135$:
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00135$
;	genIfx
	ld	a, (_c2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00135$
;cases/./../tests/while.c:29: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00137$.
;cases/./../tests/while.c:30: }
;	genEndFunction
	ret
;	Total testEmptyWhile function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/while.c"
	.db 0x00
;cases/tst_while.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_while.c:6: __prints("Running testEmptyWhile\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_while.c:7: testEmptyWhile();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_while.c:8: }
;	genEndFunction
	jp	_testEmptyWhile
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testEmptyWhile"
	.db 0x0a
	.db 0x00
;cases/tst_while.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_while.c:15: return "while.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_while.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "while.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__c1:
	.db #0x00	; 0
__xinit__c2:
	.db #0x01	; 1
	.area _CABS (ABS)
