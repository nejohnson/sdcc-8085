#include "./../tests/bug-441448.c"

void
__runSuite(void)
{
  __prints("Running testPrePostIncrement\n");
  testPrePostIncrement();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-441448.c";
}
