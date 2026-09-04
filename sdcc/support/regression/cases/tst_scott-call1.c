#include "./../tests/scott-call1.c"

void
__runSuite(void)
{
  __prints("Running testCall1\n");
  testCall1();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-call1.c";
}
