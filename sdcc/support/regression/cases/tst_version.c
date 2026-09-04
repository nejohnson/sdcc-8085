#include "./../tests/version.c"

void
__runSuite(void)
{
  __prints("Running testVersion\n");
  testVersion();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "version.c";
}
