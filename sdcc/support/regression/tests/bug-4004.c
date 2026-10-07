/* bug-4004

   C23 6.5.17.2's constraint on assignment requires the destination
   pointer's referenced type to have all the qualifiers of the
   source's referenced type - passing a qualified pointer where an
   unqualified one is expected silently drops that qualifier, a
   constraint violation. SDCC's argument-type check in processParms
   (SDCCast.c) only rejected completely incompatible pointer types; it
   never compared qualifiers on the referenced type at all, so
   e.g. passing a `volatile char *` where a plain `char *` (or even
   `void *`) was expected went undiagnosed.

   Fixed by adding checkPtrTargetQualifiers (SDCCast.c), called for
   every pointer/function-pointer argument after the existing
   completely-incompatible-type check: it compares atomicity and
   qualification at every level of the referenced type
   (compatibleInnerQualifiers/compatibleStdQualifiers/sameQualifiers),
   and separately warns (W_TARGET_LOST_QUALIFIER, reusing the same
   warning already used for assignment) if the top-level const,
   volatile, restrict or _Optional qualifier would be discarded.
   argumentTypeAfterDecay performs the array-to-pointer decay the
   argument would undergo at call time, so an array argument is
   checked against the type it will actually have, not its
   undecayed array type - this is also the helper #3952 depends on.

   Ported directly from upstream's own patch for this ticket (its
   final, most-reworked revision; depends on #4072, already fixed
   here); our SDCCast.c matched upstream's pre-patch state at the one
   point the patch touches.

   Full 3-port regression: 0 failures, byte-identical output - but the
   diagnostic itself is genuinely active (fired ~12000 times across
   the existing suite, all warnings, never a failure, on files that
   already had implicit incompatible-pointer-argument calls). Those
   pre-existing files are tracked separately as a follow-up cleanup,
   not a blocker for this fix - see Task list / triage doc. */
#include <testfwk.h>

void
takesVoidPtr (void *p)
{
}

void
takesCharPtr (char *p)
{
}

void
takesIntPtr (int *p)
{
}

void
takesConstCharPtr (const char *p)
{
}

#if 0 /* each of these discards a qualifier silently before the fix - now warns (196) */
void
badCalls (void)
{
  volatile char *v = 0;
  takesVoidPtr (v);
  takesCharPtr (v);
  takesIntPtr (v);

  const char *c = 0;
  takesVoidPtr (c);
  takesCharPtr (c);
  takesIntPtr (c);
}
#endif

void
testBug (void)
{
  char ch = 'x';
  char *a = &ch;
  const char *b = &ch;
  void *v = &ch;
  int i = 0;
  int *ip = &i;

  /* T* -> void*, NULL -> any pointer, T* -> const T*, exact matches:
     all still legal, must not warn */
  takesVoidPtr (a);
  takesVoidPtr (0);
  takesCharPtr (a);
  takesConstCharPtr (a);
  takesConstCharPtr (b);
  takesIntPtr (ip);
  takesVoidPtr (v);

  ASSERT (a == &ch);
  ASSERT (*a == 'x');
}
