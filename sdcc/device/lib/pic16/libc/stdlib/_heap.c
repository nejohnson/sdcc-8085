/*-------------------------------------------------------------------------
   _heap.c - the default heap

   Copyright (C) 2026, Neil Johnson

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

#include <malloc.h>

/* Half of a RAM bank: the smallest PIC18 parts have 256 bytes of RAM. */
#define DEFAULT_HEAP_SIZE 128

static unsigned char _default_heap[DEFAULT_HEAP_SIZE];

/* Set up the heap that malloc, calloc and realloc use when the program
   has not called _initHeap. Only those functions refer to it, so the
   buffer is linked in only when they are. */
void _initDefaultHeap (void)
{
    _initHeap (_default_heap, sizeof _default_heap);
}
