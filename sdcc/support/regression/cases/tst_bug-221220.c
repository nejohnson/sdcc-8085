#include "./../tests/bug-221220.c"

void
__runSuite(void)
{
  __prints("Running testStructVolatile\n");
  testStructVolatile();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-221220.c";
}
