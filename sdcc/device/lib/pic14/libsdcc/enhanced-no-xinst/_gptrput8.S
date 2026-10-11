; -------------------------------------------------------------------------
;  _gptrput8.S - write eight bytes pointed to by a generic pointer
;
;  Copyright (C) 2005, Raphael Neider <rneider AT web.de>
;  Copyright (C) 2026, Neil Johnson
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

; calling conventions:
;   3 byte generic pointer is passed in via (WREG STK00 STK01).
;   _gptrget8 returns the value in (WREG STK00 ... STK06), LSB in STK06.
;   _gptrput8 takes the value in (STK02 ... STK09), MSB in STK02.
;
;   unsigned long long _gptrget8 (void *gptr);
;   void _gptrput8 (void *ptr, unsigned long long val);

include macros.inc
include p16f_common.inc

	extern	STK06
	extern	STK07
	extern	STK08
	extern	STK09

	global	__gptrput8

	CODE

__gptrput8:
	check_data	__dataptrput8
	; cannot write to __code space
	return

__dataptrput8:
	setup_fsr
	movf	STK09, W	; byte 0 of val
	put_indf0_postinc
	movf	STK08, W	; byte 1 of val
	put_indf0_postinc
	movf	STK07, W	; byte 2 of val
	put_indf0_postinc
	movf	STK06, W	; byte 3 of val
	put_indf0_postinc
	movf	STK05, W	; byte 4 of val
	put_indf0_postinc
	movf	STK04, W	; byte 5 of val
	put_indf0_postinc
	movf	STK03, W	; byte 6 of val
	put_indf0_postinc
	movf	STK02, W	; byte 7 of val
	movwf	_INDF0
	return

	END
