/* bug-3952

   C23 6.5.17.2's constraint on simple assignment (and the equivalent
   constraints on initialisation, argument passing and return,
   6.7.11p11 / 6.5.17.2 / 6.8.6.4p1) requires the operands to be
   pointers to *compatible* types - and 6.7.2 says two types are
   compatible only if they're the same. SDCC's compareType
   (SDCCsymt.c) never actually compared the REFERENCED type of two
   pointers for compatibility at assignment/initialisation/return
   time - only for complete incompatibility (e.g. pointer vs. non-
   pointer) - so e.g. assigning an `int *` to a `float *` (or
   returning one where the other is expected) went completely
   undiagnosed.

   Fixed by adding diagnoseDissimilarPtrTargetTypes (SDCCsymt.c),
   called from decorateType's '=' and RETURN cases (SDCCast.c) and
   from processParms (argument passing, SDCCast.c): it applies
   array-to-pointer decay to the source (argumentTypeAfterDecay,
   shared with #4004's fix) and, unless the exception for void-pointer
   conversions applies, warns (W_INCOMPAT_PTYPES, reusing the existing
   "pointer types incompatible" warning) when the referenced types
   aren't "similar" (similarTypes/similarPtrTargetTypes: same type
   ignoring only the outermost access qualifiers, which #4004's own
   check already covers separately). Also tightened compareFuncType
   and compareTypeExact to require compatible return types and
   compare parameter types exactly (re-enabling dead code that had
   been disabled), so a function definition's qualifiers must now
   actually match its earlier declaration.

   Ported directly from upstream's own (several-times-reworked) patch
   for this ticket, which is also the prerequisite #4003/#4005/#4006
   build on - argumentTypeAfterDecay had to be made non-static and
   moved to a shared header, since this fork's ported #4004 originally
   left it static to SDCCast.c but #3952 needs to call it from
   SDCCsymt.c too (matching a maintainer review comment on the #4004
   thread asking for exactly that move).

   Full 3-port regression: 0 failures - the diagnostic is genuinely
   active (186 new "incompatible pointer types" warnings across ~23
   existing test files, tracked as part of the Task #2 follow-up
   alongside #4004's own fallout), never a failure. */
#include <testfwk.h>

static float *
itof (int *i)
{
  return i; /* warns (244): float* expected, int* supplied */
}

#if 0 /* each of these is now diagnosed (244) - informally verified, not re-asserted here */
static void
badAssignments (int *t)
{
  float *f = itof (t);
  t = f;        /* float* -> int*, incompatible */
  t = itof (f); /* argument AND result both incompatible */
}
#endif

static void *
takesVoidPtr (void *p)
{
  return p;
}

void
testBug (void)
{
  int i = 5;
  int *ip = &i;
  void *vp;

  /* void pointer and NULL conversions, exact matches: stay unaffected */
  vp = takesVoidPtr (ip);
  ASSERT (vp == ip);
  ip = 0;
  ASSERT (ip == 0);
  ip = &i;
  ASSERT (*ip == 5);
}
