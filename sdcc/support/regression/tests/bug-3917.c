/* bug-3917 (also covers #3916, the same root cause)

   C23 permits typeof/typeof_unqual to be applied to a function type or
   function pointer type name, e.g. typeof_unqual (int (int)) *pfoo;
   SDCC crashed instead with an internal "validateLink failed" error
   (expected a SPECIFIER, got a DECLARATOR, or a null-link, depending
   on the exact form).

   Root cause was in the grammar (SDCC.y), not the typeof handling
   itself: function_abstract_declarator's alternative for a bare
   function type with no preceding pointer/declarator - '(' parameter_
   type_list ')', exactly the shape of "(int)" in "int (int)" - just
   discarded the parameter list and returned NULL ($$ = NULL), unlike
   its sibling alternatives (which all build a proper FUNCTION
   DECLARATOR link). That NULL propagated up through type_name's type-
   chain-walking code, producing a malformed type that crashed
   whatever touched it next.

   Fixed by having that alternative build the FUNCTION declarator the
   same way the sibling rules do (DCL_TYPE/FUNC_HASVARARGS/FUNC_ARGS). */
#include <testfwk.h>

#ifdef __SDCC
#pragma std_c23
#endif

int
plusOne (int x)
{
  return x + 1;
}

typeof_unqual (int (int)) * pfoo = plusOne;
typeof (int (int)) * pfoo2 = plusOne;

void
testBug (void)
{
  ASSERT (pfoo (41) == 42);
  ASSERT (pfoo2 (99) == 100);
}
