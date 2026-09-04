/** Simple test for increment

    type: signed char, int, long
    storage: static, 
    attr: volatile
*/
#include <testfwk.h>

static void
testIncrement(void)
{
    volatile static signed char i;
    i = 0;
    i--;
    ASSERT(i == -1);
}

void
__runSuite(void)
{
  __prints("Running testIncrement\n");
  testIncrement();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "increment_type_signed_char_storage_static_attr_volatile";
}
