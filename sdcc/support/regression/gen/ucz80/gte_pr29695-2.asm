;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_pr29695_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _f8
	.globl _f7
	.globl _f6
	.globl _f5
	.globl _f4
	.globl _f3
	.globl _f2
	.globl _f1
	.globl ___prints
	.globl ___fail
	.globl _d
	.globl _c
	.globl _b
	.globl _a
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
_a::
	.ds 2
_b::
	.ds 1
_c::
	.ds 8
_d::
	.ds 2
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
;cases/gte_pr29695-2.c:7: void abort(void) {ASSERT(0);}
;	genLabel
;	genFunction
;	---------------------------------
; Function abort
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_abort::
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
	ld	hl, #0x0007
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
;	Total abort function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/gte_pr29695-2.c"
	.db 0x00
;cases/../gte/pr29695-2.c:11: f1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f1::
;cases/../gte/pr29695-2.c:13: return (a & 0x80) ? 0x80 : 0;
;	genAnd
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0080
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:14: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 4 bytes.
;cases/../gte/pr29695-2.c:17: f2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f2::
;cases/../gte/pr29695-2.c:19: return (b & 0x80) ? 0x80 : 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_b)
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0080
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:20: }
;	genEndFunction
	ret
;	Total f2 function size at codegen: 4 bytes.
;cases/../gte/pr29695-2.c:23: f3 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f3::
;cases/../gte/pr29695-2.c:25: return (b & 0x80) ? 0x380 : 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_b)
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0380
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:26: }
;	genEndFunction
	ret
;	Total f3 function size at codegen: 4 bytes.
;cases/../gte/pr29695-2.c:29: f4 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f4
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f4::
;cases/../gte/pr29695-2.c:31: return (b & 0x80) ? -128 : 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_b)
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xff80
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:32: }
;	genEndFunction
	ret
;	Total f4 function size at codegen: 4 bytes.
;cases/../gte/pr29695-2.c:35: f5 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f5
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f5::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/../gte/pr29695-2.c:37: return (c & 0x80000000) ? 0x80000000LL : 0LL;
;	genAnd
; common peephole 61 used hl instead of iy.
	ld	hl, #_c + 3
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 8 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), #0x80
	xor	a, a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAssign
;	genMove_o size 8 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genLabel
00104$:
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:38: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f5 function size at codegen: 16 bytes.
;cases/../gte/pr29695-2.c:41: f6 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f6
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f6::
;cases/../gte/pr29695-2.c:43: return (d & 0x80000000) ? 0x80000000LL : 0LL;
;	genRet
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:44: }
;	genEndFunction
	ret
;	Total f6 function size at codegen: 13 bytes.
;cases/../gte/pr29695-2.c:47: f7 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f7
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f7::
;cases/../gte/pr29695-2.c:49: return (d & 0x80000000) ? 0x380000000LL : 0LL;
;	genRet
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:50: }
;	genEndFunction
	ret
;	Total f7 function size at codegen: 13 bytes.
;cases/../gte/pr29695-2.c:53: f8 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f8
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f8::
;cases/../gte/pr29695-2.c:55: return (d & 0x80000000) ? -2147483648LL : 0LL;
;	genRet
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/pr29695-2.c:56: }
;	genEndFunction
	ret
;	Total f8 function size at codegen: 13 bytes.
;cases/../gte/pr29695-2.c:59: main (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../gte/pr29695-2.c:62: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;cases/../gte/pr29695-2.c:79: return 0;
;	genLabel
; common peephole 159 removed unused label 00120$.
;cases/../gte/pr29695-2.c:80: }
;	genEndFunction
	ret
;	Total main_ function size at codegen: 1 bytes.
;cases/gte_pr29695-2.c:10: void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
;cases/gte_pr29695-2.c:12: __code const char * __getSuiteName(void) { return "gte/pr29695-2"; }
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gte/pr29695-2"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__a:
	.dw #0x0080
__xinit__b:
	.db #0x80	; 128
__xinit__c:
	.byte #0x00, #0x00, #0x00, #0x80, #0x00, #0x00, #0x00, #0x00
__xinit__d:
	.dw #0x0000
	.area _CABS (ABS)
