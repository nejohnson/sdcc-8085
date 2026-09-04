#include "./../tests/while.c"

void
__runSuite(void)
{
  __prints("Running testEmptyWhile\n");
  testEmptyWhile();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "while.c";
}
