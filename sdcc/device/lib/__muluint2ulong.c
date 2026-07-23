/*-------------------------------------------------------------------------
   __muluint2ulong.c - 16x16->32 widening unsigned multiply.

   The z80 port implements this compiler-support routine in hand-written
   assembly (device/lib/z80/__muluint2ulong.s) using ld iy / adc hl,hl / djnz,
   none of which exist on the 8080/8085. This portable C version (shift-and-add,
   with no multiply operator, so it does not recurse into itself) is used by the
   8080/8085 library instead. The compiler generates the correct calling
   convention automatically, so no assumptions about argument registers are
   baked in here.

   Copyright (c) 2026

   This library is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   As a special exception, if you link this library with other files,
   some of which are compiled with SDCC, to produce an executable,
   this library does not by itself cause the resulting executable to
   be covered by the GNU General Public License. This exception does
   not however invalidate any other reasons why the executable file
   might be covered by the GNU General Public License.
-------------------------------------------------------------------------*/

unsigned long
__muluint2ulong (unsigned int a, unsigned int b)
{
  unsigned long r = 0;
  unsigned long m = a;          /* zero-extend to 32 bits (not a multiply) */

  while (b)
    {
      if (b & 1u)
        r += m;
      m <<= 1;
      b >>= 1u;
    }

  return r;
}
