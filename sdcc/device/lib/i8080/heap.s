;--------------------------------------------------------------------------
;  heap.s
;
;  Copyright (C) 2001, Michael Hope
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

; Just stubs - not copyrightable
; All instructions here (call, .area, .ds) are valid on the 8080/8085.

        ;; Stubs that hook the heap in
        .globl  ___sdcc_heap_init

        ;; Vendor's asz80/aslink only auto-bank _CODE/_DATA (asz80/z80pst.c);
        ;; every other SDCC-only area needs an explicit (BANK=_CSEG) /
        ;; (BANK=_DSEG) annotation on at least one of its declarations across
        ;; the whole link, or it gets placed in its own unbanked address
        ;; space starting at 0 instead of being concatenated where it
        ;; belongs (see the "Ordering of segments" comment in crt0.s for the
        ;; full explanation). crt0.s's own (empty) _GSINIT/_HEAP references
        ;; already carry these annotations, so strictly they're redundant
        ;; here as long as crt0.rel is linked before this file - but
        ;; _HEAP_END is used *only* here, nowhere in crt0.s, so it has no
        ;; other source for the annotation it needs (confirmed the hard way:
        ;; without it, malloc()'s free-list init reads a garbage heap size
        ;; from wherever the linker happened to place the unbanked
        ;; ___sdcc_heap_end, not the 1023 bytes actually reserved right
        ;; before it - tst_malloc.c's "p1 == NULL when out of memory"
        ;; assertions started passing/failing unpredictably depending on
        ;; that placement). Annotated on all three below regardless, for the
        ;; same robustness-against-reordering reason as crt0.s.
        .area   _GSINIT (BANK=_CSEG)
        call    ___sdcc_heap_init

        .area   _HEAP (BANK=_DSEG)
___sdcc_heap::
        ;; For now just allocate 1k of heap.
        .ds     1023

        .area   _HEAP_END (BANK=_DSEG)
___sdcc_heap_end::
        .ds     1
