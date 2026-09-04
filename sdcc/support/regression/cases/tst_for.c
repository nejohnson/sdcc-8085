#include "./../tests/for.c"

void
__runSuite(void)
{
  __prints("Running testFor\n");
  testFor();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "for.c";
}
