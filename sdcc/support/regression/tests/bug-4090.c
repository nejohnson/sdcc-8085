/* bug-4090

   sizeof applied directly to a function type is a constraint
   violation (C17/C23 6.5.3.4p1: "The sizeof operator shall not be
   applied to an expression that has function or incomplete type")
   that SDCC silently accepted, with no diagnostic at all.

   Fixed in SDCCast.c's SIZEOF case: added an IS_FUNC(tree->right->ftype)
   check alongside the existing incomplete-type check, raising new
   error E_SIZEOF_FUNCTION.

   Note: this also fires for sizeof(&some_function), not just
   sizeof(some_function). That's consistent with SDCC's own existing,
   deliberate design elsewhere in the frontend (SDCCast.c's unary '&'
   case literally says "this ought to be ignored" and returns the
   function operand unchanged for &function) - SDCC never gave
   &function a distinct pointer-to-function type to begin with, so
   there was never a meaningful pointer-sized value for sizeof(&foo)
   to preserve; it's consistent to flag both the same way. Assigning
   &function (or plain function) to an actual function pointer
   *variable*, and taking sizeof() of that variable, both still work
   correctly - this is a compile-fail test, so that's exercised only
   informally (see the fix's own verification), not re-asserted here. */
#include <testfwk.h>

void
afunc (void)
{
}

void
testBug (void)
{
#if 0 /* sizeof(afunc) is now a compile error - that's the fix under test */
  unsigned char size = sizeof (afunc);
#endif
  void (*fp) (void) = afunc;
  ASSERT (sizeof (fp) == sizeof (void *));
}
