;--------------------------------------------------------------------------
;  crt0.s - Generic crt0.s for a Rabbit 5000
;	derived from "Generic crt0.s for a Z80"
;
;  Copyright (C) 2000, Michael Hope
;  Modified for Rabbit by Leland Morrison 2011
;  Copyright (C) 2020-2025, Philipp Klaus Krause
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
	.globl	___sdcc_external_startup

GCSR		.equ	0x00 ; Global control / status register
MMIDR		.equ	0x10
STACKSEG	.equ	0x11
SEGSIZE		.equ	0x13
MB0CR		.equ	0x14 ; Memory Bank 0 Control Register
MB1CR		.equ	0x15 ; Memory Bank 1 Control Register
MB2CR		.equ	0x16 ; Memory Bank 2 Control Register
MB3CR		.equ	0x17 ; Memory Bank 3 Control Register
EDMR		.equ	0x420 ; Enable Dual-Mode Register

	.area	_HEADER (ABS)

	; Reset vector - assuming smode0 and smode1 input pins are grounded
	.org 	0

	; Enable 16-bit internal I/O addresses and switch to instruction set mode 10
.r4k00
	ld	a, #0x80

	ioi
	ld	(MMIDR), a
	ioi
	ld	(EDMR), a
.r4k10

	; Setup internal interrupts. Upper byte of interrupt vector table address. Needs to be even.
	ld	a, #2
	ld	iir, a
	; Setup external interrupts. Upper byte of interrupt vector table address.
	dec	a
	ld	eir, a

	; Configure physical address space.
	; Leave MB0CR Flash at default slow at /OE0, /CS0
	; Assume slow RAM at /CS1, /OE1, /WE1
	ld	a, #0x05
	ioi
	ld	(MB2CR), a;

	; Configure logical address space. 32 KB root segment followed by 8 KB data segment, 16 KB stack segment, 8 KB xpc segment.
	; By default, SDCC will use the root segment for code and constant data, stack segment for data (including stack). data segment and xpc segment are then unused.
	ld	a, #0xa8	; 16 KB stack segment at 0xa000, 8 KB data segment at 0x8000
	ioi
	ld	(SEGSIZE), a

	; Configure mapping to physical address space.
	ld	a, #0x76
	ioi
	ld	(STACKSEG), a	; stack segment base at 0x76000 + 0xa000 = 0x80000

	; Set stack pointer directly above top of stack segment
	ld	sp, #0xe000

	call ___sdcc_external_startup

	; Initialise global variables. Skip if __sdcc_external_startup returned
	; non-zero value. Note: calling convention version 1 only.
	or	a, a
	jr	NZ, skip_gsinit
	call	gsinit
skip_gsinit:

	call	_main
	jp	_exit

	.org 0x0100 ; external interrupt 0
	ipres
	ret

	.org 0x0110 ; external interrupt 1
	ipres
	ret

	.org 0x0140 ; breakpoints
	ipres
	ret

	.org 0x0180 ; dma channel 0
	ipres
	ret

	.org 0x0190 ; dma channel 1
	ipres
	ret

	.org 0x01a0 ; dma channel 2
	ipres
	ret

	.org 0x01b0 ; dma channel 3
	ipres
	ret

	.org 0x01c0 ; dma channel 4
	ipres
	ret

	.org 0x01d0 ; dma channel 5
	ipres
	ret

	.org 0x01e0 ; dma channel 6
	ipres
	ret

	.org 0x01f0 ; dma channel 7
	ipres
	ret

	;; Ordering of segments for the linker.
	.area	_IIVT (ABS)
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
	.area   _HEAP_END (BANK=_DSEG)
	.area   _SSEG (BANK=_DSEG)

	.area   _XCONST

	.area   _XDATA

	.area   _CODE
_exit::
	;; Exit - special code to the emulator
	ld	a,#0
	rst     #0x28
1$:
	;halt		; opcode for halt used for 'altd' on rabbit processors
	jr	1$

	.area   _GSINIT
gsinit::
	ld	bc, #l__DATA
	ld	a, b
	or	a, c
	jr	Z, zeroed_data
	ld	hl,	#a__DATA
	ld	(hl), #0x00
	dec	bc
	ld	a, b
	or	a, c
	jr	Z, zeroed_data
	ld	e, l
	ld	d, h
	inc	de
	ldir
zeroed_data:

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

