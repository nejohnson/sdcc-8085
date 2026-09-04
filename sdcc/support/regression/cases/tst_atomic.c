#include "./../tests/atomic.c"

void
__runSuite(void)
{
  __prints("Running testAtomic\n");
  testAtomic();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "atomic.c";
}
