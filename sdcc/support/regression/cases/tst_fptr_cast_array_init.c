#include "./../tests/fptr_cast_array_init.c"

void
__runSuite(void)
{
  __prints("Running testFptrCastOld\n");
  testFptrCastOld();
  __prints("Running testFptrCastNew\n");
  testFptrCastNew();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "fptr_cast_array_init.c";
}
