#include "./../tests/cond-omit-2nd.c"

void
__runSuite(void)
{
  __prints("Running testCondOpOmitted2nd\n");
  testCondOpOmitted2nd();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "cond-omit-2nd.c";
}
