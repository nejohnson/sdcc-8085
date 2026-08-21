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
	;; crt0.s is assembled by vendor's asz80/as8085 directly (not sdasz80),
	;; which doesn't recognize the .optsdcc directive SDAS added as an
	;; SDCC-only extension (see asxxxx-integration-plan.md) - kept below
	;; only as a comment, for a human reading this file.
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
	;; Vendor's asz80/aslink (unlike sdasz80/sdldz80) auto-assign areas
	;; not named "_CODE"/"_DATA" (its own two hardcoded default areas,
	;; asz80/z80pst.c) to no bank at all, which aslink then places in its
	;; own address space starting at 0 - independently of, and typically
	;; overlapping, wherever _CODE/_DATA end up (asxxxx-integration-plan.md,
	;; linksrc/lkarea.c's per-bank lnkarea() location counter). Tagging
	;; these SDCC-only areas explicitly with the same bank as _CODE/_DATA
	;; (BANK=_CSEG / BANK=_DSEG - the two bank names asz80/z80pst.c
	;; predefines for its built-in _CODE/_DATA areas) makes them
	;; concatenate after _CODE/_DATA in declaration order, same as under
	;; sdasz80/sdldz80. Only the first declaration of each area needs the
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
