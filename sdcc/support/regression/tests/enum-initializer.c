/* enum-initializer.c
   An enumeration constant in a static initializer is a number.  Its value
   carries the enumerator's symbol, and the initializer output took that
   for a symbol's address: it emitted a reference to an undefined _P
   instead of the value, and the program did not link.
 */
#include <testfwk.h>

enum { P = 5 };
enum E { Q = 6 };
enum { hasTrue = (_Bool)127, hasFalse = (_Bool)0 };

unsigned s = P;
unsigned arr[2] = { P, Q };
unsigned char ac[1] = { P };
struct { int x; enum E e; } st = { P, Q };
_Bool has_Bool[hasTrue] = { hasFalse };
const unsigned long cl = Q;
void *vp = (void *)P;

void
testEnumInitializer (void)
{
  ASSERT (s == 5);
  ASSERT (arr[0] == 5 && arr[1] == 6);
  ASSERT (ac[0] == 5);
  ASSERT (st.x == 5 && st.e == Q);
  ASSERT (!has_Bool[0]);
  ASSERT (cl == 6);
  ASSERT (vp == (void *)5);
}
