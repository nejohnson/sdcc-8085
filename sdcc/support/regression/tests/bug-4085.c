/* bug-4085

   Three related constraint violations on pointer arithmetic that SDCC
   silently accepted, with no diagnostic at all (N3886 6.5.7):

   - p2: the non-pointer operand of pointer addition must be integer,
     not just arithmetic - a float doesn't count.
   - p3: pointer subtraction requires the two pointers' pointed-to
     types to be compatible.
   - p3 (continued): those pointed-to types must also be complete.

   Fixed in SDCCast.c: the '+' case gained a check that rejects a
   non-integral-but-arithmetic (i.e. floating/fixed) operand on the
   other side of pointer/array addition. The '-' case gained a check
   that, when both operands are pointers/arrays, compares the
   pointed-to types for compatibility (compareType) and completeness
   (getSize), erroring on either failure. void* is deliberately
   excluded from both of the new '-' checks, matching this fork's
   existing permissive void* handling elsewhere (e.g. sizeof(void)).

   The #if 0 block is the trigger for all three, now compile errors -
   kept disabled the same way other compile-fail cases in this suite
   are. */
#include <testfwk.h>

struct incomplete;

#if 0 /* each of these is now a compile error - that's the fix under test */
int *badPtr;
float badFloat;
int *
badPointerPlusFloat (void)
{
  return badPtr + badFloat;
}

char *badOther;
long
badIncompatiblePointerMinus (void)
{
  return badPtr - badOther;
}

struct incomplete *badLeft, *badRight;
long
badIncompletePointerMinus (void)
{
  return badLeft - badRight;
}
#endif

void
testBug (void)
{
  int arr[5] = { 10, 20, 30, 40, 50 };
  int *p1 = arr;
  int *p2 = arr + 3;
  const int *cip = arr;
  long d;

  /* ordinary pointer + integer, both orders, still work */
  ASSERT (*(p1 + 2) == 30);
  ASSERT (*(2 + p1) == 30);

  /* subtracting two compatible pointers still works */
  d = p2 - p1;
  ASSERT (d == 3);

  /* a qualifier-only difference (const int* vs int*) is still
     compatible, not newly rejected */
  d = cip - arr;
  ASSERT (d == 0);
}
