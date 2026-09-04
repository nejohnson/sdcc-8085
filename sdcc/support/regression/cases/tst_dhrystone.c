#include "./../tests/dhrystone.c"

void
__runSuite(void)
{
  __prints("Running testDhrystone\n");
  testDhrystone();
  __prints("Running testDhrystone\n");
  testDhrystone();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "dhrystone.c";
}
