/* bug-4005

   The _Optional TS's array-to-pointer conversion rule says: "If an
   expression that has type `array of type' is implicitly converted
   to an expression with type `pointer to type' ... any _Optional
   qualifier that would otherwise have applied to the referenced type
   of the resultant pointer type is removed" - but every other
   qualifier (const/volatile/restrict) must be preserved.

   SDCC's array-to-pointer decay logic was scattered across several
   call sites (checkPtrCast, _Generic's controlling-expression
   handling, and argumentTypeAfterDecay for argument/assignment
   checking), each calling aggregateToPointer directly, which strips
   NO qualifiers at all - so decaying an _Optional-qualified array
   member (e.g. `pocs->m` where `pocs` is `_Optional const struct SAC
   *`) kept the _Optional qualifier on the result, and _Generic
   dispatched to the wrong association.

   Fixed by centralising expression array decay in a new
   convertArrayToPointerType (SDCCsymt.c, sharing its pointer-kind
   logic with aggregateToPointer via an extracted
   adjustArrayTypeToPointer helper - which also carries forward this
   fork's own #4072 volatile-access preservation, so that fix's
   protection applies uniformly to every decay site, not just the
   original one). It's now used by checkPtrCast, the _Generic
   controlling-expression check, and argumentTypeAfterDecay (shared
   with #4004/#3952); geniCodeArray2Ptr (SDCCicode.c) got the
   equivalent removal for the iCode-level conversion.

   Ported directly from upstream's own, final merged patch for this
   ticket (confirmed merged as r16983, no open review comments); our
   SDCCast.c/SDCCicode.c/SDCCsymt.c/.h matched upstream's pre-patch
   state at every touched point except aggregateToPointer itself,
   which already carried this fork's own #4072 addition - adapted by
   moving that addition into the shared adjustArrayTypeToPointer
   helper instead of duplicating it. */
#include <testfwk.h>

struct SAC
{
  char m[64];
};

struct SAP
{
  char *restrict m[64];
};

void
testBug (void)
{
  _Optional const struct SAC *pocs = 0;
  _Optional const volatile struct SAC *pocvs = 0;
  _Optional struct SAP *pos = 0;

  ASSERT (_Generic (pocs->m, const char *: 1, default: 0));
  ASSERT (_Generic (pocvs->m, const volatile char *: 1, default: 0));
  ASSERT (_Generic (pos->m, char *restrict *: 1, default: 0));
}
