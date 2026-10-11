; -------------------------------------------------------------------------
;  _gptrget8.S - read eight bytes pointed to by a generic pointer
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

	global	__gptrget8
	extern	__codeptrget1

	CODE

__gptrget8:
	select_routine __dataptrget8, __codeptrget8
	; invalid tag -- return 0
	clrf	STK06
	clrf	STK05
	clrf	STK04
	clrf	STK03
	clrf	STK02
	clrf	STK01
	clrf	STK00
	retlw	0x00

__dataptrget8:
	setup_fsr
	moviw	FSR0++
	movwf	STK06		; byte 0
	moviw	FSR0++
	movwf	STK05		; byte 1
	moviw	FSR0++
	movwf	STK04		; byte 2
	moviw	FSR0++
	movwf	STK03		; byte 3
	moviw	FSR0++
	movwf	STK02		; byte 4
	moviw	FSR0++
	movwf	STK01		; byte 5
	moviw	FSR0++
	movwf	STK00		; byte 6
	movf	_INDF0, W
	return			; MSB in WREG

__codeptrget8:
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK06		; byte 0
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK05		; byte 1
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK04		; byte 2
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK03		; byte 3
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK02		; byte 4
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK07		; byte 5 (STK00/STK01 still hold the address)
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK08		; byte 6 (STK00/STK01 still hold the address)
	incfsz	STK01,F		; increment low address byte
	decf	STK00,F		; undo increment of high address byte if low byte did not overflow
	incf	STK00,F		; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK09		; byte 7 (STK00/STK01 still hold the address)
	movf	STK07, W
	movwf	STK01		; byte 5
	movf	STK08, W
	movwf	STK00		; byte 6
	movf	STK09, W	; MSB in WREG
	return

	END
