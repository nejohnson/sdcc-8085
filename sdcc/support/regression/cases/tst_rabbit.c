#include "./../tests/rabbit.c"

void
__runSuite(void)
{
  __prints("Running testRabbit\n");
  testRabbit();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "rabbit.c";
}
