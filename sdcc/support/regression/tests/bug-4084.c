/* bug-4084

   The first (controlling) operand of ?: must have scalar type, the
   same constraint if/while/do/for's controlling expression is checked
   against (N3886 6.5.15p2) - SDCC silently accepted a struct there,
   with no diagnostic at all.

   Fixed in SDCCast.c's '?' case: added the same scalar-type check
   bug-4083 added for if/while/do/for, reusing the same
   E_NONSCALAR_CONTROLLING_EXPR - it's the identical constraint, just
   on a different operator. Placed before the existing literal-
   condition fast path, so a compile-time-constant condition still
   folds correctly once it's confirmed to actually be scalar.

   The #if 0 block is the trigger, now a compile error - kept disabled
   the same way other compile-fail cases in this suite are. */
#include <testfwk.h>

struct S
{
  int x;
};

#if 0 /* now a compile error - that's the fix under test */
struct S global_s;
int
badTernaryCondition (void)
{
  return global_s ? 1 : 2;
}
#endif

void
testBug (void)
{
  int i = 1;
  int *p = &i;
  int r;

  r = i ? 10 : 20;
  ASSERT (r == 10);

  r = p ? 30 : 40;
  ASSERT (r == 30);

  /* a compile-time-constant scalar condition still folds correctly */
  r = 1 ? 50 : 60;
  ASSERT (r == 50);
  r = 0 ? 50 : 60;
  ASSERT (r == 60);
}
