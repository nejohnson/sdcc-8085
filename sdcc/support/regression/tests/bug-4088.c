/* bug-4088

   A pointer shall not be converted to a floating type, and a
   floating type shall not be converted to a pointer type (C17/C23
   6.5.4p4) - both directions are constraint violations. SDCC didn't
   just fail to diagnose this one (unlike most of this cluster) - it
   crashed with an internal "validateLink failed" error from
   SDCCopt.c, since downstream code tried to treat the pointer's
   declarator as if it were a numeric specifier.

   Fixed in SDCCast.c's CAST case: added an explicit check (alongside
   the existing "cannot cast to struct/union" one) for IS_PTR on one
   side and IS_FLOAT on the other, in either direction, raising a new,
   accurately-worded error E_CAST_PTR_FLOAT - the existing
   E_CAST_ILLEGAL message ("cast cannot be aggregate") would have been
   factually wrong here, so this needed its own message rather than
   reusing that one.

   This is a crash-to-diagnostic fix, so the real verification is that
   it compiles to an error instead of crashing - checked directly
   (see the fix's commit message), not re-asserted here since this
   harness tests runtime behavior, not diagnostics. The #if 0 block
   below is the trigger, kept disabled the same way other compile-fail
   cases in this suite are. */
#include <testfwk.h>

#if 0 /* each of these is now a compile error instead of crashing - that's the fix under test */
int *global_pointer;
float
badPtrToFloat (void)
{
  return (float) global_pointer;
}

float global_float;
int *
badFloatToPtr (void)
{
  return (int *) global_float;
}
#endif

void
testBug (void)
{
  /* valid casts in the same family must still work: float<->other
     arithmetic types, and pointer<->pointer */
  int i = 5;
  float f = (float) i;
  int *ip;
  float *fp = 0;
  ip = (int *) fp;

  ASSERT (f == 5.0f);
  ASSERT (ip == 0);
}
