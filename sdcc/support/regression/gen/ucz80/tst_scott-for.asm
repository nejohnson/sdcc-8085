;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_for
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testFor
	.globl _for2
	.globl _for1
	.globl ___prints
	.globl ___fail
	.globl _achar1
	.globl _achar0
	.globl _aint1
	.globl _aint0
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
_aint0::
	.ds 2
_aint1::
	.ds 2
_achar0::
	.ds 1
_achar1::
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
;cases/./../tests/scott-for.c:12: void for1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function for1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_for1::
;cases/./../tests/scott-for.c:16: for(i=0; i<10; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x0a
;	genLabel
00104$:
;cases/./../tests/scott-for.c:17: achar0++;
;	genPlus
	ld	hl, #_achar0
	inc	(hl)
;	genMinus
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 167 used djnz
	djnz	00104$
;cases/./../tests/scott-for.c:16: for(i=0; i<10; i++)
;	skipping generated iCode
;cases/./../tests/scott-for.c:19: ASSERT(!(achar0 != 10));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x0a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
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
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/scott-for.c:21: }
;	genEndFunction
	ret
;	Total for1 function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!(achar0 != 10)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-for.c"
	.db 0x00
;cases/./../tests/scott-for.c:23: void for2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function for2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_for2::
;cases/./../tests/scott-for.c:27: for(i=0; i<10; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x0a
;	genLabel
00104$:
;cases/./../tests/scott-for.c:28: achar0++;
;	genPlus
	ld	hl, #_achar0
	inc	(hl)
;	genMinus
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 167 used djnz
	djnz	00104$
;cases/./../tests/scott-for.c:27: for(i=0; i<10; i++)
;	skipping generated iCode
;cases/./../tests/scott-for.c:30: ASSERT(!(i < 10));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/scott-for.c:32: }
;	genEndFunction
	ret
;	Total for2 function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "!(i < 10)"
	.db 0x00
___str_5:
	.ascii "cases/./../tests/scott-for.c"
	.db 0x00
;cases/./../tests/scott-for.c:35: testFor(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFor
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testFor::
;cases/./../tests/scott-for.c:37: for1();
;	genCall
	call	_for1
;cases/./../tests/scott-for.c:38: for2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-for.c:39: }
;	genEndFunction
	jp	_for2
; common peephole 152 removed unused ret.
;	Total testFor function size at codegen: 1 bytes.
;cases/tst_scott-for.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-for.c:6: __prints("Running testFor\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_scott-for.c:7: testFor();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-for.c:8: }
;	genEndFunction
	jp	_testFor
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testFor"
	.db 0x0a
	.db 0x00
;cases/tst_scott-for.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-for.c:15: return "scott-for.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-for.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "scott-for.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__aint0:
	.dw #0x0000
__xinit__aint1:
	.dw #0x0000
__xinit__achar0:
	.db #0x00	; 0
__xinit__achar1:
	.db #0x00	; 0
	.area _CABS (ABS)
