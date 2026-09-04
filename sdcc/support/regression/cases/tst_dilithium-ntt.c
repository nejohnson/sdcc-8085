#include "./../tests/dilithium-ntt.c"

void
__runSuite(void)
{
  __prints("Running testDilithiumNTT\n");
  testDilithiumNTT();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "dilithium-ntt.c";
}
