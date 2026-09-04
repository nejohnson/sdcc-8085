;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_align_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _abort
	.globl ___prints
	.globl ___fail
	.globl _s_d_ld
	.globl _s_f_ld
	.globl _s_i_ld
	.globl _s_s_ld
	.globl _s_c_ld
	.globl _s_f_d
	.globl _s_i_d
	.globl _s_s_d
	.globl _s_c_d
	.globl _s_s_f
	.globl _s_c_f
	.globl _s_s_i
	.globl _s_c_i
	.globl _s_c_s
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
_s_c_s::
	.ds 3
_s_c_i::
	.ds 3
_s_s_i::
	.ds 4
_s_c_f::
	.ds 5
_s_s_f::
	.ds 6
_s_c_d::
	.ds 5
_s_s_d::
	.ds 6
_s_i_d::
	.ds 6
_s_f_d::
	.ds 8
_s_c_ld::
	.ds 5
_s_s_ld::
	.ds 6
_s_i_ld::
	.ds 6
_s_f_ld::
	.ds 8
_s_d_ld::
	.ds 8
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
;cases/gte_align-2.c:7: void abort(void) {ASSERT(0);}
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
	.ascii "cases/gte_align-2.c"
	.db 0x00
;cases/../gte/align-2.c:19: int main ()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../gte/align-2.c:21: if (s_c_s.c != 'a') abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s_c_s + 0)
;	genCmpEq
	cp	a, #0x61
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00383$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00102$:
;cases/../gte/align-2.c:22: if (s_c_s.s != 13) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_c_s + 1)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0d
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00384$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00104$:
;cases/../gte/align-2.c:23: if (s_c_i.c != 'b') abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s_c_i + 0)
;	genCmpEq
	cp	a, #0x62
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00385$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00106$:
;cases/../gte/align-2.c:24: if (s_c_i.i != 14) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_c_i + 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0e
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00386$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00108$:
;cases/../gte/align-2.c:25: if (s_s_i.s != 15) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_s_i + 0)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0f
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00387$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00110$:
;cases/../gte/align-2.c:26: if (s_s_i.i != 16) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_s_i + 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x10
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00388$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00112$:
;cases/../gte/align-2.c:27: if (s_c_f.c != 'c') abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s_c_f + 0)
;	genCmpEq
	cp	a, #0x63
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00389$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00114$:
;cases/../gte/align-2.c:28: if (s_c_f.f != 17.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_c_f + 1)
	ld	hl, (#_s_c_f + 3)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x4188
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genCall
	call	_abort
;	genLabel
00116$:
;cases/../gte/align-2.c:29: if (s_s_f.s != 18) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_s_f + 0)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x12
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00390$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00118$:
;cases/../gte/align-2.c:30: if (s_s_f.f != 19.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_s_f + 2)
	ld	hl, (#_s_s_f + 4)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x4198
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00120$
;	genCall
	call	_abort
;	genLabel
00120$:
;cases/../gte/align-2.c:31: if (s_c_d.c != 'd') abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s_c_d + 0)
;	genCmpEq
	cp	a, #0x64
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00391$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00122$:
;cases/../gte/align-2.c:32: if (s_c_d.d != 20.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_c_d + 1)
	ld	hl, (#_s_c_d + 3)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41a0
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00124$
;	genCall
	call	_abort
;	genLabel
00124$:
;cases/../gte/align-2.c:33: if (s_s_d.s != 21) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_s_d + 0)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x15
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00392$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00126$:
;cases/../gte/align-2.c:34: if (s_s_d.d != 22.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_s_d + 2)
	ld	hl, (#_s_s_d + 4)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41b0
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00128$
;	genCall
	call	_abort
;	genLabel
00128$:
;cases/../gte/align-2.c:35: if (s_i_d.i != 23) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_i_d + 0)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x17
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00393$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00130$:
;cases/../gte/align-2.c:36: if (s_i_d.d != 24.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_i_d + 2)
	ld	hl, (#_s_i_d + 4)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41c0
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
;	genCall
	call	_abort
;	genLabel
00132$:
;cases/../gte/align-2.c:37: if (s_f_d.f != 25.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_f_d + 0)
	ld	hl, (#_s_f_d + 2)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41c8
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genCall
	call	_abort
;	genLabel
00134$:
;cases/../gte/align-2.c:38: if (s_f_d.d != 26.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_f_d + 4)
	ld	hl, (#_s_f_d + 6)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41d0
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00136$
;	genCall
	call	_abort
;	genLabel
00136$:
;cases/../gte/align-2.c:39: if (s_c_ld.c != 'e') abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s_c_ld + 0)
;	genCmpEq
	cp	a, #0x65
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00138$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00394$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00138$:
;cases/../gte/align-2.c:40: if (s_c_ld.ld != 27.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_c_ld + 1)
	ld	hl, (#_s_c_ld + 3)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41d8
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00140$
;	genCall
	call	_abort
;	genLabel
00140$:
;cases/../gte/align-2.c:41: if (s_s_ld.s != 28) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_s_ld + 0)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1c
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00142$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00395$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00142$:
;cases/../gte/align-2.c:42: if (s_s_ld.ld != 29.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_s_ld + 2)
	ld	hl, (#_s_s_ld + 4)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41e8
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00144$
;	genCall
	call	_abort
;	genLabel
00144$:
;cases/../gte/align-2.c:43: if (s_i_ld.i != 30) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_s_i_ld + 0)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1e
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00146$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00396$.
;	skipping generated iCode
;	genCall
	call	_abort
;	genLabel
00146$:
;cases/../gte/align-2.c:44: if (s_i_ld.ld != 31.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_i_ld + 2)
	ld	hl, (#_s_i_ld + 4)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x41f8
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00148$
;	genCall
	call	_abort
;	genLabel
00148$:
;cases/../gte/align-2.c:45: if (s_f_ld.f != 32.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_f_ld + 0)
	ld	hl, (#_s_f_ld + 2)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x4200
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00150$
;	genCall
	call	_abort
;	genLabel
00150$:
;cases/../gte/align-2.c:46: if (s_f_ld.ld != 33.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_f_ld + 4)
	ld	hl, (#_s_f_ld + 6)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x4204
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00152$
;	genCall
	call	_abort
;	genLabel
00152$:
;cases/../gte/align-2.c:47: if (s_d_ld.d != 34.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_d_ld + 0)
	ld	hl, (#_s_d_ld + 2)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x4208
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00154$
;	genCall
	call	_abort
;	genLabel
00154$:
;cases/../gte/align-2.c:48: if (s_d_ld.ld != 35.0) abort ();
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_s_d_ld + 4)
	ld	hl, (#_s_d_ld + 6)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x420c
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
;	genCall
	call	_abort
;	genLabel
00156$:
;cases/../gte/align-2.c:49: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00157$.
;cases/../gte/align-2.c:50: }
;	genEndFunction
	ret
;	Total main_ function size at codegen: 1 bytes.
;cases/gte_align-2.c:10: void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
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
;cases/gte_align-2.c:12: __code const char * __getSuiteName(void) { return "gte/align-2"; }
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
	.ascii "gte/align-2"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__s_c_s:
	.db #0x61	; 97	'a'
	.dw #0x000d
__xinit__s_c_i:
	.db #0x62	; 98	'b'
	.dw #0x000e
__xinit__s_s_i:
	.dw #0x000f
	.dw #0x0010
__xinit__s_c_f:
	.db #0x63	; 99	'c'
	.byte #0x00, #0x00, #0x88, #0x41	;  1.700000e+01
__xinit__s_s_f:
	.dw #0x0012
	.byte #0x00, #0x00, #0x98, #0x41	;  1.900000e+01
__xinit__s_c_d:
	.db #0x64	; 100	'd'
	.byte #0x00, #0x00, #0xa0, #0x41	;  2.000000e+01
__xinit__s_s_d:
	.dw #0x0015
	.byte #0x00, #0x00, #0xb0, #0x41	;  2.200000e+01
__xinit__s_i_d:
	.dw #0x0017
	.byte #0x00, #0x00, #0xc0, #0x41	;  2.400000e+01
__xinit__s_f_d:
	.byte #0x00, #0x00, #0xc8, #0x41	;  2.500000e+01
	.byte #0x00, #0x00, #0xd0, #0x41	;  2.600000e+01
__xinit__s_c_ld:
	.db #0x65	; 101	'e'
	.byte #0x00, #0x00, #0xd8, #0x41	;  2.700000e+01
__xinit__s_s_ld:
	.dw #0x001c
	.byte #0x00, #0x00, #0xe8, #0x41	;  2.900000e+01
__xinit__s_i_ld:
	.dw #0x001e
	.byte #0x00, #0x00, #0xf8, #0x41	;  3.100000e+01
__xinit__s_f_ld:
	.byte #0x00, #0x00, #0x00, #0x42	;  3.200000e+01
	.byte #0x00, #0x00, #0x04, #0x42	;  3.300000e+01
__xinit__s_d_ld:
	.byte #0x00, #0x00, #0x08, #0x42	;  3.400000e+01
	.byte #0x00, #0x00, #0x0c, #0x42	;  3.500000e+01
	.area _CABS (ABS)
