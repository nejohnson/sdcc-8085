/* bug-4087

   _Alignof shall not be applied to a function type or an incomplete
   type (C17/C23 6.5.3.4p1, same constraint sizeof is already checked
   against) - SDCC silently accepted an incomplete struct, with no
   diagnostic at all.

   Fixed in alignofOp() (SDCCast.c): added the same getSize()==0
   incomplete-type check SIZEOF already had, raising a new, dedicated
   E_ALIGNOF_INCOMPLETE_TYPE rather than reusing E_SIZEOF_INCOMPLETE_
   TYPE, whose message names the wrong operator.

   _Alignof(void) is deliberately left alone, same as sizeof(void) -
   SDCC already permits that one (with just a warning, W_SIZEOF_VOID)
   as a GNU-style extension rather than enforcing the strict standard
   reading that void is itself incomplete; this fix follows that same,
   already-established convention rather than being stricter than
   sizeof for no reason.

   The #if 0 block is the trigger, now a compile error - kept disabled
   the same way other compile-fail cases in this suite are. */
#include <testfwk.h>

#if 0 /* now a compile error - that's the fix under test */
struct incomplete;
enum
{
  bad_alignment = _Alignof (struct incomplete)
};
#endif

struct complete
{
  int x;
};

void
testBug (void)
{
  ASSERT (_Alignof (int) >= 1);
  ASSERT (_Alignof (struct complete) >= 1);
  ASSERT (_Alignof (void *) >= 1);
}
