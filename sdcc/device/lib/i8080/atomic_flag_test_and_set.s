;--------------------------------------------------------------------------
;  atomic_flag_test_and_set.s - for the Intel 8080/8085.
;
;  The z80 port does this with a single flag-atomic sra (hl); the 8080/8085
;  have no read-modify-write on memory, so we bracket the access with di/ei
;  (interrupts are the only source of concurrency on these parts). The
;  atomic_flag is 0xfe when clear and 0xff when set (see stdatomic.h), so the
;  old state is bit 0 and setting it just stores 0xff. Pointer argument in HL
;  (sdcccall(1)), _Bool result (old value) in a.
;
;  Copyright (C) 2026
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

	.module atomic_flag_test_and_set
	.optsdcc -mi8080 sdcccall(1)

	.area   _CODE

	.globl _atomic_flag_test_and_set

_atomic_flag_test_and_set:
	di
	ld	a, (hl)		; old flag (0xfe clear / 0xff set)
	ld	(hl), #0xff	; set
	ei
	and	a, #0x01	; _Bool: old bit 0
	ret
