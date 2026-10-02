/* bug-2639
   resolveSymbols() synthesizes a function type for a call to an
   undeclared ("implicit declaration") function, but never marked it
   FUNC_NOPROTOTYPE - so it was indistinguishable from an explicit,
   strict zero-parameter prototype. Calling such a function with more
   arguments than SDCC had made up (i.e. any arguments at all) made
   processParms() report a real "too many parameters" error and then,
   instead of stopping there, go on to crash hitting a leftover,
   never-consumed PARAM node later (upstream bug #2639).

   Fixed by marking the synthesized type FUNC_NOPROTOTYPE, matching how
   an explicit empty-parens declarator is already treated pre-C23
   (SDCC.y's function_declarator rule) - correctly means "unspecified
   parameters", not "takes none". This is the common, still fully-
   working case: an implicitly-declared, no-argument function, called
   before its own definition supplies the real prototype. (Calling an
   implicitly-declared function WITH arguments now correctly falls into
   the pre-existing, deliberately-unimplemented "register parameter
   vs. other parameter... for functions without prototype" limitation -
   upstream bugs #3021/#3481 - rather than silently doing something
   unverified; that's not something a passing runtime test can cover,
   since it's supposed to not compile.)
 */
#include <testfwk.h>

/* No prior declaration - implicit_noargs() below must trigger a real
   "implicit declaration" and go through resolveSymbols()'s synthesized-
   type path, not a normal, already-prototyped call. */

void
testBug (void)
{
  ASSERT (implicit_noargs () == 42);
}

int
implicit_noargs (void)
{
  return 42;
}
