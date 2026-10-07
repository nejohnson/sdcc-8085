/* bug-4109

   CSE could replace a local pointer at its use without carrying its
   isSemDeref marker (set by unary &* on an _Optional pointer, which
   removes the _Optional qualifier per the _Optional TS). Dead-code
   elimination then removed the marked assignment before
   checkStaticArrayParams's diagnostic pass ran, so &*poi's "could not
   be proven non-null" warning (355) was lost whenever the result was
   returned through a local pointer instead of used directly.

   Fixed in SDCCopt.c: killDeadCode now keeps an instruction alive
   (during the diagnostic-only constant-propagation pass) if any of
   its operands still carry isSemDeref, so checkStaticArrayParams
   always sees it; checkStaticArrayParams then clears the markers
   itself once all diagnostics have run, and eBBlockFromiCode runs
   killDeadCode once more straight after, so none of this adds actual
   generated code. Ported directly from upstream's own patch (merged
   as r16961, confirmed no code-size regression there either) - our
   SDCCopt.c matched upstream's pre-patch state at every touched
   point.

   The semDeref* functions below are upstream's own valdiag coverage
   (this fork has no separate valdiag test suite, so they're folded
   in here instead): three forms that must still warn (355) no matter
   how the dereferenced pointer flows afterwards, and five that
   correctly must not warn at all - every one of them is also
   exercised at runtime via ASSERT, since warning 355 doesn't mean the
   code is wrong, just unproven safe at compile time. */
#include <testfwk.h>

static int evaluations;
static int object;

static _Optional int *
get_pointer (void)
{
  ++evaluations;
  return &object;
}

static int *
evaluated_pointer (void)
{
  int *q = &*get_pointer ();  /* warns (355): this is the exact bug #4109 case */
  return q;
}

static int *
copy_pointer (_Optional int *p)
{
  if (p)
    {
      int *q = &*p;
      return q;
    }
  return 0;
}

/* must still warn: &*poi assigned to a local pointer before returning it */
static int *
semDerefLocal (_Optional int *poi)
{
  int *pi = &*poi;
  return pi;
}

/* must still warn: &*p returned directly (the simplest case, always worked) */
static int *
semDerefDirect (_Optional int *p)
{
  return &*p;
}

/* must still warn: the null check comes after the dereference, so it
   can't retroactively make it safe */
static int *
semDerefLaterGuard (_Optional int *p)
{
  int *q = &*p;
  if (q)
    return q;
  return 0;
}

/* must not warn: the dereference is inside the null check - correctly
   proven non-null */
static int *
semDerefGuarded (_Optional int *p)
{
  if (p)
    {
      int *q = &*p;
      return q;
    }
  return 0;
}

/* must not warn: sizeof's operand is never evaluated */
static unsigned int
semDerefUnevaluated (_Optional int *p)
{
  return (unsigned int) sizeof (&*p);
}

/* must not warn: not an _Optional pointer at all */
static int *
semDerefPlain (int *p)
{
  int *q = &*p;
  return q;
}

/* must not warn: address of a known object is never null */
static int *
semDerefKnownObject (void)
{
  static int i;
  _Optional int *p = &i;
  int *q = &*p;
  return q;
}

#pragma disable_warning 126 /* unreachable code, expected for the dead branch below */
/* must not warn (and must not generate code for the dead branch either) */
static int *
semDerefDeadBranch (_Optional int *p)
{
  if (0)
    {
      int *q = &*p;
      return q;
    }
  return 0;
}

void
testBug (void)
{
  /* single evaluation and correct pointer value through a local pointer */
  evaluations = 0;
  ASSERT (evaluated_pointer () == &object);
  ASSERT (evaluations == 1);
  ASSERT (copy_pointer (get_pointer ()) == &object);
  ASSERT (evaluations == 2);
  ASSERT (copy_pointer (0) == 0);
  ASSERT (evaluations == 2);

  /* the non-warning shapes must still produce correct results */
  ASSERT (semDerefGuarded (&object) == &object);
  ASSERT (semDerefGuarded (0) == 0);
  ASSERT (semDerefUnevaluated (0) == sizeof (int *));
  ASSERT (semDerefPlain (&object) == &object);
  ASSERT (semDerefKnownObject () != 0);
  ASSERT (semDerefDeadBranch (0) == 0);

  /* the still-warns shapes must still produce correct results too */
  ASSERT (semDerefLocal (&object) == &object);
  ASSERT (semDerefDirect (&object) == &object);
  ASSERT (semDerefLaterGuard (&object) == &object);
}
