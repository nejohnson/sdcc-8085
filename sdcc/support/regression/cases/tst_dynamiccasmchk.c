#include "./../tests/dynamiccasmchk.c"

void
__runSuite(void)
{
  __prints("Running testDynamicC\n");
  testDynamicC();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "dynamiccasmchk.c";
}
