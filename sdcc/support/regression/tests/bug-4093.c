/* bug-4093

   N3886 6.6.1p20: a constant expression shall evaluate to a constant
   that is in the range of representable values for its type - a
   constraint violation that must be diagnosed, for every type, not
   just at runtime where unsigned wraparound is otherwise defined
   behaviour. valPlus (SDCCval.c) silently truncated a constant
   int/unsigned int addition's result with no diagnostic at all,
   whether the overflow was a genuine signed overflow or an unsigned
   wraparound.

   An initial candidate patch (attached to this ticket upstream) only
   added the check for signed int addition, which its own author
   and a reviewer agreed was incomplete - unsigned int addition
   overflow (e.g. 65535u + 1u) still went undiagnosed. That patch
   was withdrawn; three narrower, independent preconditions were
   split out instead (#4100, #4101, #4102, all ported separately).

   Fixed here in valPlus's plain int/unsigned int branch (the
   SPEC_LONG/SPEC_LONGLONG/IS_BITINT branches already handle their
   own wraparound bookkeeping and are out of scope for this ticket):
   for both the signed and unsigned case, widen each already-narrowed
   operand to the next-larger host-side target type (TYPE_TARGET_LONG
   / TYPE_TARGET_ULONG, both wide enough to hold the sum of any two
   16-bit operands without host overflow), add, then compare the
   widened sum against its own truncation back to the narrow target
   type - mirroring the exact pattern already used by valMult just
   above it in this same file for its own, pre-existing unsigned
   int multiplication overflow check. */
#include <testfwk.h>

#if 0 /* 32767 + 1 overflows a 16-bit signed int - now a diagnosed constant expression */
enum { signed_overflow = 32767 + 1 };
#endif

#if 0 /* 65535u + 1u wraps a 16-bit unsigned int - now diagnosed too, closing the gap the withdrawn patch left open */
enum { unsigned_wrap = 65535u + 1u };
#endif

enum { signed_maximum = 32767 + 0 };     /* in range: must not warn */
enum { signed_minimum = -32767 + -1 };   /* exactly INT_MIN: must not warn */
enum { unsigned_in_range = 65535u + 0u }; /* in range: must not warn */

void
testBug (void)
{
  ASSERT (signed_maximum == 32767);
  ASSERT (signed_minimum == -32768);
  ASSERT (unsigned_in_range == 65535u);

  /* runtime (non-constant) addition must stay unaffected */
  int a = 32767;
  int b = 1;
  ASSERT (a + b == -32768);
  unsigned int c = 65535u;
  unsigned int d = 1u;
  ASSERT (c + d == 0u);
}
