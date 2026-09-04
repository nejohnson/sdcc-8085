#include "./../tests/qualifier-preserving.c"

void
__runSuite(void)
{
  __prints("Running testQualifierPreserving\n");
  testQualifierPreserving();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "qualifier-preserving.c";
}
