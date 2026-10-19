;--------------------------------------------------------------------------
;  crt0.s - Generic crt0.s for the Intel 8080/8085
;
;  Copyright (C) 2000, Michael Hope
;  Copyright (C) 2026, Neil Johnson <neil.johnson71@gmail.com>
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
	;; No ABI key:  this file calls only gsinit and _main, neither with
	;; arguments, so it is the same under every calling convention.  The
	;; key the compiler would write, for a human reading this file:
	;.optsdcc -mi8085 sdcccall(1)
	.globl	_main

	.area	_HEADER (ABS)
	;; Reset vector
	.org 	0
	jmp	init

	.org	0x100
init:
	;; Set stack pointer to the top of memory.
	lxi	sp, #0xffff

	;; Initialise global variables.
	call	gsinit

	call	_main
	jmp	_exit

	;; Ordering of segments for the linker.
	;;
	;; An area not named "_CODE"/"_DATA" (the assembler's two predefined
	;; areas, in its <target>pst.c) belongs to no bank unless it names one,
	;; and aslink places such areas in an address space of their own from
	;; 0 - independently of, and typically overlapping, wherever _CODE and
	;; _DATA end up (linksrc/lkarea.c's per-bank lnkarea() location
	;; counter).  Tagging these areas with the bank of _CODE/_DATA
	;; (BANK=_CSEG / BANK=_DSEG, the two bank names the assembler
	;; predefines) makes them follow _CODE/_DATA in declaration order.
	;; Only the first declaration of each area needs the
	;; annotation (an area's bank, once set, applies to every later
	;; unannotated re-declaration of the same area, in this file or any
	;; other object linked with it) - annotated on every declaration here
	;; anyway, for robustness against future reordering.
	.area	_HOME (BANK=_CSEG)
	.area	_CODE
	.area	_INITIALIZER (BANK=_CSEG)
	.area   _GSINIT (BANK=_CSEG)
	.area   _GSFINAL (BANK=_CSEG)

	.area	_DATA
	.area	_INITIALIZED (BANK=_DSEG)
	.area	_BSEG (BANK=_DSEG)
	.area   _BSS (BANK=_DSEG)
	.area   _HEAP (BANK=_DSEG)

	.area   _CODE
_exit::
	;; Emulator/monitor return point: just stop.
	di
1$:
	hlt
	jmp	1$

	.area   _GSINIT (BANK=_CSEG)
gsinit::
	;; Zero-initialise the _DATA segment (no block instructions on the 8080).
	;;
	;; s__DATA/l__DATA are linker-generated "start of area"/"length of
	;; area" symbols. Vendor's aslink auto-generates comparable symbols
	;; under its own naming convention (linksrc/lkarea.c): l_<area> (length
	;; of the whole area - already exactly "l__DATA", since SDCC's own area
	;; name "_DATA" already carries the leading underscore "l_" prefixes
	;; onto) unchanged, but s_<area>_<n> (start address of the Nth areax
	;; segment contributed to that area across all linked modules, single
	;; underscore, numeric instance suffix) rather than SDCC's s__DATA. As
	;; long as crt0.rel is linked first (always true - see _crt[] in
	;; src/i8085/main.c) and contributes only an empty placeholder chunk to
	;; _DATA (true here), that first segment's start address equals the
	;; whole area's start address, so plain "_1" is the right instance to
	;; reference.
	lxi	b, #l__DATA
	mov	a, b
	ora	c
	jz	zeroed_data
	lxi	h, #s__DATA_1
zero_loop:
	mvi	m, #0x00
	inx	h
	dcx	b
	mov	a, b
	ora	c
	jnz	zero_loop
zeroed_data:

	;; Copy explicitly-initialised globals from _INITIALIZER to _INITIALIZED.
	lxi	b, #l__INITIALIZER
	mov	a, b
	ora	c
	jz	gsinit_next
	lxi	d, #s__INITIALIZED_1
	lxi	h, #s__INITIALIZER_1
copy_loop:
	mov	a, m
	stax	d
	inx	h
	inx	d
	dcx	b
	mov	a, b
	ora	c
	jnz	copy_loop

gsinit_next:

	.area   _GSFINAL (BANK=_CSEG)
	ret
