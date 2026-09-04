#include "./../tests/bug-1699804.c"

void
__runSuite(void)
{
  __prints("Running testFoo\n");
  testFoo();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-1699804.c";
}
