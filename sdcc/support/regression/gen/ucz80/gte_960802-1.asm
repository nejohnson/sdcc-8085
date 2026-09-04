;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_960802_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _f4
	.globl _f3
	.globl _f2
	.globl _f1
	.globl _abort
	.globl _exit__substitute
	.globl _longjmp
	.globl ___setjmp
	.globl ___prints
	.globl ___fail
	.globl _val
	.globl _after_main
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
_after_main::
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_val::
	.ds 4
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
;cases/gte_960802-1.c:7: void exit__substitute(int i){ASSERT(!i); longjmp(after_main, 1);}
;	genLabel
;	genFunction
;	---------------------------------
; Function exit__substitute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_exit__substitute::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_after_main
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	jp	_longjmp
; common peephole 152 removed unused ret.
;	Total exit__substitute function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!i"
	.db 0x00
___str_2:
	.ascii "cases/gte_960802-1.c"
	.db 0x00
;cases/gte_960802-1.c:11: void abort(void) {ASSERT(0);}
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
	ld	hl, #0x000b
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
;	Total abort function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/gte_960802-1.c"
	.db 0x00
;cases/../gte/960802-1.c:4: f1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f1::
;cases/../gte/960802-1.c:6: return 0x132;
;	genRet
;fetchPairLong
	ld	de, #0x0132
;fetchPairLong
	ld	hl, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/960802-1.c:7: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
;cases/../gte/960802-1.c:10: f2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f2::
;cases/../gte/960802-1.c:12: return 0x5e000000;
;	genRet
;fetchPairLong
	ld	hl, #0x5e00
	ld	e, l
	ld	d, l
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/960802-1.c:13: }
;	genEndFunction
	ret
;	Total f2 function size at codegen: 1 bytes.
;cases/../gte/960802-1.c:16: f3 (long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f3::
;	genReceive
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_val), de
	ld	(_val + 2), hl
;cases/../gte/960802-1.c:18: val = b;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/960802-1.c:19: }
;	genEndFunction
	ret
;	Total f3 function size at codegen: 1 bytes.
;cases/../gte/960802-1.c:22: f4 ()
;	genLabel
;	genFunction
;	---------------------------------
; Function f4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f4::
;cases/../gte/960802-1.c:24: long v = f1 ();
;	genCall
	call	_f1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/960802-1.c:25: long o = f2 ();
;	genCall
; common peephole 29 pushed hl directly instead of going through bc.
	push	hl
	push	de
	call	_f2
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;cases/../gte/960802-1.c:26: v = (v & 0x00ffffff) | (o & 0xff000000);
;	genAnd
;	genMove_o size 3 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into b.
;	genAnd
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into iy.
; common peephole 1 removed dead load from #0x00 into l.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genOr
;	genMove_o size 3 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/../gte/960802-1.c:27: f3 (v);
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/960802-1.c:28: }
;	genEndFunction
	jp	_f3
; common peephole 152 removed unused ret.
;	Total f4 function size at codegen: 1 bytes.
;cases/../gte/960802-1.c:30: main ()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../gte/960802-1.c:32: f4 ();
;	genCall
	call	_f4
;cases/../gte/960802-1.c:33: if (val != 0x5e000132)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_val)
	sub	a, #0x32
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_val + 1)
	dec	a
; common peephole 54 used hl instead of iy.
	ld	hl, #_val + 2
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_val + 3)
	sub	a, #0x5e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
00113$:
;	skipping generated iCode
;cases/../gte/960802-1.c:34: abort ();
;	genCall
	call	_abort
;	genLabel
00102$:
;cases/../gte/960802-1.c:35: exit (0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/../gte/960802-1.c:36: }
;	genEndFunction
	jp	_exit__substitute
; common peephole 152 removed unused ret.
;	Total main_ function size at codegen: 1 bytes.
;cases/gte_960802-1.c:14: void __runSuite(void) { __prints("Running main\n");if(!setjmp(after_main))
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___runSuite::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_after_main
;	genCall
	call	___setjmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
;cases/gte_960802-1.c:15: main_(MAINARGS); }
;	genCall
;	genLabel
	jp	z, _main_
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00103$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
;cases/gte_960802-1.c:17: __code const char * __getSuiteName(void) { return "gte/960802-1"; }
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
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gte/960802-1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__val:
	.byte #0x00, #0x00, #0x00, #0x5e	;  1577058304
	.area _CABS (ABS)
