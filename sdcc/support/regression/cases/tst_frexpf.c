#include "./../tests/frexpf.c"

void
__runSuite(void)
{
  __prints("Running testfrexpf\n");
  testfrexpf();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "frexpf.c";
}
