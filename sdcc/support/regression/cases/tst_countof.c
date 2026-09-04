#include "./../tests/countof.c"

void
__runSuite(void)
{
  __prints("Running testCountof\n");
  testCountof();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "countof.c";
}
