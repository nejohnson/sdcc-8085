;--------------------------------------------------------------------------
;  crt0.s - Generic crt0.s for a Z80
;
;  Copyright (C) 2000, Michael Hope
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
;  You should have received a copy of the GNU General Public License 
;  along with this library; see the file COPYING. If not, write to the
;  Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
;   MA 02110-1301, USA.
;
;  As a special exception, if you link this library with other files,
;  some of which are compiled with SDCC, to produce an executable,
;  this library does not by itself cause the resulting executable to
;  be covered by the GNU General Public License. This exception does
;  not however invalidate any other reasons why the executable file
;   might be covered by the GNU General Public License.
;--------------------------------------------------------------------------

	.module crt0
	.globl	_main

	.area	_HEADER (ABS)
	;; Reset vector
	.org 	0
	jp	init

	.org	0x08
	ei
	reti
	.org	0x10
	ei
	reti
	.org	0x18
	ei
	reti
	.org	0x20
	ei
	reti
	.org	0x28
	ei
	reti
	.org	0x30
	ei
	reti
	.org	0x38
	ei
	reti

	.org	0x100
init:
	;; Set stack pointer directly above top of memory.
	ld	sp,#0x0000

	call	___sdcc_external_startup

	;; Initialise global variables. Skip if __sdcc_external_startup returned
	;; non-zero value. Note: calling convention version 1 only.
	or	a, a
	call	Z, gsinit

	call	_main
	jp	_exit

	;; Ordering of segments for the linker.
	;;
	;; ASxxxx aslink lays out the areas of a bank consecutively from that
	;; bank's base, and packs areas belonging to no bank from address 0 -
	;; it does not simply continue from the previous area the way sdld
	;; does.  Naming a bank is therefore what keeps this sequence together
	;; behind _CODE, instead of every area here landing on top of the ABS
	;; _HEADER.  _CODE and _DATA carry no attribute because the assembler
	;; predefines them, already in _CSEG and _DSEG respectively (see the
	;; area[]/bank[] tables in ASxxxx's <target>pst.c); repeating it here
	;; would be a multiple-definition error.  Only the first declaration
	;; of an area may carry attributes, and a module that declares an area
	;; plainly - as every compiled module does - inherits the bank from
	;; whichever module did name one, so this file alone settles the layout.
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
__clock::
	ld	a,#2
	rst	0x08
	ret

_exit::
	;; Exit - special code to the emulator
	ld	a,#0
	rst	0x08
1$:
	halt
	jr	1$

	.area   _GSINIT
gsinit::

	; Default-initialized global variables.
	;
	; a_<area> is the start address of an area and l_<area> its length.
	; sdld spells that start address s_<area>; in ASxxxx s_<area>_<n> means
	; something else - the base of module n's segment of the area - so the
	; area-wide name is the one to pair with l_<area>.
        ld      bc, #l__DATA
        ld      a, b
        or      a, c
        jr      Z, zeroed_data
        ld      hl, #a__DATA
        ld      (hl), #0x00
        dec     bc
        ld      a, b
        or      a, c
        jr      Z, zeroed_data
        ld      e, l
        ld      d, h
        inc     de
        ldir
zeroed_data:

	; Explicitly initialized global variables.
	ld	bc, #l__INITIALIZER
	ld	a, b
	or	a, c
	jr	Z, gsinit_next
	ld	de, #a__INITIALIZED
	ld	hl, #a__INITIALIZER
	ldir

gsinit_next:

	.area   _GSFINAL
	ret

