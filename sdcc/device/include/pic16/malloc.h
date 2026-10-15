/*-------------------------------------------------------------------------
   malloc.h - dynamic memory allocation header

   Copyright (C) 2004, Vangelis Rokas <vrokas AT otenet.gr>

   Modifications for PIC14 by
   Copyright (C) 2019 Gonzalo Pérez de Olaguer Córdoba <salo@gpoc.es>

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

/* The heap behind malloc, calloc and realloc, shared with pic14. */

#ifndef __PIC16_MALLOC_H__
#define __PIC16_MALLOC_H__

#include <stdlib.h>

#pragma library c

#define MAX_BLOCK_SIZE  0x7f  /* the size field of a block header is 7 bits */

#define ALLOC_FLAG      0x80

/* memory block header, max size 127 bytes, 126 usable */
typedef union {
  unsigned char datum;
  struct {
    unsigned count: 7;    /* 0: last block, else block size including this header */
    unsigned alloc: 1;    /* 0: free, 1: allocated */
  } bits;
} _malloc_rec;

#define PTR2REC(p)    ((_malloc_rec __data *)((unsigned int)(p) - 1))
#define REC2PTR(r)    ((void __data *)((unsigned int)(r) + 1))
#define NEXTREC(r)    ((_malloc_rec __data *)((unsigned int)(r) + (r)->bits.count))

/* the heap in use; NULL until _initHeap or the first allocation */
extern _malloc_rec __data *_malloc_heap;

/* initialize the heap in the given buffer; without this, the first
 * malloc/realloc/calloc sets up a default heap of 128 bytes */
void _initHeap (void __data *ptr, size_t size);

/* set up the default heap */
void _initDefaultHeap (void);

/* (re)allocate the specified block with the specified size */
void __data *_allocateHeap (void __data *ptr, size_t size);

/* free bytes in the heap, in all and in the largest block */
size_t memfree (void);
size_t memfreemax (void);

#endif /* __PIC16_MALLOC_H__ */
