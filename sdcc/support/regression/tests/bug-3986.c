/* bug-3986 (also covers #2733 and #3094, the same root cause)

   SDCC keeps small all-literal arithmetic at char width for smaller
   runtime code (valPlus/valMinus/valShift in SDCCval.c), picking the
   folded result's C type from the OPERANDS' types rather than the
   actual computed value. For '+'/'-'/shifts that can come back typed
   signed char even when the value just computed (e.g. 30*8-1 == 239,
   or 1<<7 == 128) doesn't fit one - the bit pattern is exactly the
   intended unsigned value, but it gets read back later via a
   (signed char) cast and silently becomes negative. Assigning that to
   an unsigned target then wrongly triggered "overflow in implicit
   constant conversion" (warning 158), even though the assignment is
   perfectly fine.

   Fixed by fixupCharLiteralSign() in SDCCval.c: once the literal
   arithmetic result is computed, if it's char-typed, signed, and the
   value doesn't fit signed char but does fit unsigned char (128-255),
   just pick the sign that can hold it - the same convention
   cheapestVal() already uses for int-to-char reduction.

   Note: #2877 (192 + 41) reproduces the same symptom via a different
   mechanism - a result-type-driven pre-truncation of the operands
   before the addition runs - and is not fixed by this change; it's
   tracked separately in sdcc-upstream-bugs-triage.md.

   This is a warning-only bug (W_LIT_OVERFLOW is pedantic-level, not an
   error) - the generated code was always correct, so there's nothing
   to assert about program behavior beyond "doesn't warn and runs
   correctly" - -Werror would have made it a build failure, which is
   the whole complaint in the original reports. */
#include <testfwk.h>

unsigned char FooOk = 30 * 8;
unsigned char Foo = 30 * 8 - 1;
unsigned char Shifted = 1 << 7;

void
testBug (void)
{
  ASSERT (FooOk == 240);
  ASSERT (Foo == 239);
  ASSERT (Shifted == 128);
}
