#include "./../tests/kyber-ntt.c"

void
__runSuite(void)
{
  __prints("Running testKyberNTT\n");
  testKyberNTT();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "kyber-ntt.c";
}
