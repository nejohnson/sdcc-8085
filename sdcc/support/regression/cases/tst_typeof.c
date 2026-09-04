#include "./../tests/typeof.c"

void
__runSuite(void)
{
  __prints("Running testTypeof\n");
  testTypeof();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "typeof.c";
}
