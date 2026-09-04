/* bug-3456.c
   Broken implicit casts from pointers to bool (and a wrong warning for other integer types).

   type: bool, intptr_t, uintptr_t
 */

#include <testfwk.h>

#include <stdbool.h>
#include <stdint.h>

#ifdef __SDCC // Allowing implicit casts from pointers to integers is an SDCC extension
#pragma disable_warning 155 // But we still emit a warning
uintptr_t f(const void *p)
{
	return p;
}

uintptr_t g(const void *p)
{
	uintptr_t t = p;
	return t;
}
#endif

void testBug(void)
{
#ifdef __SDCC
	char c;
	ASSERT (f(&c));
	ASSERT (g(&c));
#endif
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
  return "bug-3460_type_uintptr_t";
}
