#include "./../tests/bug-524195.c"

void
__runSuite(void)
{
  __prints("Running testMask\n");
  testMask();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-524195.c";
}
