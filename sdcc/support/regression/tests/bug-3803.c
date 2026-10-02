/* bug-3803
   "return *p;" where p points to a struct corrupted the operand's type
   in an earlier optimizer pass (upstream bug #3803, not fixed upstream -
   maintainers are still debating the real fix), making this port's
   genRet() take the wrong return-value path and segfault dereferencing
   a NULL asmop.  Fixed in this fork only, by trusting currFunc's own
   declared return type instead of the (potentially corrupted) operand
   type/size for the struct-vs-scalar dispatch and the copy size.

   Fixing the dispatch exposed a second, previously-dormant bug: a
   register-resident return value (genuinely reachable here for the
   first time, since the corrupted type used to always misroute it to
   the crashing path instead) could be clobbered by genRet's own BC
   setup for the hidden return-value pointer, if the value happened to
   already be sitting in BC. Covers both the 1-byte case (fits in a
   single register) and the 2-byte case (fills the whole BC pair).
 */
#include <testfwk.h>

struct S1
{
  unsigned char c;
};

struct S2
{
  unsigned char a, b;
};

struct S1 g1 = { 0x42 };
struct S2 g2 = { 0x12, 0x34 };

struct S1
f1 (struct S1 *p)
{
  return *p;
}

struct S2
f2 (struct S2 *p)
{
  return *p;
}

void
testBug (void)
{
  struct S1 r1 = f1 (&g1);
  ASSERT (r1.c == 0x42);

  struct S2 r2 = f2 (&g2);
  ASSERT (r2.a == 0x12);
  ASSERT (r2.b == 0x34);
}
