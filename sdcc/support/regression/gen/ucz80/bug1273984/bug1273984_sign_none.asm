;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug1273984_sign_none
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testAssignInFunctioncall
	.globl _fooChar
	.globl _fooInt
	.globl _foo
	.globl ___prints
	.globl ___fail
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
;cases/bug1273984/bug1273984_sign_none.c:11: void foo( int val) {
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo::
;cases/bug1273984/bug1273984_sign_none.c:12: val; //make the compiler happy
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug1273984/bug1273984_sign_none.c:13: }
;	genEndFunction
	ret
;	Total foo function size at codegen: 1 bytes.
;cases/bug1273984/bug1273984_sign_none.c:15: void fooInt( int val) {
;	genLabel
;	genFunction
;	---------------------------------
; Function fooInt
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fooInt::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug1273984/bug1273984_sign_none.c:16: ASSERT(val==3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, d
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
	ld	hl, #0x0010
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
; common peephole 159 removed unused label 00101$.
;cases/bug1273984/bug1273984_sign_none.c:17: }
;	genEndFunction
	ret
;	Total fooInt function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "val==3"
	.db 0x00
___str_2:
	.ascii "cases/bug1273984/bug1273984_sign_none.c"
	.db 0x00
;cases/bug1273984/bug1273984_sign_none.c:19: void fooChar( char val) {
;	genLabel
;	genFunction
;	---------------------------------
; Function fooChar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fooChar::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug1273984/bug1273984_sign_none.c:20: ASSERT(val==6);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
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
	ld	hl, #0x0014
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug1273984/bug1273984_sign_none.c:21: }
;	genEndFunction
	ret
;	Total fooChar function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "val==6"
	.db 0x00
___str_5:
	.ascii "cases/bug1273984/bug1273984_sign_none.c"
	.db 0x00
;cases/bug1273984/bug1273984_sign_none.c:24: testAssignInFunctioncall(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAssignInFunctioncall
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 3 bytes.
_testAssignInFunctioncall::
;	adjustStack by -3
	push	af
	dec	sp
;cases/bug1273984/bug1273984_sign_none.c:26: volatile  char charVal=3;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x03
;cases/bug1273984/bug1273984_sign_none.c:27: volatile  int intVal=0x4040;
;	genAssign
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x40
	ld	1 (iy), #0x40
;cases/bug1273984/bug1273984_sign_none.c:29: fooInt(intVal=charVal); // should cast charVal to int for function call.
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 179 moved decrement of iy after ld instruction
	ld	e, -1 (iy)
	dec	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genAssign
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), e
	ld	1 (iy), d
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fooInt
;cases/bug1273984/bug1273984_sign_none.c:33: fooInt(intVal=charVal);
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	e, 0 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genAssign
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), e
	ld	1 (iy), d
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fooInt
;cases/bug1273984/bug1273984_sign_none.c:35: intVal=6;
;	genAssign
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #1
	add	iy, sp
	ld	0 (iy), #0x06
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/bug1273984/bug1273984_sign_none.c:37: fooChar(charVal=intVal); // without patch, a int is put on the stack
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 0 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 12 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	dec	iy
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fooChar
;cases/bug1273984/bug1273984_sign_none.c:39: fooChar(charVal=intVal);
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #1
	add	iy, sp
	ld	a, 0 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 12 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	dec	iy
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fooChar
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug1273984/bug1273984_sign_none.c:41: }
;	genEndFunction
;	adjustStack by 3
	pop	af
	inc	sp
	ret
;	Total testAssignInFunctioncall function size at codegen: 3 bytes.
;cases/bug1273984/bug1273984_sign_none.c:46: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug1273984/bug1273984_sign_none.c:48: __prints("Running testAssignInFunctioncall\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/bug1273984/bug1273984_sign_none.c:49: testAssignInFunctioncall();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug1273984/bug1273984_sign_none.c:50: }
;	genEndFunction
	jp	_testAssignInFunctioncall
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testAssignInFunctioncall"
	.db 0x0a
	.db 0x00
;cases/bug1273984/bug1273984_sign_none.c:55: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug1273984/bug1273984_sign_none.c:57: return "bug1273984_sign_none";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug1273984/bug1273984_sign_none.c:58: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "bug1273984_sign_none"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
