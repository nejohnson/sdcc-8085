/* bug-4083

   The controlling expression of if/while/do-while/for must have
   scalar type (C17/C23 6.8.4.1p2, 6.8.5p2): SDCC silently accepted a
   struct there, with no diagnostic at all.

   Fixed in SDCCast.c: added a scalar-type check (arithmetic, pointer,
   or nullptr_t) in decorateType's IFX case (covers 'if') and in its
   FOR case (covers 'while'/'do'/'for' too - all three are desugared
   to FOR by the parser, so one check covers all of them). A missing
   condExpr ("for (;;)") is the valid infinite-loop case and is left
   alone.

   Gotcha found while fixing this: createIf() silently drops an
   if-statement with an empty, side-effect-free body before it's even
   turned into an IFX node at all ("if (s) {}" with nothing inside),
   so a test case needs a body that actually does something to
   exercise the new check - this file's #if 0 block below is the
   trigger for the bug (now a compile error), kept disabled the same
   way other compile-fail cases in this suite are, since this harness
   asserts runtime behavior, not diagnostics. */
#include <testfwk.h>

struct S
{
  int x;
};

#if 0 /* each of these is now a compile error - that's the fix under test */
void
badIf (struct S s)
{
  if (s)
    s.x = 1;
}

void
badWhile (struct S s)
{
  while (s)
    s.x = 1;
}

void
badFor (struct S s)
{
  for (; s;)
    s.x = 1;
}
#endif

void
testBug (void)
{
  int i = 1;
  struct S s = { 1 };

  if (i)
    i = 2;
  ASSERT (i == 2);

  while (i < 5)
    i++;
  ASSERT (i == 5);

  for (; i < 8;)
    i++;
  ASSERT (i == 8);

  /* a struct itself still can't be a condition, but using one of its
     scalar members can - confirms the check is on the controlling
     expression's own type, not a blanket rejection of anything struct-
     related in the statement */
  if (s.x)
    i = 9;
  ASSERT (i == 9);
}
