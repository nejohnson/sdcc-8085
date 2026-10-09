/* Regression tests for bug #3957: an indirect assignment of a value
   known to be non-null must retain non-null inference for aliases. */

#ifdef TEST1
void inferred_value(_Optional int **pp1, _Optional int **pp2,
                    _Optional int *p)
{
  if (!*pp1 || !p)
    return;
  *pp2 = p;
  **pp1 = 1;
}
#endif

#ifdef TEST2
void null_value(_Optional int **pp1, _Optional int **pp2)
{
  if (!*pp1)
    return;
  *pp2 = 0;
  **pp1 = 1; /* WARNING */
}
#endif

#ifdef TEST3
void unconstrained_value(_Optional int **pp1, _Optional int **pp2,
                         _Optional int *p)
{
  if (!*pp1)
    return;
  *pp2 = p;
  **pp1 = 1; /* WARNING */
}
#endif

#ifdef TEST4
void character_write_may_alias(_Optional int **pp, unsigned char *bytes)
{
  if (!*pp)
    return;
  *bytes = 0;
  **pp = 1; /* WARNING */
}
#endif

#ifdef TEST5
void volatile_pointer_object(_Optional int *volatile *pp)
{
  if (!*pp)
    return;
  **pp = 1; /* WARNING */
}
#endif

#ifdef TEST6
void changed_base(_Optional int **pp1, _Optional int **pp2)
{
  if (!*pp1)
    return;
  pp1 = pp2;
  **pp1 = 1; /* WARNING */
}
#endif

#ifdef TEST7
void direct_indirect_assignment(_Optional int **pp)
{
  int i;

  *pp = &i;
  **pp = 1;
}
#endif

#ifdef TEST8
union pointer_overlay
{
  _Optional int *p;
};

void aggregate_write_may_alias(_Optional int **pp,
                               union pointer_overlay *overlay)
{
  union pointer_overlay zero = {0};

  if (!*pp)
    return;
  *overlay = zero;
  **pp = 1; /* WARNING */
}
#endif

#ifdef TEST9
struct pointer_member
{
  _Optional int *p;
};

void structure_write_may_alias(_Optional int **pp,
                               struct pointer_member *object)
{
  struct pointer_member zero = {0};

  if (!*pp)
    return;
  *object = zero;
  **pp = 1; /* WARNING */
}
#endif

#ifdef TEST10
struct pointer_array
{
  _Optional int *p[1];
};

void array_subobject_write_may_alias(_Optional int **pp,
                                     struct pointer_array *object)
{
  struct pointer_array zero = {{0}};

  if (!*pp)
    return;
  *object = zero;
  **pp = 1; /* WARNING */
}
#endif
