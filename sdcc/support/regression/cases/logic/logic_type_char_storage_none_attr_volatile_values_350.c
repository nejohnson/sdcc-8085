/** Tests the basic logical operations.

    type: char, int, long
    storage: static, 
    attr: volatile
    values: 5, 350, 31734
 */
#include <testfwk.h>

static char
alwaysTrue(void)
{
    return (char)350;
}

static char
alwaysFalse(void)
{
    return 0;
}

static char
neverGetHere1(void)
{
    ASSERT (0);
    return 0;
}

static char
neverGetHere2(void)
{
    ASSERT (0);
    return 0;
}

static char
neverGetHere3(void)
{
    ASSERT (0);
    return 0;
}

static int hit;

static void
resetGetHere(void)
{
    hit = 0;
}

static char
alwaysGetHere(void)
{
    hit++;
    return 1;
}

static void
testLogicalAnd(void)
{
#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
#if !(defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)) // Lack of code memory
    char true_ = alwaysTrue();
    char false_ = alwaysFalse();

    ASSERT(true_);
    ASSERT(!false_);
    ASSERT(true_ && true_ && true_);
    ASSERT(true_ && !false_);
    ASSERT(!false_ && true_);

    /* Test that the evaluation is aborted on the first false. */
    if (true_ && false_ && neverGetHere1()) {
        /* Tested using neverGetHere1() */
    }

    /* Alternate that is similar. */
    if (true_ && false_) {
        neverGetHere2();
        /* Tested using neverGetHere2() */
    }

    resetGetHere();
    /* Test that the evaluation is done left to right. */
    if (alwaysGetHere() && true_ && false_) {
        ASSERT(hit == 1);
    }
#endif
#endif
}

static void
testLogicalOr(void)
{
#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
    char true_ = alwaysTrue();
    char false_ = alwaysFalse();

    ASSERT(true_);
    ASSERT(!false_);
    ASSERT(false_ || false_ || true_);
    ASSERT(!true_ || !false_);
    ASSERT(false_ || true_);

    /* Test that the evaluation is aborted on the first hit. */
    if (false_ || true_ || neverGetHere3()) {
        /* Tested using neverGetHere3() */
    }

    resetGetHere();
    /* Test that the evaluation is done left to right. */
    if (alwaysGetHere() || true_ || false_) {
        ASSERT(hit == 1);
    }
#endif
}

static void
testNot(void)
{
    char true_ = alwaysTrue();
    char false_ = alwaysFalse();

    ASSERT(!false_);
    ASSERT(!!true_);
    ASSERT(!!!false_);
}

static void
testFlagToVariable(void)
{
    char true_ = alwaysTrue();
    char false_ = alwaysFalse();
    char val = !true_;

    ASSERT(!val);
    val = !!false_;
    ASSERT(!false_);
}


void
__runSuite(void)
{
  __prints("Running testLogicalAnd\n");
  testLogicalAnd();
  __prints("Running testLogicalOr\n");
  testLogicalOr();
  __prints("Running testNot\n");
  testNot();
  __prints("Running testFlagToVariable\n");
  testFlagToVariable();
}

const int __numCases = 4;

__code const char *
__getSuiteName(void)
{
  return "logic_type_char_storage_none_attr_volatile_values_350";
}
