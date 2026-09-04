/* bug 3040
   crash in pdk code generation when both operands of an additive operator are block-scope static const int.
   type: char, signed char, unsigned char, signed int, unsigned int, signed long, unsigned long, signed long long, unsigned long long
 */
#include <testfwk.h>

unsigned long f(void)
{
  static const unsigned long a;
  static const unsigned long b;
  return a + b;
}

unsigned long g(void)
{
  static const unsigned long a;
  static const unsigned long b;
  return a - b;
}

void testBug(void)
{
	ASSERT(!f());
}


void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-3040_type_unsigned_long";
}
