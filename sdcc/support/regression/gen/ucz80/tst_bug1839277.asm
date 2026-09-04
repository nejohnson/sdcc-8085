;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug1839277
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug1839299
	.globl _testBug1839277
	.globl ___prints
	.globl _i
	.globl ___numCases
	.globl _Values
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
_i::
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
;cases/./../tests/bug1839277.c:14: testBug1839277 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug1839277
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testBug1839277::
;	adjustStack by -2
	push	af
;cases/./../tests/bug1839277.c:30: p = i ? Values[0].Name : Values[1].Name;
;	genIfx
	ld	a, (_i+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	genAddrOf
	ld	bc, #_Values+0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAddrOf
	ld	bc, #_Values+4
;	genLabel
00104$:
;	genCast
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	bc
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug1839277.c:37: p = i ? (const char __code* const *)Values[0].Name : (const char __code* const *)Values[1].Name;
;	genIfx
	ld	a, (_i+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;	genAddrOf
	ld	bc, #_Values+0
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #(_Values + 4)
;	genLabel
00106$:
;	genAssign
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	bc
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug1839277.c:45: p = i ? (const char __code* const __code*)Values[0].Name : (const char __code* const __code*)Values[1].Name;
;	genIfx
	ld	a, (_i+0)
; common peephole 6b removed dead or a, a
;	genAddrOf
; common peephole 1 removed dead load from #_Values+0 into bc.
;	genCast
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00107$.
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #(_Values + 4) into bc.
;	genLabel
; common peephole 159 removed unused label 00108$.
; common peephole 164 eliminated relative conditional jump.
;	genAssign
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1839277.c:50: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from b into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total testBug1839277 function size at codegen: 2 bytes.
_Values:
	.dw __str_0
	.dw __str_1
	.dw __str_2
	.dw __str_3
__str_0:
	.ascii "abc"
	.db 0x00
__str_1:
	.ascii "def"
	.db 0x00
__str_2:
	.ascii "ghi"
	.db 0x00
__str_3:
	.ascii "jkl"
	.db 0x00
;cases/./../tests/bug1839277.c:53: testBug1839299 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug1839299
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testBug1839299::
;	adjustStack by -2
	push	af
;cases/./../tests/bug1839277.c:61: p = i ? Values[0].Name : Values[1].Name;
;	genIfx
	ld	a, (_i+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	genAddrOf
	ld	bc, #_Values+0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAddrOf
	ld	bc, #_Values+4
;	genLabel
00104$:
;	genCast
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	bc
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug1839277.c:64: p = Values[0].Name;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 12 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	(hl), #<(_Values)
	inc	hl
	ld	(hl), #>(_Values)
;cases/./../tests/bug1839277.c:69: p = i ? Values[0].Name : Values[1].Name;
;	genIfx
	ld	a, (_i+0)
; common peephole 6b removed dead or a, a
; common peephole 163 changed absolute to relative conditional jump.
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #_Values into bc.
;	genGoto
;	genLabel
;	genPlus
; common peephole 3 removed dead load from #_Values + 4 into bc.
;	genLabel
; common peephole 85b eliminated jump.
; common peephole 159 removed unused label 00105$.
; common peephole 164 eliminated relative conditional jump.
; common peephole 159 removed unused label 00106$.
;	genCast
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1839277.c:74: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from b into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total testBug1839299 function size at codegen: 2 bytes.
;cases/tst_bug1839277.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug1839277.c:6: __prints("Running testBug1839277\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug1839277.c:7: testBug1839277();
;	genCall
	call	_testBug1839277
;cases/tst_bug1839277.c:8: __prints("Running testBug1839299\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_bug1839277.c:9: testBug1839299();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1839277.c:10: }
;	genEndFunction
	jp	_testBug1839299
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug1839277"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "Running testBug1839299"
	.db 0x0a
	.db 0x00
;cases/tst_bug1839277.c:15: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug1839277.c:17: return "bug1839277.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1839277.c:18: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_6:
	.ascii "bug1839277.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__i:
	.db #0x01	; 1
	.area _CABS (ABS)
