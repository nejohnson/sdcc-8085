/*
   20050929-1.c from the execute part of the gcc torture suite.
 */

#include <testfwk.h>

#ifdef __SDCC
#pragma std_c99
#pragma disable_warning 196 /* the nested compound literals initializing struct C e are placed in read-only storage by this port, so taking their address for e.c/e.d's non-const pointer fields drops const - an implementation detail, not a bug in this upstream torture test */
#endif

/* PR middle-end/24109 */

struct A { int i; int j; };
struct B { struct A *a; struct A *b; };
struct C { struct B *c; struct A *d; };
struct C e = { &(struct B) { &(struct A) { 1, 2 }, &(struct A) { 3, 4 } }, &(struct A) { 5, 6 } };

void
testTortureExecute (void)
{
  if (e.c->a->i != 1 || e.c->a->j != 2)
    ASSERT (0);
  if (e.c->b->i != 3 || e.c->b->j != 4)
    ASSERT (0);
  if (e.d->i != 5 || e.d->j != 6)
    ASSERT (0);
  return;
}
