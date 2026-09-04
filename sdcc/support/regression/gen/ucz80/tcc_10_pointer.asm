;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tcc_10_pointer
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abort
	.globl __putchar
	.globl _main_
	.globl _printf
	.globl ___prints
	.globl ___fail
	.globl _bolshevic
	.globl ___numCases
	.globl ___getSuiteName
	.globl _putchar
	.globl ___runSuite
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_bolshevic::
	.ds 6
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
;cases/tcc_10_pointer.c:6: __code const char * __getSuiteName(void) { return "tcc/10_pointer"; }
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
	ld	de, #___str_0
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_0:
	.ascii "tcc/10_pointer"
	.db 0x00
;cases/../tcc/10_pointer.c:10: int main(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_main_::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/../tcc/10_pointer.c:15: a = 42;
;	genAssign
;fetchPairLong
	ld	hl, #0x002a
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../tcc/10_pointer.c:16: b = &a;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/../tcc/10_pointer.c:17: printf("a = %d\n", *b);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:19: bolshevic.a = 12;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x000c
	ld	(_bolshevic), hl
;cases/../tcc/10_pointer.c:20: bolshevic.b = 34;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x22
	ld	((_bolshevic + 2)), hl
;cases/../tcc/10_pointer.c:21: bolshevic.c = 56;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x38
	ld	((_bolshevic + 4)), hl
;cases/../tcc/10_pointer.c:23: printf("bolshevic.a = %d\n", bolshevic.a);
;	genPointerGet
	ld	hl, (#_bolshevic + 0)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:24: printf("bolshevic.b = %d\n", bolshevic.b);
;	genPointerGet
	ld	hl, (#(_bolshevic + 2) + 0)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:25: printf("bolshevic.c = %d\n", bolshevic.c);
;	genPointerGet
	ld	hl, (#(_bolshevic + 4) + 0)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:27: struct ziggy *tsar = &bolshevic;
;	skipping iCode since result will be rematerialized
;cases/../tcc/10_pointer.c:29: printf("tsar->a = %d\n", tsar->a);
;	genPointerGet
	ld	hl, (#_bolshevic + 0)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:30: printf("tsar->b = %d\n", tsar->b);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_bolshevic + 2)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:31: printf("tsar->c = %d\n", tsar->c);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_bolshevic + 4)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:33: b = &(bolshevic.b);
;	skipping iCode since result will be rematerialized
;cases/../tcc/10_pointer.c:34: printf("bolshevic.b = %d\n", *b);
;	genPointerGet
	ld	hl, (#(_bolshevic + 2) + 0)
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/10_pointer.c:36: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../tcc/10_pointer.c:37: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total main_ function size at codegen: 5 bytes.
___str_1:
	.ascii "a = %d"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "bolshevic.a = %d"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "bolshevic.b = %d"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "bolshevic.c = %d"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "tsar->a = %d"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "tsar->b = %d"
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "tsar->c = %d"
	.db 0x0a
	.db 0x00
;cases/tcc_10_pointer.c:13: int putchar(int c){_putchar(c);return(c);}
;	genLabel
;	genFunction
;	---------------------------------
; Function putchar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_putchar::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__putchar
	pop	de
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total putchar function size at codegen: 1 bytes.
;cases/tcc_10_pointer.c:14: void abort(void) {ASSERT(0);}
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
	ld	hl, #0x000e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_8
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total abort function size at codegen: 1 bytes.
__str_8:
	.ascii "Assertion failed"
	.db 0x00
__str_9:
	.ascii "0"
	.db 0x00
__str_10:
	.ascii "cases/tcc_10_pointer.c"
	.db 0x00
;cases/tcc_10_pointer.c:16: void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
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
	ld	hl, #___str_11
;	genCall
	call	___prints
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_main_
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	ret	z
; common peephole 161 replaced jump by return.
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
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_11:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
___str_12:
	.ascii "Assertion failed"
	.db 0x00
___str_13:
	.ascii "!main_(MAINARGS)"
	.db 0x00
___str_14:
	.ascii "cases/tcc_10_pointer.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
