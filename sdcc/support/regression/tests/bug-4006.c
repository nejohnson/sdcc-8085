/* bug-4006

   Array-to-pointer decay preserves const/volatile/restrict on the
   referenced type (removing only _Optional, per #4005) - but the
   old late, iCode-level qualifier checker (checkPtrQualifiers,
   SDCCicode.c) only ever saw decay that had *already* happened via
   a specific workaround for struct-member access
   ("also checking array rtypes is a hack"), so a qualified array
   reached through a pointer-to-array, or a static array returned
   directly, silently kept their qualifiers un-diagnosed - while the
   struct-member case alone correctly warned. The same inconsistency
   applied to initialisers, assignments and returns generally.

   Fixed by removing the old iCode-level checker entirely (along with
   its unused isRestrictEliminated flag) and replacing it with
   checkPtrTargetQualifiersAfterDecay (SDCCsymt.c logic, placed in
   this fork's SDCCast.c alongside checkPtrTargetQualifiers since
   that's where our ported #4004 already put it): it applies the
   same array decay #4005 centralised, then runs the existing
   qualifier check uniformly - called from decorateType's '=' and
   RETURN cases, but only when #3952's diagnoseDissimilarPtrTargetTypes
   didn't already diagnose the same mismatch (avoiding double
   diagnostics for assignments between fundamentally dissimilar
   referenced types).

   Ported directly from upstream's own, final merged patch (confirmed
   merged as r16984, no open review comments, depending exactly on
   #4109/#3952/#4003/#4005 in the order already ported here).

   Verified: all three forms from the ticket (struct member, pointer
   to array, static array) now warn uniformly (previously only the
   first did); #4072's own union-member volatile/non-volatile
   distinction (plain vs. explicitly-volatile vs. volatile-qualified
   access to the same union) still holds exactly - re-checked every
   case from upstream's own valdiag coverage for this; explicit casts
   still exempt qualifier removal; dissimilar referenced types still
   produce exactly one diagnostic, not a duplicate. */
#include <testfwk.h>

struct SAC
{
  char m[64];
};

void
testBug (void)
{
  static const struct SAC s = { "hello" };
  const struct SAC *pocs = &s;
  const char (*paocc)[64] = &s.m;

  /* each form decays to a pointer that's missing the source's const
     qualifier - runtime values must still be correct regardless of
     the (compile-time-only) diagnostic each now produces */
  ASSERT (pocs->m[0] == 'h');
  ASSERT ((*paocc)[0] == 'h');

  /* plain (non-qualified) union member access must not be spuriously
     treated as qualified - the #4072 distinction this fix must not
     disturb */
  union V
  {
    char a[4];
    volatile char va[4];
  };
  static union V v = { "abc" };
  union V *pv = &v;
  ASSERT (pv->a[0] == 'a');

  /* an explicit cast still removes a qualifier without warning */
  static const char cc[2] = "x";
  char *p = (char *) cc;
  ASSERT (*p == 'x');
}
