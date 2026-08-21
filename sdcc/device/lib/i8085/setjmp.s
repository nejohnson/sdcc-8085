;--------------------------------------------------------------------------
;  setjmp.s   (Intel 8080/8085)
;
;  Copyright (C) 2011-2024, Philipp Klaus Krause
;  Copyright (C) 2024 Janko Stamenovic
;
;  8080/8085 port derived from the z80 version. The 8080/8085 has no index
;  register, so - like the sm83 - there is no frame pointer to save and the
;  jmp_buf is only 4 bytes (2 for the return address, 2 for the stack
;  pointer). Every instruction used here (pop/push, mov, xchg, dad sp,
;  sphl, pchl) is part of the 8080 subset.
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

	.module setjmp
	;; vendor's asz80/as8085 (used for this port now - see asxxxx-integration-plan.md) doesn't recognize .optsdcc, an SDCC-only extension; kept as a comment for a human reading this file.
	;.optsdcc -mi8085 sdcccall(1)

	.area	_CODE

	.globl ___setjmp

; int __setjmp (jmp_buf buf);   buf in hl.  Stores: ret addr, then SP.
___setjmp:
	; store ret addr
	pop	de
	push	de
	mov	m, e
	inx	h
	mov	m, d
	inx	h

	; store SP (value while inside setjmp, i.e. pointing at our ret addr)
	xra	a
	mov	e, a
	mov	d, a
	xchg
	dad	sp
	xchg
	mov	m, e
	inx	h
	mov	m, d

	; ret 0
	mov	e, a
	mov	d, a
	ret


	.globl _longjmp

; void longjmp (jmp_buf buf, int rv);
;   buf in hl; rv is passed on the stack (at sp+2, past our return address).
_longjmp:
	; fetch rv off the stack (discard our own return address first)
	pop	de		; de = longjmp's return address (unused)
	pop	de		; de = rv

	; pass retval as is, only if 0 pass 1
	mov	a, e
	ora	d
	jnz	s1
	inr	e
s1:
	; save retval
	push	de

	; fetch stored jumpaddr
	mov	c, m
	inx	h
	mov	b, m
	inx	h

	; fetch spval
	mov	e, m
	inx	h
	mov	d, m

	; hl = spval, de = retval
	xchg
	pop	de

	; adjust the stack: restore SP, discard the stored return-address slot
	sphl
	pop	hl

	; jump to jumpaddr with retval in de
	mov	l, c
	mov	h, b
	pchl
