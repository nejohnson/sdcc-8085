#include "./../tests/bug-2133.c"

void
__runSuite(void)
{
  __prints("Running testBug2133\n");
  testBug2133();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2133.c";
}
