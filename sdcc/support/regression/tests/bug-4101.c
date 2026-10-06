/* bug-4101

   A constant conditional ('?:') expression folded its condition's
   truth value by truncating to 'int' instead of testing the full
   scalar value. decorateType's '?' case (SDCCast.c), for a literal
   condition, used "((int) ulFromVal (...)) != 0" to pick a branch -
   truncating a wide unsigned long long constant like
   4294967296ULL (2^32) down to 32 bits leaves 0, wrongly selecting
   the false branch, and converting a float constant like 0.5f via
   ulFromVal similarly loses the fractional part, also wrongly
   selecting the false branch.

   Fixed by replacing the truncating comparison with the existing
   isEqualVal() helper, which compares the value's own full
   representation against zero rather than going through an 'int'
   cast.

   Ported directly from upstream (one of several cs99cjb patches
   split out as a precondition for the broader #4093
   integer-constant-overflow ticket); our decorateType's '?' case
   matched upstream's at this point. */
#include <testfwk.h>

static int
wide (void)
{
  return 4294967296ULL ? 1 : 0;
}

static int
fractional (void)
{
  return 0.5f ? 1 : 0;
}

void
testBug (void)
{
  ASSERT (wide () == 1);
  ASSERT (fractional () == 1);
  ASSERT ((0ULL ? 1 : 0) == 0);
  /* ordinary, non-wide/non-float literal conditions must stay unaffected */
  ASSERT ((1 ? 10 : 20) == 10);
  ASSERT ((0 ? 10 : 20) == 20);
}
