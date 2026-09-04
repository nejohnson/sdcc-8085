#include "./../tests/typed-enum.c"

void
__runSuite(void)
{
  __prints("Running testTypedEnum\n");
  testTypedEnum();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "typed-enum.c";
}
