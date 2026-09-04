#include "./../tests/scott-while.c"

void
__runSuite(void)
{
  __prints("Running testWhile\n");
  testWhile();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-while.c";
}
