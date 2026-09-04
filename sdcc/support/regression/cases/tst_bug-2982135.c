#include "./../tests/bug-2982135.c"

void
__runSuite(void)
{
  __prints("Running test2982135\n");
  test2982135();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2982135.c";
}
