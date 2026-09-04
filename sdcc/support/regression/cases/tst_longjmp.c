#include "./../tests/longjmp.c"

void
__runSuite(void)
{
  __prints("Running testJmp\n");
  testJmp();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "longjmp.c";
}
