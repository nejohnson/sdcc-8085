#include "./../tests/bugs-1596270-1736867.c"

void
__runSuite(void)
{
  __prints("Running testBug156270\n");
  testBug156270();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bugs-1596270-1736867.c";
}
