;--------------------------------------------------------------------------
;  crt0.s - Generic crt0.s for the Intel 8080/8085
;
;  Copyright (C) 2000, Michael Hope
;  Intel 8080/8085 adaptation, 2026
;
;  This library is free software; you can redistribute it and/or modify it
;  under the terms of the GNU General Public License as published by the
;  Free Software Foundation; either version 2, or (at your option) any
;  later version.
;
;  This library is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;  GNU General Public License for more details.
;
;  As a special exception, if you link this library with other files,
;  some of which are compiled with SDCC, to produce an executable,
;  this library does not by itself cause the resulting executable to
;  be covered by the GNU General Public License. This exception does
;  not however invalidate any other reasons why the executable file
;  might be covered by the GNU General Public License.
;--------------------------------------------------------------------------

	.module crt0
	.optsdcc -mi8080 sdcccall(1)
	.globl	_main

	.area	_HEADER (ABS)
	;; Reset vector
	.org 	0
	jp	init

	.org	0x100
init:
	;; Set stack pointer to the top of memory.
	ld	sp,#0xffff

	;; Initialise global variables.
	call	gsinit

	call	_main
	jp	_exit

	;; Ordering of segments for the linker.
	.area	_HOME
	.area	_CODE
	.area	_INITIALIZER
	.area   _GSINIT
	.area   _GSFINAL

	.area	_DATA
	.area	_INITIALIZED
	.area	_BSEG
	.area   _BSS
	.area   _HEAP

	.area   _CODE
_exit::
	;; Emulator/monitor return point: just stop.
	di
1$:
	halt
	jp	1$

	.area   _GSINIT
gsinit::
	;; Zero-initialise the _DATA segment (no block instructions on the 8080).
	ld	bc, #l__DATA
	ld	a, b
	or	a, c
	jp	Z, zeroed_data
	ld	hl, #s__DATA
zero_loop:
	ld	(hl), #0x00
	inc	hl
	dec	bc
	ld	a, b
	or	a, c
	jp	NZ, zero_loop
zeroed_data:

	;; Copy explicitly-initialised globals from _INITIALIZER to _INITIALIZED.
	ld	bc, #l__INITIALIZER
	ld	a, b
	or	a, c
	jp	Z, gsinit_next
	ld	de, #s__INITIALIZED
	ld	hl, #s__INITIALIZER
copy_loop:
	ld	a, (hl)
	ld	(de), a
	inc	hl
	inc	de
	dec	bc
	ld	a, b
	or	a, c
	jp	NZ, copy_loop

gsinit_next:

	.area   _GSFINAL
	ret
