/* bug-4086

   The [] operator requires a pointer to a complete object type or an
   array operand (N3886 6.5.3.2p2) - SDCC silently accepted indexing
   through a pointer to an incomplete struct, with no diagnostic at
   all.

   Fixed in SDCCast.c's '[' case: added a getSize()==0 incomplete-type
   check on the pointee type, alongside the pre-existing "need array
   or pointer" check, raising a new E_SUBSCRIPT_INCOMPLETE_TYPE.
   void* is deliberately left alone (matches this fork's existing
   permissive void* handling elsewhere, e.g. sizeof(void)) - that's a
   separate, pre-existing gap, not introduced or widened by this fix,
   and out of scope for this ticket either way.

   The #if 0 block is the trigger, now a compile error - kept disabled
   the same way other compile-fail cases in this suite are. */
#include <testfwk.h>

struct incomplete;

#if 0 /* now a compile error - that's the fix under test */
struct incomplete *bad_pointer;
void
badSubscript (void)
{
  bad_pointer[0];
}
#endif

struct complete
{
  int x;
};

void
testBug (void)
{
  int arr[3] = { 1, 2, 3 };
  int *p = arr;
  struct complete sarr[2] = { { 10 }, { 20 } };

  ASSERT (arr[1] == 2);
  ASSERT (p[2] == 3);
  ASSERT (sarr[1].x == 20);
}
