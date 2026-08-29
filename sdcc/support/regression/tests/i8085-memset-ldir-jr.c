/*
   i8085-memset-ldir-jr.c

   Task #18: genBuiltInMemset's (src/i8085/gen.c) three-way cost dispatch
   (straight-line / loop / ldir) used to include an ungated "ldir" arm -
   a Zilog-only block-transfer mnemonic with no 8080/8085 hardware
   equivalent, unassemblable by as8085 - reachable whenever its cost
   estimate came out cheapest, which real code could hit (unlike this
   file's other ldir-cost sites, which are gated). The same function's
   loop arm also had an ungated "jr" (Zilog-only relative jump, also no
   8080/8085 equivalent) used for a first-iteration skip-ahead when an
   odd total size is split across a 2x-unrolled loop.

   fill_moderate_odd_size() reproduces the exact size/liveness
   combination that made the old cost formulas prefer the (now removed)
   ldir arm: a literal-size, register-dead memset() of 257 bytes. 257 is
   also odd and >255, so this same call exercises the double_loop 2x-
   unroll's first-iteration skip-ahead too - the exact case that used to
   emit "jr". Confirmed via direct .asm inspection this now compiles to
   the loop arm (mvi b,#0x81 / jmp / mvi m / inx hl / ... / dcr b / jnz),
   with the skip-ahead as a real "jmp", never "ldir" or "jr" - see also
   gen.c's own comments at the fix site. testBug() below is the runtime
   half: fills the whole buffer and checks every byte, both ends and the
   middle, to catch any off-by-one in the unrolled loop's first-iteration
   skip (that specific class of bug is exactly what "jr" was there to
   get right, and is exactly what a byte-count fill error would look
   like if the fix got the skip-ahead wrong).

   fill_large_would_exceed_loop_cap() covers the second case the removed
   ldir arm used to (partly) handle: sizes above the loop's 510-byte
   cap (a single 8-bit b-counter loop, even 2x-unrolled, cannot
   represent more). These now always fall back to the straight-line arm
   (unbounded, if increasingly large - see gen.c's own comment at the
   dispatch site) rather than the no-longer-available ldir option.
*/

#include <testfwk.h>

#if !defined(__SDCC_pdk14) // Not enough RAM/code space for a 600-byte buffer.

void *__builtin_memset (void *dst, int c, unsigned n) __builtin__;

unsigned char buf257[257];
void fill_moderate_odd_size(void)
{
    __builtin_memset(buf257, 0x5a, 257);
}

unsigned char buf600[600];
void fill_large_would_exceed_loop_cap(void)
{
    __builtin_memset(buf600, 0xa5, 600);
}

void testBug(void)
{
    unsigned int i;

    buf257[0] = 0;
    buf257[128] = 0;
    buf257[256] = 0;
    fill_moderate_odd_size();
    for (i = 0; i < 257; i++)
        if (buf257[i] != 0x5a)
        {
            ASSERT(0);
            break;
        }

    buf600[0] = 0;
    buf600[300] = 0;
    buf600[599] = 0;
    fill_large_would_exceed_loop_cap();
    for (i = 0; i < 600; i++)
        if (buf600[i] != 0xa5)
        {
            ASSERT(0);
            break;
        }
}

#else

void testBug(void)
{
}

#endif
