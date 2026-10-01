	.bank BCODE
	.bank BDATA
	.bank BXDATA
	.bank BBIT
;--------------------------------------------------------------------------
;  crtxclear.asm - C run-time: clear XSEG
;
;  Copyright (C) 2004, Erik Petrich
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
;  might be covered by the GNU General Public License.
;--------------------------------------------------------------------------

	.area CSEG    (BANK=BCODE)
	.area GSINIT0 (BANK=BCODE)
	.area GSINIT1 (BANK=BCODE)
	.area GSINIT2 (BANK=BCODE)
	.area GSINIT3 (BANK=BCODE)
	.area GSINIT4 (BANK=BCODE)
	.area GSINIT5 (BANK=BCODE)
	.area GSINIT  (BANK=BCODE)
	.area GSFINAL (BANK=BCODE)

	.area GSINIT4 (BANK=BCODE)

__mcs51_genXRAMCLEAR::
	mov	r0,#l_PSEG
	mov	a,r0
	orl	a,#(l_PSEG >> 8)
	jz	00006$
	mov	r1,#a_PSEG
	mov	__XPAGE,#(a_PSEG >> 8)
	clr     a
00005$:	movx	@r1,a
	inc	r1
	djnz	r0,00005$

00006$:
	mov	r0,#l_XSEG
	mov	a,r0
	orl	a,#(l_XSEG >> 8)
	jz	00008$
	mov	r1,#((l_XSEG + 255) >> 8)
	mov	dptr,#a_XSEG
	clr     a
00007$:	movx	@dptr,a
	inc	dptr
	djnz	r0,00007$
	djnz	r1,00007$
00008$:

