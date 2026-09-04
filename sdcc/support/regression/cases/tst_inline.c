#include "./../tests/inline.c"

void
__runSuite(void)
{
  __prints("Running testInline\n");
  testInline();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "inline.c";
}
