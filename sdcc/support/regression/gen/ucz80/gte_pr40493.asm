;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_pr40493
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _abort
	.globl ___prints
	.globl ___fail
	.globl _y01
	.globl _y00
	.globl _x01
	.globl _x00
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
_x00::
	.ds 2
_x01::
	.ds 2
_y00::
	.ds 2
_y01::
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/gte_pr40493.c:7: void abort(void) {ASSERT(0);}
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
	.ascii "cases/gte_pr40493.c"
	.db 0x00
;cases/../gte/pr40493.c:57: int main (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 24 bytes.
_main_::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -24
	ld	hl, #-24
	add	hl, sp
;cases/../gte/pr40493.c:61: a.bitfield.reg16 = 1;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	set	1, (hl)
;cases/../gte/pr40493.c:62: a.bitfield.imm16 = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	res	0, (hl)
;cases/../gte/pr40493.c:63: a.array[1] = 22;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x16
	ld	-21 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/../gte/pr40493.c:65: b = a;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0006
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/../gte/pr40493.c:66: x00 = b.array[0];
;	genPointerGet
;	genMove_o size 2 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
	ld	(_x00+0), a
	ld	a, -17 (ix)
	ld	(_x00+1), a
;cases/../gte/pr40493.c:67: x01 = b.array[1];
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
	ld	(_x01+0), a
	ld	a, -15 (ix)
	ld	(_x01+1), a
;cases/../gte/pr40493.c:69: c = b;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
	ex	de, hl
;	genBuiltIn
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0006
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/../gte/pr40493.c:70: y00 = c.array[0];
;	genPointerGet
;	genMove_o size 2 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	(_y00+0), a
	ld	a, -11 (ix)
	ld	(_y00+1), a
;cases/../gte/pr40493.c:71: y01 = c.array[1];
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	(_y01+0), a
	ld	a, -9 (ix)
	ld	(_y01+1), a
;cases/../gte/pr40493.c:73: d = c;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #18
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
	ex	de, hl
;fetchPairLong
	ld	bc, #0x0006
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/../gte/pr40493.c:74: if (d.bitfield.reg16 != 1)
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #18
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	and	a, #0x01
;	genCmpEq
	cp	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;cases/../gte/pr40493.c:75: abort();
;	genCall
	call	_abort
;	genLabel
00102$:
;cases/../gte/pr40493.c:76: if (d.bitfield.imm16 != 0)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/../gte/pr40493.c:77: abort();
;	genCall
	call	_abort
;	genLabel
00104$:
;cases/../gte/pr40493.c:78: if (d.array[1] != 22)
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
; common peephole 14 loaded -4 (ix) into a directly instead of going through c.
	ld	b, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x16
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;cases/../gte/pr40493.c:79: abort();
;	genCall
	call	_abort
;	genLabel
00106$:
;cases/../gte/pr40493.c:81: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/../gte/pr40493.c:82: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total main_ function size at codegen: 15 bytes.
;cases/gte_pr40493.c:10: void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
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
;cases/gte_pr40493.c:12: __code const char * __getSuiteName(void) { return "gte/pr40493"; }
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
	.ascii "gte/pr40493"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
