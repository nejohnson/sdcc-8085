/* bug-3745.c
   A bug in compile-time conversion of large floating-point constants, on host systems with a 32-bit long.

   qual: const, volatile, const volatile,
*/

#include <stdint.h>

#include <testfwk.h>

// floating-point constant converted to unsigned integer.
const volatile uint64_t f=1e18;

// integer constant
const volatile uint64_t i=1000000000000000000;

void
testBug (void)
{
  ASSERT (i * 2 >= f && f >= i / 2);
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
  return "bug-3745_qual_const_volatile";
}
