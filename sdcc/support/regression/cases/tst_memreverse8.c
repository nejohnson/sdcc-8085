#include "./../tests/memreverse8.c"

void
__runSuite(void)
{
  __prints("Running testMemreverse8\n");
  testMemreverse8();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "memreverse8.c";
}
