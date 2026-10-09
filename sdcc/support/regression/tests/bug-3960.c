/* bug-3960

   "Inconsistent diagnostic messages when constraint on unary &
   operator is violated": &f(0) (address of a function call's
   result) was silently accepted while &(const int)i correctly
   errors with "'lvalue' required for 'address of' operation".
   decorateType's CALL case never set tree->rvalue, so the existing
   lvalue check in the unary '&' case never fired for a call result.

   Fixed by setting TRVAL(tree) = 1 at the end of the CALL case
   (C23 6.5.4.2p1: a function call's result is not an lvalue), which
   makes &f(0) correctly error like any other non-lvalue. That alone
   is not runtime-testable here (it is a compile-time diagnostic, and
   this harness only runs programs that build successfully) - verified
   manually instead: &f(0) now errors, while &function (no call) and
   using a call's result without & still compile clean.

   Making CALL report rvalue=1 is also semantically correct on its own,
   but it has two second-order interactions with existing struct-copy
   machinery that the fix had to account for, both exercised below:

   1. decorateType's '=' case runs a *second* lvalue check after
      rewriteStructAssignment (SDCCast.c) replaces a struct assignment
      `dest = src;` with a comma-expression rooted at a CALL node
      (the memcpy it builds) - that check used to be silently dead
      (CALL never set rvalue, so it never fired), but once CALL sets
      rvalue=1 it fires on every struct assignment. Fixed by capturing
      `isStructAssign` before the rewrite and skipping only that
      now-meaningless post-rewrite recheck for struct assignments.

   2. rewriteStructAssignment itself takes the address of its source
      for the memcpy call it builds (`&src`) - when the source is
      itself a function call returning a struct by value, this wraps
      the same now-rvalue CALL node in '&' again, this time for a
      compiler-internal address-of, not user code. Fixed by marking
      that CALL node (tree->right->implicitStructCopySource = true)
      and exempting marked nodes from the unary '&' lvalue check.
      The marker (not a transient rvalue clear/restore) is required
      because processParms's implicit-cast-insertion logic clones an
      already-decorated argument subtree via copyAst and independently
      re-decorates the clone from scratch - copyAst does not preserve
      rvalue (or decorated) across the clone, so a transient flag on
      the original is invisible to the clone, but a field copyAst
      does preserve (added to its explicit per-node field list) is
      not. */
#include <testfwk.h>

struct Point
{
  int x, y;
};

static struct Point
makePoint (int x, int y)
{
  struct Point p;
  p.x = x;
  p.y = y;
  return p;
}

void
testBug (void)
{
  /* struct assignment through a pointer - broken by the first,
     reverted attempt at this fix (post-rewrite recheck firing on
     tree->left, which after the rewrite is the memcpy call, not the
     user's original left-hand side) */
  struct Point a = { 1, 2 };
  struct Point b;
  struct Point *pb = &b;
  *pb = a;
  ASSERT (pb->x == 1);
  ASSERT (pb->y == 2);

  /* struct assignment whose source is itself a struct-returning
     function call - broken by the second, reverted attempt at this
     fix (rewriteStructAssignment's own internal &src wrapping the
     same now-rvalue CALL node a second time) */
  struct Point c;
  int i;
  for (i = 0; i < 3; i++)
    {
      c = makePoint (i, i + 1);
      ASSERT (c.x == i);
      ASSERT (c.y == i + 1);
    }
}
