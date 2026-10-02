/* bug-3971
   A global pointer initializer of the form "string literal" + constant
   (a string literal's address plus a literal offset, same class as
   array_var + constant) made the compiler segfault: constExprValue()
   (SDCCast.c) checked SPEC_SCLS/IS_ARRAY on a node that was a '+'
   operator, not a literal value, then dereferenced its opval as if it
   were a value pointer. The already-correct "(ptr + constant)" fallback
   in initPointer() (SDCCglue.c) never got a chance to run, since
   constExprValue() crashed instead of returning NULL for this case.
 */
#include <testfwk.h>

const char *p = "AAA" + 3;

void
testBug (void)
{
  ASSERT (*p == '\0');
}
