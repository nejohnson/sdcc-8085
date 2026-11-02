/* noproto-call.c
   Calls with arguments to a function that has no prototype in scope:
   declared with empty parentheses, declared implicitly, defined in K&R
   style, or called through a pointer of such a type.  The arguments get
   the default argument promotions and are passed as a call through a
   prototype with the promoted types would pass them.
 */
#include <testfwk.h>

#pragma disable_warning 112 /* implicit declaration */
#pragma disable_warning 283 /* function declarator with no prototype */

int add3 ();
long mix ();
float half ();
unsigned char second ();
long long llsum ();
long psum ();
void bump ();

struct P { int a; long b; };
struct H { int (*f) (); };

static int bumped;

int kr (a, b)
  int a;
  long b;
{
  return a - (int)b;
}

int x = 7;

static int
call_implicit (void)
{
  return implicit_fn (40, 2);
}

void
testNoProto (void)
{
  int (*fp) () = add3;
  struct H h = { add3 };
  struct P p = { 3, 70000L };
  char c = 5;

  ASSERT (add3 (1, 2, 3) == 6);
  ASSERT (mix (c, 100000L, &x) == 100012L);
  ASSERT (half (3.0f) == 1.5f);
  ASSERT (second ((char)1, (char)2, (char)3) == 2);
  ASSERT (kr (10, 3L) == 7);
  ASSERT (fp (4, 5, 6) == 15);
  ASSERT ((*fp) (7, 8, 9) == 24);
  ASSERT (h.f (1, 1, 1) == 3);
  ASSERT (llsum (0x100000000LL, 5) == 0x100000005LL);
  ASSERT (psum (p) == 70003L);
  bump (3);
  ASSERT (bumped == 3);
  ASSERT (call_implicit () == 42);
}

int
add3 (int a, int b, int c)
{
  return a + b + c;
}

long
mix (int c, long l, int *p)
{
  return c + l + *p;
}

float
half (float f)
{
  return f / 2;
}

unsigned char
second (int a, int b, int c)
{
  return b + (a - 1) * c;
}

long long
llsum (long long a, int b)
{
  return a + b;
}

long
psum (struct P p)
{
  return p.a + p.b;
}

void
bump (int n)
{
  bumped += n;
}

int
implicit_fn (int a, int b)
{
  return a + b;
}
