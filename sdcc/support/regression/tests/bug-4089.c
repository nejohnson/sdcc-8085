/* bug-4089

   Casting an object of struct (or union) type to any scalar type is a
   constraint violation (C17/C23 6.5.4p2 - the cast operand and the
   target type must each be void, scalar, or (for the operand) a
   compatible struct/union type) - SDCC silently accepted it, with no
   diagnostic at all.

   Fixed in SDCCast.c's CAST case: added an IS_AGGREGATE(RTYPE(tree))
   check next to the existing "cannot cast TO struct/union" one, this
   time checking the source side, reusing the same E_CAST_ILLEGAL
   error. Casting a struct/union to void - e.g. "(void)some_struct;" to
   discard an unused value - is explicitly excluded and remains valid.

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
badStructToInt (void)
{
  return (int) global_s;
}
#endif

void
testBug (void)
{
  struct S s = { 42 };

  /* casting a struct to void (to discard it) must still work */
  (void) s;

  ASSERT (s.x == 42);
}
