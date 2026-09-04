/** user-implemented saturating counters using unsigned integer wraparound

    type: unsigned char, unsigned int, unsigned long
*/

#include <testfwk.h>

unsigned long cnt;

void satinc(void)
{
  cnt++;
  if (!cnt)
    cnt--;
}

void satdec(void)
{
  cnt--;
  if (cnt == (unsigned long)-1)
    cnt++;
}

void testSat(void)
{
  cnt = 0;
  satinc ();
  ASSERT (cnt == 1);
  satdec ();
  satdec ();
  ASSERT (cnt == 0);

  cnt = -2;
  satinc ();
  ASSERT (cnt == (unsigned long)-1);
  satinc ();
  ASSERT (cnt == (unsigned long)-1);
}


void
__runSuite(void)
{
  __prints("Running testSat\n");
  testSat();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "satcounteroverflow_type_unsigned_long";
}
