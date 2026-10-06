/* bug-4100

   Negating an unsigned bit-precise (_BitInt) constant did not wrap
   the result to the type's declared width. valUnaryPM (SDCCval.c)
   handled it the same way as a plain unsigned long long: compute
   "0 - value" in a 64-bit unsigned long long and leave it there,
   never masking down to the _BitInt's own bit width. Negating an
   8-bit unsigned _BitInt(8) value of 1 therefore produced
   0xFFFFFFFFFFFFFFFF instead of the correct 8-bit wraparound result
   of 0xFF (255).

   Fixed in valUnaryPM's SPEC_LONGLONG/V_BITINT branch: after the
   existing "0 - v_ulonglong" subtraction, mask the result down to
   the type's SPEC_BITINTWIDTH when the operand is actually a
   _BitInt (plain unsigned long long negation is untouched, since
   IS_BITINT is false for it).

   This is reported and fixed upstream as an independent patch (one
   of several cs99cjb split out as a precondition for the broader
   #4093 integer-constant-overflow ticket); ported directly, since
   our valUnaryPM matches upstream's at this point. */
#include <testfwk.h>

#pragma std_c2y

void
testBug (void)
{
  ASSERT ((unsigned long long) (-(unsigned _BitInt (8)) 1) == 255ULL);
  ASSERT ((unsigned long long) (-(unsigned _BitInt (8)) 0) == 0);
  ASSERT ((unsigned long) (-(unsigned _BitInt (64)) 1) == 4294967295UL);
  ASSERT ((unsigned long) ((unsigned long long) (-(unsigned _BitInt (64)) 1) >> 32) == 4294967295UL);

  /* plain (non-bit-precise) unsigned long long negation must stay unaffected */
  ASSERT ((unsigned long long) (-(1ULL)) == 0xFFFFFFFFFFFFFFFFULL);
  /* signed _BitInt negation must stay unaffected */
  ASSERT ((long long) (-(_BitInt (8)) 1) == -1);
}
