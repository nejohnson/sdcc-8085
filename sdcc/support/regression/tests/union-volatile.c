/* Union membership must not add volatile to the member's C type. */

#include <testfwk.h>

union U
{
  char a[4];
  char *p;
};

void
testUnionVolatile (void)
{
  union U u;
  volatile union U vu;
  union U *p = &u;
  volatile union U *vp = &vu;

  ASSERT (_Generic (p->a,
                    char *: 1,
                    default: 0));

  ASSERT (_Generic (vp->a,
                    volatile char *: 1,
                    default: 0));

  ASSERT (_Generic (p->p,
                    char *: 1,
                    default: 0));
}
