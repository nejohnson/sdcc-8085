#include "./../tests/falcon-ntt.c"

void
__runSuite(void)
{
  __prints("Running testFalconNTT\n");
  testFalconNTT();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "falcon-ntt.c";
}
