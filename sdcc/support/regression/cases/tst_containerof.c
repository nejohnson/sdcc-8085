#include "./../tests/containerof.c"

void
__runSuite(void)
{
  __prints("Running testContainerOf\n");
  testContainerOf();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "containerof.c";
}
