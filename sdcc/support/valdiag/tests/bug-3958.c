/* bug-3958.c

   A call cannot modify an automatic object through an argument that points to
   its const-qualified type, unless the object's address has escaped by another
   write-capable route.
 */

#if defined(__SDCC) && defined(__has_reentrant)
#define REENTRANT __reentrant
#else
#define REENTRANT
#endif

extern void inspect(_Optional int *const *);
extern void modify(_Optional int **);
extern void inspect_cvr(_Optional int *const volatile restrict *);
extern void inspect_top_const(_Optional int **const);
extern void inspect_reentrant(_Optional int *const *) REENTRANT;
extern _Optional int **escaped;
_Optional int *global_p;

#ifdef TEST1
void exact_report(_Optional int *p)
{
  if (!p)
    return;
  inspect(&p);
  *p = 1;
  escaped = &p;
  inspect(&p);
  *p = 2; /* WARNING */
}
#endif

#ifdef TEST2
void writable_parameter(_Optional int *p)
{
  if (!p)
    return;
  modify(&p);
  *p = 1; /* WARNING */
}
#endif

#ifdef TEST3
void additional_qualifiers(_Optional int *p)
{
  if (!p)
    return;
  inspect_cvr(&p);
  *p = 1;
}
#endif

#ifdef TEST4
void top_level_const_only(_Optional int *p)
{
  if (!p)
    return;
  inspect_top_const(&p);
  *p = 1; /* WARNING */
}
#endif

#ifdef TEST5
void repeated_read_only_calls(_Optional int *p)
{
  if (!p)
    return;
  inspect(&p);
  inspect(&p);
  *p = 1;
}
#endif

#ifdef TEST6
void file_scope_object(void)
{
  if (!global_p)
    return;
  inspect(&global_p);
  *global_p = 1; /* WARNING */
}
#endif

#ifdef TEST7
void indirect_call(_Optional int *p)
{
  void (*fp)(_Optional int *const *) REENTRANT = inspect_reentrant;
  if (!p)
    return;
  fp(&p);
  *p = 1;
}
#endif
