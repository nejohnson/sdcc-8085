#include "./../tests/z80n-push-nn.c"

void
__runSuite(void)
{
  __prints("Running testBug3032\n");
  testBug3032();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "z80n-push-nn.c";
}
