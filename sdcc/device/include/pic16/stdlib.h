/*-------------------------------------------------------------------------
   stdlib.h - the standard header, and the PIC18's own conversions

   Copyright (C) 1998, Sandeep Dutta . sandeep.dutta@usa.net
   Ported to PIC16 port by Vangelis Rokas, 2004 <vrokas AT otenet.gr>

   This library is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License 
   along with this library; see the file COPYING. If not, write to the
   Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

   As a special exception, if you link this library with other files,
   some of which are compiled with SDCC, to produce an executable,
   this library does not by itself cause the resulting executable to
   be covered by the GNU General Public License. This exception does
   not however invalidate any other reasons why the executable file
   might be covered by the GNU General Public License.
-------------------------------------------------------------------------*/

#ifndef __PIC16_STDLIB_H__
#define __PIC16_STDLIB_H__ 1

#include_next <stdlib.h>

#pragma library c

#include <stdint.h>

/* conversions into a buffer in data memory */
void uitoa (unsigned int, __data char *, unsigned char);
void itoa (int, __data char *, unsigned char);
void ultoa (unsigned long, __data char *, unsigned char);
void ltoa (long, __data char *, unsigned char);
char x_ftoa (float, __data char *, unsigned char, unsigned char);
void g_ftoa (__data char *, float, char);

uint16_t crc16 (uint8_t *, uint32_t, uint16_t);

#endif /* __PIC16_STDLIB_H__ */
