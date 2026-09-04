#include "./../tests/malloc.c"

void
__runSuite(void)
{
  __prints("Running testMalloc\n");
  testMalloc();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "malloc.c";
}
