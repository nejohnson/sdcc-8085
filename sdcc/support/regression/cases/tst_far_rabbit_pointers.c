#include "./../tests/far_rabbit_pointers.c"

void
__runSuite(void)
{
  __prints("Running testPtr\n");
  testPtr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "far_rabbit_pointers.c";
}
