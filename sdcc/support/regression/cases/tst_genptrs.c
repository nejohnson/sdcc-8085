#include "./../tests/genptrs.c"

void
__runSuite(void)
{
  __prints("Running testPtrs\n");
  testPtrs();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "genptrs.c";
}
