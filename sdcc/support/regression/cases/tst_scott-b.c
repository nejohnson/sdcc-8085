#include "./../tests/scott-b.c"

void
__runSuite(void)
{
  __prints("Running testB\n");
  testB();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-b.c";
}
