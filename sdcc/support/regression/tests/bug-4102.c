/* bug-4102

   Folding a constant "unsigned int * unsigned int" multiplication
   (valMult, SDCCval.c) cast each operand down to TYPE_TARGET_UINT
   (uint16_t) before multiplying. uint16_t operands promote to the
   HOST's native 'int' (32-bit signed) under the host compiler's own
   usual arithmetic conversions, so the actual multiply happened in
   32-bit signed arithmetic on the host - 65535 * 65535 = 4294836225,
   which overflows a 32-bit signed int, triggering undefined
   behaviour in the compiler itself (not the target program).

   Fixed by widening each operand to TYPE_TARGET_ULONG (uint32_t)
   before multiplying, so the host multiply happens in unsigned
   32-bit arithmetic - well-defined and wide enough for any product
   of two 16-bit operands - before truncating back down to
   TYPE_TARGET_UINT for the actual (target-width) result.

   Ported directly from upstream (one of several cs99cjb patches
   split out as a precondition for the broader #4093
   integer-constant-overflow ticket); our valMult matched upstream's
   at this point. */
#include <testfwk.h>

void
testBug (void)
{
  ASSERT ((unsigned int) 65535 * (unsigned int) 65535 == (unsigned int) 4294836225UL);
  /* ordinary, non-overflowing multiplication must stay unaffected */
  ASSERT ((unsigned int) 100 * (unsigned int) 200 == 20000U);
}
