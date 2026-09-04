;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_20210505_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _func
	.globl _call_func
	.globl _longjmp
	.globl ___setjmp
	.globl _abort
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
_buf:
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_stop:
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
;cases/gte_20210505-1.c:7: void abort(void) {ASSERT(0);}
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
	.ascii "cases/gte_20210505-1.c"
	.db 0x00
;cases/../gte/20210505-1.c:12: void call_func (void(*func)(void))
;	genLabel
;	genFunction
;	---------------------------------
; Function call_func
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_call_func::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/20210505-1.c:14: func ();
;	genCall
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/20210505-1.c:15: }
;	genEndFunction
	jp	(hl)
; common peephole 152 removed unused ret.
;	Total call_func function size at codegen: 1 bytes.
;cases/../gte/20210505-1.c:17: void func (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func::
;cases/../gte/20210505-1.c:19: stop = true;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_stop
;cases/../gte/20210505-1.c:20: longjmp (buf, 1);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 97a reused constant loaded into register pair. 0x01 0x0001
	ld	de, #0x0001
	ld	(hl), e
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_buf
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/20210505-1.c:21: }
;	genEndFunction
	jp	_longjmp
; common peephole 152 removed unused ret.
;	Total func function size at codegen: 1 bytes.
;cases/../gte/20210505-1.c:23: int main (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../gte/20210505-1.c:25: setjmp (buf);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_buf
;	genCall
	call	___setjmp
;cases/../gte/20210505-1.c:27: while (!stop)
;	genLabel
00101$:
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_stop
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;cases/../gte/20210505-1.c:28: call_func (func);
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_func
;	genCall
	call	_call_func
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
;cases/../gte/20210505-1.c:30: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/../gte/20210505-1.c:31: }
;	genEndFunction
	ret
;	Total main_ function size at codegen: 1 bytes.
;cases/gte_20210505-1.c:10: void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
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
	call	___prints
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	jp	_main_
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
;cases/gte_20210505-1.c:12: __code const char * __getSuiteName(void) { return "gte/20210505-1"; }
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
	.ascii "gte/20210505-1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__stop:
	.db #0x00	;  0
	.area _CABS (ABS)
