;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_981019_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _ff
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _f3
	.globl _f1
	.globl _f2
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_f3_x_10000_28:
	.ds 2
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
;cases/./../tests/gcc-torture-execute-981019-1.c:53: void f1(void) { ASSERT(0); }
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_f3_x_10000_28), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-981019-1.c:16: ff(int fname, int part, int nparts)
;	genLabel
;	genFunction
;	---------------------------------
; Function ff
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ff::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-981019-1.c:18: if (fname)  /* bb 0 */
;	genIfx
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;cases/./../tests/gcc-torture-execute-981019-1.c:20: if (nparts)  /* bb 1 */
;	genIfx
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	or	a, (hl)
; common peephole 66b used hl instead of iy.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;cases/./../tests/gcc-torture-execute-981019-1.c:21: f1();  /* bb 2 */
;	genCall
	push	de
	call	_f1
	pop	de
;cases/./../tests/gcc-torture-execute-981019-1.c:28: while (f3() /* bb 10 */)
;	genLabel
00111$:
;	genCall
	push	de
	call	_f3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-981019-1.c:30: if (nparts /* bb 5 */ && f2() /* bb 6 */)
;	genIfx
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	or	a, (hl)
; common peephole 66b used hl instead of iy.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;	genCall
	push	de
	call	_f2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00111$
;cases/./../tests/gcc-torture-execute-981019-1.c:32: f1();  /* bb 7 ... */
;	genCall
	push	de
	call	_f1
	pop	de
;cases/./../tests/gcc-torture-execute-981019-1.c:33: nparts = part;
;	genAssign
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-981019-1.c:34: if (f3())  /* ... bb 7 */
;	genCall
	call	_f3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;cases/./../tests/gcc-torture-execute-981019-1.c:35: f1();  /* bb 8 */
;	genCall
	call	_f1
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-981019-1.c:36: f1(); /* bb 9 */
;	genCall
	call	_f1
;cases/./../tests/gcc-torture-execute-981019-1.c:37: break;
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-981019-1.c:41: if (nparts)  /* bb 11 */
;	genIfx
	ld	iy, #2
	add	iy, sp
	ld	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00115$
;cases/./../tests/gcc-torture-execute-981019-1.c:42: f1(); /* bb 12 */
;	genCall
	call	_f1
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-981019-1.c:43: return; /* bb 13 */
;	genRet
;	genLabel
; common peephole 159 removed unused label 00116$.
;cases/./../tests/gcc-torture-execute-981019-1.c:44: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total ff function size at codegen: 3 bytes.
;cases/./../tests/gcc-torture-execute-981019-1.c:47: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-981019-1.c:49: ff(0, 1, 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_ff
;cases/./../tests/gcc-torture-execute-981019-1.c:50: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-981019-1.c:51: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-981019-1.c:53: int f3(void) { static int x = 0; x = !x; return x; }
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f3::
;	genNot
	ld	a, (_f3_x_10000_28+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_f3_x_10000_28
	or	a, (hl)
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_f3_x_10000_28+0), a
;	genMove_o size 1 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_f3_x_10000_28+1), a
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_f3_x_10000_28)
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total f3 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-981019-1.c:54: int f2(void) { ASSERT(0); }
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f1::
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0036
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-981019-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-981019-1.c:55: 
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f2::
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0037
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total f2 function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-981019-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-981019-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-981019-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-981019-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-981019-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-981019-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-981019-1.c:15: return "gcc-torture-execute-981019-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-981019-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gcc-torture-execute-981019-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
