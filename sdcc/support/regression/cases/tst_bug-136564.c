#include "./../tests/bug-136564.c"

void
__runSuite(void)
{
  __prints("Running testInducion\n");
  testInducion();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-136564.c";
}
