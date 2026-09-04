;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_structflexarray
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___prints
	.globl ___fail
	.globl _s22
	.globl _s21
	.globl _s12
	.globl _s11
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
_s11::
	.ds 5
_s12::
	.ds 7
_s21::
	.ds 7
_s22::
	.ds 16
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
;cases/./../tests/structflexarray.c:23: testFlexibleArray1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFlexibleArray1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testFlexibleArray1:
;cases/./../tests/structflexarray.c:29: ASSERT(sizeof(s11) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/structflexarray.c:32: ASSERT((char *) &s12 - (char *) &s11 == 1 + 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAddrOf
	ld	hl, #_s12+0
;	genAddrOf
	ld	bc, #_s11+0
;	genMinus
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
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
	ld	hl, #0x0020
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/structflexarray.c:35: }
;	genEndFunction
	ret
;	Total testFlexibleArray1 function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "sizeof(s11) == 1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/structflexarray.c"
	.db 0x00
___str_3:
	.ascii "(char *) &s12 - (char *) &s11 == 1 + 4"
	.db 0x00
;cases/./../tests/structflexarray.c:54: testFlexibleArray2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFlexibleArray2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testFlexibleArray2:
;cases/./../tests/structflexarray.c:60: ASSERT(sizeof(s21) == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/structflexarray.c:63: ASSERT((char *) &s22 - (char *) &s21 == 2 + 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAddrOf
	ld	hl, #_s22+0
;	genAddrOf
	ld	bc, #_s21+0
;	genMinus
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
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
	ld	hl, #0x003f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_4
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/structflexarray.c:66: }
;	genEndFunction
	ret
;	Total testFlexibleArray2 function size at codegen: 1 bytes.
__str_4:
	.ascii "Assertion failed"
	.db 0x00
__str_5:
	.ascii "sizeof(s21) == 2"
	.db 0x00
__str_6:
	.ascii "cases/./../tests/structflexarray.c"
	.db 0x00
___str_7:
	.ascii "(char *) &s22 - (char *) &s21 == 2 + 5"
	.db 0x00
;cases/tst_structflexarray.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_structflexarray.c:6: __prints("Running testFlexibleArray1\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___prints
;cases/tst_structflexarray.c:7: testFlexibleArray1();
;	genCall
	call	_testFlexibleArray1
;cases/tst_structflexarray.c:8: __prints("Running testFlexibleArray2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___prints
;cases/tst_structflexarray.c:9: testFlexibleArray2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_structflexarray.c:10: }
;	genEndFunction
	jp	_testFlexibleArray2
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_8:
	.ascii "Running testFlexibleArray1"
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "Running testFlexibleArray2"
	.db 0x0a
	.db 0x00
;cases/tst_structflexarray.c:15: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_structflexarray.c:17: return "structflexarray.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_structflexarray.c:18: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_10:
	.ascii "structflexarray.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__s11:
	.db #0x01	; 1
	.dw #0x0002
	.dw #0x0003
__xinit__s12:
	.db #0x04	; 4
	.dw #0x0005
	.dw #0x0006
	.dw #0x0007
__xinit__s21:
	.dw #0x0001
	.ascii "sdcc"
	.db 0x00
__xinit__s22:
	.dw #0x0002
	.ascii "sdcc is great"
	.db 0x00
	.area _CABS (ABS)
