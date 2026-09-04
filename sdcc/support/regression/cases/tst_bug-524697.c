#include "./../tests/bug-524697.c"

void
__runSuite(void)
{
  __prints("Running testOffset\n");
  testOffset();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-524697.c";
}
