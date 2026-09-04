;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_b
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testB
	.globl _nested_call
	.globl _f1
	.globl _inc
	.globl ___prints
	.globl ___fail
	.globl _uchar2
	.globl _uchar1
	.globl _uchar0
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
_uchar0::
	.ds 1
_uchar1::
	.ds 1
_uchar2::
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
;cases/./../tests/scott-b.c:9: void inc(unsigned char k)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inc::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/scott-b.c:11: uchar0 = uchar0 + k;
;	genPlus
;	Shift into pair
	ld	hl, #_uchar0
	add	a, (hl)
	ld	(hl), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-b.c:12: }
;	genEndFunction
	ret
;	Total inc function size at codegen: 1 bytes.
;cases/./../tests/scott-b.c:14: void f1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f1::
;cases/./../tests/scott-b.c:17: uchar2++;
;	genPlus
	ld	hl, #_uchar2
	inc	(hl)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-b.c:18: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
;cases/./../tests/scott-b.c:20: void nested_call(unsigned char u)
;	genLabel
;	genFunction
;	---------------------------------
; Function nested_call
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_nested_call::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/scott-b.c:23: f1();
;	genCall
	push	bc
	call	_f1
	pop	bc
;cases/./../tests/scott-b.c:24: uchar1 = uchar1 + u;
;	genPlus
;	Shift into pair
	ld	hl, #_uchar1
	ld	a, (hl)
	add	a, c
	ld	(hl), a
;cases/./../tests/scott-b.c:25: inc(uchar1);
;	genSend
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_uchar1)
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-b.c:27: }
;	genEndFunction
	jp	_inc
; common peephole 152 removed unused ret.
;	Total nested_call function size at codegen: 1 bytes.
;cases/./../tests/scott-b.c:32: testB(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testB
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testB::
;cases/./../tests/scott-b.c:35: uchar0=1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_uchar0
;cases/./../tests/scott-b.c:36: inc(uchar0);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a,#0x01
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;	genCall
	call	_inc
;cases/./../tests/scott-b.c:37: ASSERT(uchar0 == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_uchar0)
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
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
;cases/./../tests/scott-b.c:39: uchar0 = 2;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_uchar0
	ld	(hl), #0x02
;cases/./../tests/scott-b.c:40: uchar1 = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_uchar1
	ld	(hl), #0x01
;cases/./../tests/scott-b.c:41: uchar2 = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_uchar2
;cases/./../tests/scott-b.c:42: nested_call(uchar2);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a,#0x01
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;	genCall
	call	_nested_call
;cases/./../tests/scott-b.c:44: ASSERT(uchar0 == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_uchar0)
	sub	a, #0x04
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-b.c:45: }
;	genEndFunction
	ret
;	Total testB function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "uchar0 == 2"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-b.c"
	.db 0x00
___str_3:
	.ascii "uchar0 == 4"
	.db 0x00
;cases/tst_scott-b.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-b.c:6: __prints("Running testB\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_scott-b.c:7: testB();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-b.c:8: }
;	genEndFunction
	jp	_testB
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testB"
	.db 0x0a
	.db 0x00
;cases/tst_scott-b.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-b.c:15: return "scott-b.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-b.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "scott-b.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__uchar0:
	.db #0x00	; 0
__xinit__uchar1:
	.db #0x00	; 0
__xinit__uchar2:
	.db #0x00	; 0
	.area _CABS (ABS)
