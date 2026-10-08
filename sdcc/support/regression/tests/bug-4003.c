/* bug-4003

   The _Optional TS's recommended practice (subsection 6.5.2) says
   implementations performing data-flow analysis are encouraged to
   diagnose pointer arithmetic on a pointer to an optional-qualified
   type when analysis can't prove the pointer is non-null at that
   point - regardless of whether the added/subtracted value is a
   literal zero, because the + and - operators remove the _Optional
   qualifier from the referenced type of their result either way.

   SDCC's algebraicOpts (SDCCcse.c) folded "pointer + 0"/"pointer - 0"
   into a plain assignment or cast immediately, before the dataflow
   pass that would have raised the diagnostic ever got a chance to
   see the arithmetic operation at all - so instead of the correct
   recommended diagnostic (359, "could not be proven to be non-null
   at pointer arithmetic"), SDCC produced a bogus one (196, "pointer
   target lost _Optional qualifier") at the RETURN statement, even
   though + and - already correctly remove the _Optional qualifier
   from their result and the assignment to a non-optional return type
   is in fact fine.

   Fixed by deferring the "+0"/"-0" fold: algebraicOpts
   (via the new foldAdditiveIdentity) now skips the fold entirely when
   the non-literal operand has pointer or array type, so the
   arithmetic iCode survives long enough for checkStaticArrayParams's
   diagnostic pass to see and correctly diagnose it. A new pass,
   foldPointerZeroArithmetic (run once per eBBlockFromiCode, right
   after that diagnostic pass, same place #4109's fix already runs a
   cleanup pass), then performs the same fold that algebraicOpts would
   have done immediately before this fix - so generated code is
   unaffected, only the diagnostic timing changes. The matching
   short-circuits in geniCodeAdd (SDCCicode.c) got the identical
   pointer/array exclusion, for the same reason.

   Ported directly from upstream's own patch for this ticket (the
   same patch #4005/#4006 build on next); our SDCCcse.c/SDCCicode.c/
   SDCCopt.c matched upstream's pre-patch state at every touched
   point. Note: the maintainer's own testing of an earlier revision
   of this patch found a regression in bug3475630.c - manually
   re-verified that file still compiles correctly here (its only
   diagnostics are the unrelated, already-tracked #3952 warning-244
   fallout, Task #2), and the full 3-port regression (below) confirms
   it still passes at runtime too. */
#include <testfwk.h>

void
testBug (void)
{
  _Optional const volatile int *p = 0;
  int *restrict _Optional *pp = 0;

  /* + and - remove _Optional from the referenced type of their
     result, regardless of operand order, while preserving every
     other qualifier - checked at compile time via _Generic. */
  ASSERT (_Generic (p + 0, const volatile int *: 1, default: 0));
  ASSERT (_Generic (0 + p, const volatile int *: 1, default: 0));
  ASSERT (_Generic (pp + 0, int *restrict *: 1, default: 0));

  /* a guard that proves non-null before the arithmetic must not warn,
     and the resulting pointer must still work correctly at runtime */
  int value = 7;
  _Optional int *op = &value;
  if (op)
    {
      int *q = op + 0;
      ASSERT (*q == 7);
    }

  /* plain (non-optional) pointer and non-pointer zero-arithmetic must
     still fold and compute correctly */
  int a = 3;
  int *ip = &a;
  ASSERT (*(ip + 0) == 3);
  ASSERT (*(0 + ip) == 3);
  ASSERT (*(ip - 0) == 3);

  unsigned int u = 5;
  ASSERT (u + 0 == 5);
  ASSERT (0 + u == 5);
  ASSERT (u - 0 == 5);
}
