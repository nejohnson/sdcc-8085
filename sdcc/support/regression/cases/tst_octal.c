#include "./../tests/octal.c"

void
__runSuite(void)
{
  __prints("Running testOctal\n");
  testOctal();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "octal.c";
}
