#include "./../tests/optional-static.c"

void
__runSuite(void)
{
  __prints("Running testOptionalStatic\n");
  testOptionalStatic();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "optional-static.c";
}
