#include "./../tests/regtrack.c"

void
__runSuite(void)
{
  __prints("Running testRegTrack\n");
  testRegTrack();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "regtrack.c";
}
