#include "./../tests/p99-conformance.c"

void
__runSuite(void)
{
  __prints("Running testP99\n");
  testP99();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "p99-conformance.c";
}
