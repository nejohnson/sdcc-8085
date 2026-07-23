/*-------------------------------------------------------------------------
   __mulsint2slong.c - 16x16->32 widening signed multiply.

   Portable C replacement for the z80 hand-written assembly version, for the
   8080/8085 library (see __muluint2ulong.c for why). Computes the signed
   product from the unsigned product with the usual two's-complement
   correction, so it needs no multiply operator of its own (which would
   otherwise recurse back into this helper).

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

extern unsigned long __muluint2ulong (unsigned int a, unsigned int b);

signed long
__mulsint2slong (int a, int b)
{
  unsigned long p = __muluint2ulong ((unsigned int) a, (unsigned int) b);

  /* signed = unsigned - (a<0 ? b<<16 : 0) - (b<0 ? a<<16 : 0) */
  if (a < 0)
    p -= (unsigned long) (unsigned int) b << 16;
  if (b < 0)
    p -= (unsigned long) (unsigned int) a << 16;

  return (signed long) p;
}
