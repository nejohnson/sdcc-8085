;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tcc_61_integers
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abort
	.globl __putchar
	.globl _main_
	.globl _printf
	.globl ___prints
	.globl ___fail
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
;cases/tcc_61_integers.c:6: __code const char * __getSuiteName(void) { return "tcc/61_integers"; }
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
	.ascii "tcc/61_integers"
	.db 0x00
;cases/../tcc/61_integers.c:7: int main()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../tcc/61_integers.c:9: printf("18/21=%u\n", 18/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:10: printf("18%%21=%u\n", 18%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:11: printf("41/21=%u\n", 41/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:12: printf("41%%21=%u\n", 41%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0014
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:13: printf("42/21=%u\n", 42/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:14: printf("42%%21=%u\n", 42%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:15: printf("43/21=%u\n", 43/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:16: printf("43%%21=%u\n", 43%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:17: printf("126/21=%u\n", 126/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0006
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:18: printf("126%%21=%u\n", 126%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:19: printf("131/21=%u\n", 131/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0006
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:20: printf("131%%21=%u\n", 131%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:21: printf("(UINT_MAX/2+3)/2=%u\n", (UINT_MAX/2+3)/2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x4001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_13
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:22: printf("(UINT_MAX/2+3)%%2=%u\n", (UINT_MAX/2+3)%2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:24: printf("18/-21=%u\n", 18/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:25: printf("18%%-21=%u\n", 18%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:26: printf("41/-21=%u\n", 41/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:27: printf("41%%-21=%u\n", 41%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0014
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:28: printf("42/-21=%u\n", 42/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffe
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_19
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:29: printf("42%%-21=%u\n", 42%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:30: printf("43/-21=%u\n", 43/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffe
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:31: printf("43%%-21=%u\n", 43%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:32: printf("126/-21=%u\n", 126/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffa
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_23
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:33: printf("126%%-21=%u\n", 126%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_24
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:34: printf("131/-21=%u\n", 131/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffa
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:35: printf("131%%-21=%u\n", 131%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:36: printf("(UINT_MAX/2+3)/-2=%u\n", (UINT_MAX/2+3)/-2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_27
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:37: printf("(UINT_MAX/2+3)%%-2=%u\n", (UINT_MAX/2+3)%-2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8002
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:39: printf("-18/21=%u\n", -18/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_29
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:40: printf("-18%%21=%u\n", -18%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffee
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_30
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:41: printf("-41/21=%u\n", -41/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_31
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:42: printf("-41%%21=%u\n", -41%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffec
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:43: printf("-42/21=%u\n", -42/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffe
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:44: printf("-42%%21=%u\n", -42%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_34
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:45: printf("-43/21=%u\n", -43/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffe
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:46: printf("-43%%21=%u\n", -43%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_36
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:47: printf("-126/21=%u\n", -126/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffa
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_37
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:48: printf("-126%%21=%u\n", -126%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_38
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:49: printf("-131/21=%u\n", -131/21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffa
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_39
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:50: printf("-131%%21=%u\n", -131%21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffb
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_40
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:51: printf("-(UINT_MAX/2+3)/2=%u\n", (0-(UINT_MAX/2+3))/2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x3fff
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_41
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:52: printf("-(UINT_MAX/2+3)%%2=%u\n", (0-(UINT_MAX/2+3))%2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_42
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:54: printf("-18/-21=%u\n", -18/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_43
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:55: printf("-18%%-21=%u\n", -18%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffee
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_44
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:56: printf("-41/-21=%u\n", -41/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_45
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:57: printf("-41%%-21=%u\n", -41%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffec
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_46
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:58: printf("-42/-21=%u\n", -42/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_47
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:59: printf("-42%%-21=%u\n", -42%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_48
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:60: printf("-43/-21=%u\n", -43/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_49
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:61: printf("-43%%-21=%u\n", -43%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_50
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:62: printf("-126/-21=%u\n", -126/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0006
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_51
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:63: printf("-126%%-21=%u\n", -126%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_52
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:64: printf("-131/-21=%u\n", -131/-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0006
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_53
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:65: printf("-131%%-21=%u\n", -131%-21);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfffb
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_54
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:66: printf("-(UINT_MAX/2+3)/-2=%u\n", (0-(UINT_MAX/2+3))/-2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_55
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/../tcc/61_integers.c:67: printf("-(UINT_MAX/2+3)%%-2=%u\n", (0-(UINT_MAX/2+3))%-2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7ffe
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_56
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/../tcc/61_integers.c:69: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../tcc/61_integers.c:70: }
;	genEndFunction
	ret
;	Total main_ function size at codegen: 1 bytes.
___str_1:
	.ascii "18/21=%u"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "18%%21=%u"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "41/21=%u"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "41%%21=%u"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "42/21=%u"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "42%%21=%u"
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "43/21=%u"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "43%%21=%u"
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "126/21=%u"
	.db 0x0a
	.db 0x00
___str_10:
	.ascii "126%%21=%u"
	.db 0x0a
	.db 0x00
___str_11:
	.ascii "131/21=%u"
	.db 0x0a
	.db 0x00
___str_12:
	.ascii "131%%21=%u"
	.db 0x0a
	.db 0x00
___str_13:
	.ascii "(UINT_MAX/2+3)/2=%u"
	.db 0x0a
	.db 0x00
___str_14:
	.ascii "(UINT_MAX/2+3)%%2=%u"
	.db 0x0a
	.db 0x00
___str_15:
	.ascii "18/-21=%u"
	.db 0x0a
	.db 0x00
___str_16:
	.ascii "18%%-21=%u"
	.db 0x0a
	.db 0x00
___str_17:
	.ascii "41/-21=%u"
	.db 0x0a
	.db 0x00
___str_18:
	.ascii "41%%-21=%u"
	.db 0x0a
	.db 0x00
___str_19:
	.ascii "42/-21=%u"
	.db 0x0a
	.db 0x00
___str_20:
	.ascii "42%%-21=%u"
	.db 0x0a
	.db 0x00
___str_21:
	.ascii "43/-21=%u"
	.db 0x0a
	.db 0x00
___str_22:
	.ascii "43%%-21=%u"
	.db 0x0a
	.db 0x00
___str_23:
	.ascii "126/-21=%u"
	.db 0x0a
	.db 0x00
___str_24:
	.ascii "126%%-21=%u"
	.db 0x0a
	.db 0x00
___str_25:
	.ascii "131/-21=%u"
	.db 0x0a
	.db 0x00
___str_26:
	.ascii "131%%-21=%u"
	.db 0x0a
	.db 0x00
___str_27:
	.ascii "(UINT_MAX/2+3)/-2=%u"
	.db 0x0a
	.db 0x00
___str_28:
	.ascii "(UINT_MAX/2+3)%%-2=%u"
	.db 0x0a
	.db 0x00
___str_29:
	.ascii "-18/21=%u"
	.db 0x0a
	.db 0x00
___str_30:
	.ascii "-18%%21=%u"
	.db 0x0a
	.db 0x00
___str_31:
	.ascii "-41/21=%u"
	.db 0x0a
	.db 0x00
___str_32:
	.ascii "-41%%21=%u"
	.db 0x0a
	.db 0x00
___str_33:
	.ascii "-42/21=%u"
	.db 0x0a
	.db 0x00
___str_34:
	.ascii "-42%%21=%u"
	.db 0x0a
	.db 0x00
___str_35:
	.ascii "-43/21=%u"
	.db 0x0a
	.db 0x00
___str_36:
	.ascii "-43%%21=%u"
	.db 0x0a
	.db 0x00
___str_37:
	.ascii "-126/21=%u"
	.db 0x0a
	.db 0x00
___str_38:
	.ascii "-126%%21=%u"
	.db 0x0a
	.db 0x00
___str_39:
	.ascii "-131/21=%u"
	.db 0x0a
	.db 0x00
___str_40:
	.ascii "-131%%21=%u"
	.db 0x0a
	.db 0x00
___str_41:
	.ascii "-(UINT_MAX/2+3)/2=%u"
	.db 0x0a
	.db 0x00
___str_42:
	.ascii "-(UINT_MAX/2+3)%%2=%u"
	.db 0x0a
	.db 0x00
___str_43:
	.ascii "-18/-21=%u"
	.db 0x0a
	.db 0x00
___str_44:
	.ascii "-18%%-21=%u"
	.db 0x0a
	.db 0x00
___str_45:
	.ascii "-41/-21=%u"
	.db 0x0a
	.db 0x00
___str_46:
	.ascii "-41%%-21=%u"
	.db 0x0a
	.db 0x00
___str_47:
	.ascii "-42/-21=%u"
	.db 0x0a
	.db 0x00
___str_48:
	.ascii "-42%%-21=%u"
	.db 0x0a
	.db 0x00
___str_49:
	.ascii "-43/-21=%u"
	.db 0x0a
	.db 0x00
___str_50:
	.ascii "-43%%-21=%u"
	.db 0x0a
	.db 0x00
___str_51:
	.ascii "-126/-21=%u"
	.db 0x0a
	.db 0x00
___str_52:
	.ascii "-126%%-21=%u"
	.db 0x0a
	.db 0x00
___str_53:
	.ascii "-131/-21=%u"
	.db 0x0a
	.db 0x00
___str_54:
	.ascii "-131%%-21=%u"
	.db 0x0a
	.db 0x00
___str_55:
	.ascii "-(UINT_MAX/2+3)/-2=%u"
	.db 0x0a
	.db 0x00
___str_56:
	.ascii "-(UINT_MAX/2+3)%%-2=%u"
	.db 0x0a
	.db 0x00
;cases/tcc_61_integers.c:13: int putchar(int c){_putchar(c);return(c);}
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
;cases/tcc_61_integers.c:14: void abort(void) {ASSERT(0);}
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
	ld	hl, #__str_59
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_58
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_57
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total abort function size at codegen: 1 bytes.
__str_57:
	.ascii "Assertion failed"
	.db 0x00
__str_58:
	.ascii "0"
	.db 0x00
__str_59:
	.ascii "cases/tcc_61_integers.c"
	.db 0x00
;cases/tcc_61_integers.c:16: void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
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
	ld	hl, #___str_60
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
	ld	hl, #___str_63
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_62
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_61
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_60:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
___str_61:
	.ascii "Assertion failed"
	.db 0x00
___str_62:
	.ascii "!main_(MAINARGS)"
	.db 0x00
___str_63:
	.ascii "cases/tcc_61_integers.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
