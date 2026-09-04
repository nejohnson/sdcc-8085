#include "./../tests/bug-227710.c"

void
__runSuite(void)
{
  __prints("Running testPostIncrement\n");
  testPostIncrement();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-227710.c";
}
