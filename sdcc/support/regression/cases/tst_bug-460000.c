#include "./../tests/bug-460000.c"

void
__runSuite(void)
{
  __prints("Running testByteShift\n");
  testByteShift();
  __prints("Running testOtherSignedShifts\n");
  testOtherSignedShifts();
  __prints("Running testShiftByParam\n");
  testShiftByParam();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "bug-460000.c";
}
