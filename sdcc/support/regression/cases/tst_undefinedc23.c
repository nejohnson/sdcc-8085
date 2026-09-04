#include "./../tests/undefinedc23.c"

void
__runSuite(void)
{
  __prints("Running testPtrIntCast\n");
  testPtrIntCast();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "undefinedc23.c";
}
