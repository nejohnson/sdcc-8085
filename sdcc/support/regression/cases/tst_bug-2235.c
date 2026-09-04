#include "./../tests/bug-2235.c"

void
__runSuite(void)
{
  __prints("Running testBug2235\n");
  testBug2235();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2235.c";
}
