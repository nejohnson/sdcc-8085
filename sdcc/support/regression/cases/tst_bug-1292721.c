#include "./../tests/bug-1292721.c"

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
  return "bug-1292721.c";
}
