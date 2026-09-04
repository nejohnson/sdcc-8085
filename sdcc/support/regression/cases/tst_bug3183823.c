#include "./../tests/bug3183823.c"

void
__runSuite(void)
{
  __prints("Running testNeg\n");
  testNeg();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug3183823.c";
}
