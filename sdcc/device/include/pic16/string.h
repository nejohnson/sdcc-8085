/*-------------------------------------------------------------------------
   string.h - the standard header, and the PIC18's own string functions

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

#ifndef __PIC16_STRING_H
#define __PIC16_STRING_H 1

#include_next <string.h>

#pragma library c

char *strlwr (char *);
char *strupr (char *);
void *memrchr (const void *, int, size_t);

/* the same, for one memory space */
const __code void *memchrpgm (const __code void *, char, size_t);
__data void *memchrram (__data void *, char, size_t);
__data void *memcpypgm2ram (__data void *, const __code void *, size_t);
__data void *memcpyram2ram (__data void *, __data void *, size_t);

#endif
