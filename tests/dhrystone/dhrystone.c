/* Accuracy of timings and human fatigue controlled by next two lines */
/*#define LOOPS	5000		/* Use this for slow or 16 bit machines */
#define LOOPS	500000		/* Use this for slow or 16 bit machines */
/*#define LOOPS	500000		/* Use this for faster machines */

/* Compiler dependent options */
#undef	NOENUM			/* Define if compiler has no enum's */
#undef	NOSTRUCTASSIGN		/* Define if compiler can't assign structures */

/* define only one of the next two defines */
//#define TIMES			/* Use times(2) time function */
/*#define TIME			/* Use time(2) time function */

#include "terra.h"
#include <math.h>
#include "printf.h"

int printf(const char *fmt, ...);

/* for compatibility with goofed up version */
/*#define GOOF			/* Define if you want the goofed up version */

#ifdef GOOF
char	Version[] = "1.0";
#else
char	Version[] = "1.1";
#endif

#ifdef	NOSTRUCTASSIGN
#define	structassign(d, s)	memcpy(&(d), &(s), sizeof(d))
#else
#define	structassign(d, s)	d = s
#endif

#ifdef	NOENUM
#define	Ident1	1
#define	Ident2	2
#define	Ident3	3
#define	Ident4	4
#define	Ident5	5
typedef int	Enumeration;
#else
typedef enum	{Ident1, Ident2, Ident3, Ident4, Ident5} Enumeration;
#endif

#define arith64_u64 unsigned long long int
#define arith64_s64 signed long long int
#define arith64_u32 unsigned int
#define arith64_s32 int

typedef union
{
    arith64_u64 u64;
    arith64_s64 s64;
    struct
    {
#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
        arith64_u32 hi; arith64_u32 lo;
#else
        arith64_u32 lo; arith64_u32 hi;
#endif
    } u32;
    struct
    {
#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
        arith64_s32 hi; arith64_s32 lo;
#else
        arith64_s32 lo; arith64_s32 hi;
#endif
    } s32;
} arith64_word;

// extract hi and lo 32-bit words from 64-bit value
#define arith64_hi(n) (arith64_word){.u64=n}.u32.hi
#define arith64_lo(n) (arith64_word){.u64=n}.u32.lo

// Negate a if b is negative, via invert and increment.
#define arith64_neg(a, b) (((a) ^ ((((arith64_s64)(b)) >= 0) - 1)) + (((arith64_s64)(b)) < 0))
#define arith64_abs(a) arith64_neg(a, a)

// Return the absolute value of a.
// Note LLINT_MIN cannot be negated.
arith64_s64 __absvdi2(arith64_s64 a)
{
    return arith64_abs(a);
}

// Return the result of shifting a left by b bits.
arith64_s64 __ashldi3(arith64_s64 a, int b)
{
    arith64_word w = {.s64 = a};

    b &= 63;

    if (b >= 32)
    {
        w.u32.hi = w.u32.lo << (b - 32);
        w.u32.lo = 0;
    } else if (b)
    {
        w.u32.hi = (w.u32.lo >> (32 - b)) | (w.u32.hi << b);
        w.u32.lo <<= b;
    }
    return w.s64;
}

// Return the result of arithmetically shifting a right by b bits.
arith64_s64 __ashrdi3(arith64_s64 a, int b)
{
    arith64_word w = {.s64 = a};

    b &= 63;

    if (b >= 32)
    {
        w.s32.lo = w.s32.hi >> (b - 32);
        w.s32.hi >>= 31; // 0xFFFFFFFF or 0
    } else if (b)
    {
        w.u32.lo = (w.u32.hi << (32 - b)) | (w.u32.lo >> b);
        w.s32.hi >>= b;
    }
    return w.s64;
}

// These functions return the number of leading 0-bits in a, starting at the
// most significant bit position. If a is zero, the result is undefined.
int __clzsi2(arith64_u32 a)
{
    int b, n = 0;
    b = !(a & 0xffff0000) << 4; n += b; a <<= b;
    b = !(a & 0xff000000) << 3; n += b; a <<= b;
    b = !(a & 0xf0000000) << 2; n += b; a <<= b;
    b = !(a & 0xc0000000) << 1; n += b; a <<= b;
    return n + !(a & 0x80000000);
}

int __clzdi2(arith64_u64 a)
{
    int b, n = 0;
    b = !(a & 0xffffffff00000000ULL) << 5; n += b; a <<= b;
    b = !(a & 0xffff000000000000ULL) << 4; n += b; a <<= b;
    b = !(a & 0xff00000000000000ULL) << 3; n += b; a <<= b;
    b = !(a & 0xf000000000000000ULL) << 2; n += b; a <<= b;
    b = !(a & 0xc000000000000000ULL) << 1; n += b; a <<= b;
    return n + !(a & 0x8000000000000000ULL);
}

// These functions return the number of trailing 0-bits in a, starting at the
// least significant bit position. If a is zero, the result is undefined.
int __ctzsi2(arith64_u32 a)
{
    int b, n = 0;
    b = !(a & 0x0000ffff) << 4; n += b; a >>= b;
    b = !(a & 0x000000ff) << 3; n += b; a >>= b;
    b = !(a & 0x0000000f) << 2; n += b; a >>= b;
    b = !(a & 0x00000003) << 1; n += b; a >>= b;
    return n + !(a & 0x00000001);
}

int __ctzdi2(arith64_u64 a)
{
    int b, n = 0;
    b = !(a & 0x00000000ffffffffULL) << 5; n += b; a >>= b;
    b = !(a & 0x000000000000ffffULL) << 4; n += b; a >>= b;
    b = !(a & 0x00000000000000ffULL) << 3; n += b; a >>= b;
    b = !(a & 0x000000000000000fULL) << 2; n += b; a >>= b;
    b = !(a & 0x0000000000000003ULL) << 1; n += b; a >>= b;
    return n + !(a & 0x0000000000000001ULL);
}

// Calculate both the quotient and remainder of the unsigned division of a and
// b. The return value is the quotient, and the remainder is placed in variable
// pointed to by c (if it's not NULL).
arith64_u64 __divmoddi4(arith64_u64 a, arith64_u64 b, arith64_u64 *c)
{
    if (b > a)                                  // divisor > numerator?
    {
        if (c) *c = a;                          // remainder = numerator
        return 0;                               // quotient = 0
    }
    if (!arith64_hi(b))                         // divisor is 32-bit
    {
        if (b == 0)                             // divide by 0
        {
            volatile char x = 0; x = 1 / x;     // force an exception
        }
        if (b == 1)                             // divide by 1
        {
            if (c) *c = 0;                      // remainder = 0
            return a;                           // quotient = numerator
        }
        if (!arith64_hi(a))                     // numerator is also 32-bit
        {
            if (c)                              // use generic 32-bit operators
                *c = arith64_lo(a) % arith64_lo(b);
            return arith64_lo(a) / arith64_lo(b);
        }
    }

    // let's do long division
    char bits = __clzdi2(b) - __clzdi2(a) + 1;  // number of bits to iterate (a and b are non-zero)
    arith64_u64 rem = a >> bits;                   // init remainder
    a <<= 64 - bits;                            // shift numerator to the high bit
    arith64_u64 wrap = 0;                          // start with wrap = 0
    while (bits-- > 0)                          // for each bit
    {
        rem = (rem << 1) | (a >> 63);           // shift numerator MSB to remainder LSB
        a = (a << 1) | (wrap & 1);              // shift out the numerator, shift in wrap
        wrap = ((arith64_s64)(b - rem - 1) >> 63);  // wrap = (b > rem) ? 0 : 0xffffffffffffffff (via sign extension)
        rem -= b & wrap;                        // if (wrap) rem -= b
    }
    if (c) *c = rem;                            // maybe set remainder
    return (a << 1) | (wrap & 1);               // return the quotient
}

// Return the quotient of the signed division of a and b.
arith64_s64 __divdi3(arith64_s64 a, arith64_s64 b)
{
    arith64_u64 q = __divmoddi4(arith64_abs(a), arith64_abs(b), (void *)0);
    return arith64_neg(q, a^b); // negate q if a and b signs are different
}

// Return the index of the least significant 1-bit in a, or the value zero if a
// is zero. The least significant bit is index one.
int __ffsdi2(arith64_u64 a)
{
    return a ? __ctzdi2(a) + 1 : 0;
}

// Return the result of logically shifting a right by b bits.
arith64_u64 __lshrdi3(arith64_u64 a, int b)
{
    arith64_word w = {.u64 = a};

    b &= 63;

    if (b >= 32)
    {
        w.u32.lo = w.u32.hi >> (b - 32);
        w.u32.hi = 0;
    } else if (b)
    {
        w.u32.lo = (w.u32.hi << (32 - b)) | (w.u32.lo >> b);
        w.u32.hi >>= b;
    }
    return w.u64;
}

// Return the remainder of the signed division of a and b.
arith64_s64 __moddi3(arith64_s64 a, arith64_s64 b)
{
    arith64_u64 r;
    __divmoddi4(arith64_abs(a), arith64_abs(b), &r);
    return arith64_neg(r, a); // negate remainder if numerator is negative
}

// Return the number of bits set in a.
int __popcountsi2(arith64_u32 a)
{
    // collect sums into two low bytes
    a = a - ((a >> 1) & 0x55555555);
    a = ((a >> 2) & 0x33333333) + (a & 0x33333333);
    a = (a + (a >> 4)) & 0x0F0F0F0F;
    a = (a + (a >> 16));
    // add the bytes, return bottom 6 bits
    return (a + (a >> 8)) & 63;
}

// Return the number of bits set in a.
int __popcountdi2(arith64_u64 a)
{
    // collect sums into two low bytes
    a = a - ((a >> 1) & 0x5555555555555555ULL);
    a = ((a >> 2) & 0x3333333333333333ULL) + (a & 0x3333333333333333ULL);
    a = (a + (a >> 4)) & 0x0F0F0F0F0F0F0F0FULL;
    a = (a + (a >> 32));
    a = (a + (a >> 16));
    // add the bytes, return bottom 7 bits
    return (a + (a >> 8)) & 127;
}

// Return the quotient of the unsigned division of a and b.
arith64_u64 __udivdi3(arith64_u64 a, arith64_u64 b)
{
    return __divmoddi4(a, b, (void *)0);
}

// Return the remainder of the unsigned division of a and b.
arith64_u64 __umoddi3(arith64_u64 a, arith64_u64 b)
{
    arith64_u64 r;
    __divmoddi4(a, b, &r);
    return r;
}

typedef int	OneToThirty;
typedef int	OneToFifty;
typedef char	CapitalLetter;
typedef char	String30[31];
typedef int	Array1Dim[51];
typedef int	Array2Dim[51][51];

struct	Record
{
	struct Record		*PtrComp;
	Enumeration		Discr;
	Enumeration		EnumComp;
	OneToFifty		IntComp;
	String30		StringComp;
};

typedef struct Record 	RecordType;
typedef RecordType *	RecordPtr;
typedef int		boolean;

#define	NULL		0
#define	TRUE		1
#define	FALSE		0

#ifndef REG
#define	REG
#endif

extern Enumeration	Func1();
extern boolean		Func2();

#ifdef TIMES
#include <sys/types.h>
#include <sys/times.h>
#endif

char* strcpy(char* dest, const char* src)
{
  char* d = dest;
  while ((*d++ = *src++))
    ;
  return dest;
}

int strcmp(const char* s1, const char* s2)
{
  unsigned char c1, c2;

  do {
    c1 = *s1++;
    c2 = *s2++;
  } while (c1 != 0 && c1 == c2);

  return c1 - c2;
}

#define CORETIMETYPE uint64_t
#define CORE_TICKS uint64_t

float
barebones_clock()
{
	return (float)((uint64_t) rdcycleh() << 32 | rdcycle());
}
/* Define : TIMER_RES_DIVIDER
        Divider to trade off timer resolution and total time that can be
   measured.

        Use lower values to increase resolution, but make sure that overflow
   does not occur. If there are issues with the return value overflowing,
   increase this value.
        */
#define GETMYTIME(_t)              (*_t = barebones_clock())
#define MYTIMEDIFF(fin, ini)       ((fin) - (ini))
#define TIMER_RES_DIVIDER          1
#define SAMPLE_TIME_IMPLEMENTATION 1
#define EE_TICKS_PER_SEC           (SAAT_FREKANSI / TIMER_RES_DIVIDER)

/** Define Host specific (POSIX), or target specific global time variables. */
static float start_time_val, stop_time_val;

/* Function : start_time
        This function will be called right before starting the timed portion of
   the benchmark.

        Implementation may be capturing a system timer (as implemented in the
   example code) or zeroing some system parameters - e.g. setting the cpu clocks
   cycles to 0.
*/
void
start_time(void)
{
    GETMYTIME(&start_time_val);
}
/* Function : stop_time
        This function will be called right after ending the timed portion of the
   benchmark.

        Implementation may be capturing a system timer (as implemented in the
   example code) or other system parameters - e.g. reading the current value of
   cpu cycles counter.
*/
void
stop_time(void)
{
    GETMYTIME(&stop_time_val);
}
/* Function : get_time
        Return an abstract "ticks" number that signifies time on the system.

        Actual value returned may be cpu cycles, milliseconds or any other
   value, as long as it can be converted to seconds by <time_in_secs>. This
   methodology is taken to accommodate any hardware or simulated platform. The
   sample implementation returns millisecs by default, and the resolution is
   controlled by <TIMER_RES_DIVIDER>
*/
float
get_time(void)
{
    float elapsed
        = (float)(MYTIMEDIFF(stop_time_val, start_time_val));
    return elapsed;
}

int
main()
{
    uart_aktiflestir();
	printf("KASIRGA\n");
	Proc0();
	return 0;
}

/*
 * Package 1
 */
int		IntGlob;
boolean		BoolGlob;
char		Char1Glob;
char		Char2Glob;
Array1Dim	Array1Glob;
Array2Dim	Array2Glob;
RecordPtr	PtrGlb;
RecordPtr	PtrGlbNext;

static char mem[2024];

char* malloc(uint32_t size) {
	static char* malloc_ptr = mem;
	char* src = mem;
	malloc_ptr += size;
	return src;
}

void
Proc0()
{
	OneToFifty		IntLoc1;
	REG OneToFifty		IntLoc2;
	OneToFifty		IntLoc3;
	REG char		CharLoc;
	REG char		CharIndex;
	Enumeration	 	EnumLoc;
	String30		String1Loc;
	String30		String2Loc;

	register unsigned int	i;
#ifdef TIME
	long			time();
	long			starttime;
	long			benchtime;
	long			nulltime;

	starttime = time( (long *) 0);
	for (i = 0; i < LOOPS; ++i);
	nulltime = time( (long *) 0) - starttime; /* Computes o'head of loop */
#endif
#ifdef TIMES
	time_t			starttime;
	time_t			benchtime;
	time_t			nulltime;
	struct tms		tms;

	times(&tms); starttime = tms.tms_utime;
	for (i = 0; i < LOOPS; ++i);
	times(&tms);
	nulltime = tms.tms_utime - starttime; /* Computes overhead of looping */
#endif
    start_time();
	for (i = 0; i < LOOPS; ++i);
    stop_time();
    float nulltime = get_time();

	PtrGlbNext = (RecordPtr) malloc(sizeof(RecordType));
	PtrGlb = (RecordPtr) malloc(sizeof(RecordType));
	PtrGlb->PtrComp = PtrGlbNext;
	PtrGlb->Discr = Ident1;
	PtrGlb->EnumComp = Ident3;
	PtrGlb->IntComp = 40;
	strcpy(PtrGlb->StringComp, "DHRYSTONE PROGRAM, SOME STRING");
#ifndef	GOOF
	strcpy(String1Loc, "DHRYSTONE PROGRAM, 1'ST STRING");	/*GOOF*/
#endif
	Array2Glob[8][7] = 10;	/* Was missing in published program */

/*****************
-- Start Timer --
*****************/
#ifdef TIME
	starttime = time( (long *) 0);
#endif
#ifdef TIMES
	times(&tms); starttime = tms.tms_utime;
#endif
    start_time();
	for (i = 0; i < LOOPS; ++i)
	{
		// printf("%d\n", i);
		Proc5();
		Proc4();
		IntLoc1 = 2;
		IntLoc2 = 3;
		strcpy(String2Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
		EnumLoc = Ident2;
		BoolGlob = ! Func2(String1Loc, String2Loc);
		while (IntLoc1 < IntLoc2)
		{
			IntLoc3 = 5 * IntLoc1 - IntLoc2;
			Proc7(IntLoc1, IntLoc2, &IntLoc3);
			++IntLoc1;
		}
		Proc8(Array1Glob, Array2Glob, IntLoc1, IntLoc3);
		Proc1(PtrGlb);
		for (CharIndex = 'A'; CharIndex <= Char2Glob; ++CharIndex)
			if (EnumLoc == Func1(CharIndex, 'C'))
				Proc6(Ident1, &EnumLoc);
		IntLoc3 = IntLoc2 * IntLoc1;
		IntLoc2 = IntLoc3 / IntLoc1;
		IntLoc2 = 7 * (IntLoc3 - IntLoc2) - IntLoc1;
		Proc2(&IntLoc1);
	}

/*****************
-- Stop Timer --
*****************/

#ifdef TIME
	benchtime = time( (long *) 0) - starttime - nulltime;
	printf("Dhrystone(%s) time for %ld passes = %ld\n",
		Version,
		(long) LOOPS, benchtime);
	printf("This machine benchmarks at %ld dhrystones/second\n",
		((long) LOOPS) / benchtime);
#endif
#ifdef TIMES
	times(&tms);
	benchtime = tms.tms_utime - starttime - nulltime;
	printf("Dhrystone(%s) time for %ld passes = %ld\n",
		Version,
		(long) LOOPS, benchtime/HZ);
	printf("This machine benchmarks at %ld dhrystones/second\n",
		((long) LOOPS) * HZ / benchtime);
#endif
    stop_time();
    float benchtime = get_time() - nulltime;
	float seconds = ((float) benchtime / (float) SAAT_FREKANSI);
	printf("Dhrystone(%s) time for %ld passes = %f\n",
		Version,
		(long) LOOPS, seconds);
	printf("This machine benchmarks at %f dhrystones/second\n", (LOOPS / seconds));
	printf("This machine asdasdasd at %f dhrystones/second\n", (LOOPS / seconds / 1757.0));
}

void
Proc1(PtrParIn)
REG RecordPtr	PtrParIn;
{
#define	NextRecord	(*(PtrParIn->PtrComp))

	structassign(NextRecord, *PtrGlb);
	PtrParIn->IntComp = 5;
	NextRecord.IntComp = PtrParIn->IntComp;
	NextRecord.PtrComp = PtrParIn->PtrComp;
	Proc3(NextRecord.PtrComp);
	if (NextRecord.Discr == Ident1)
	{
		NextRecord.IntComp = 6;
		Proc6(PtrParIn->EnumComp, &NextRecord.EnumComp);
		NextRecord.PtrComp = PtrGlb->PtrComp;
		Proc7(NextRecord.IntComp, 10, &NextRecord.IntComp);
	}
	else
		structassign(*PtrParIn, NextRecord);

#undef	NextRecord
}

void
Proc2(IntParIO)
OneToFifty	*IntParIO;
{
	REG OneToFifty		IntLoc;
	REG Enumeration		EnumLoc;

	IntLoc = *IntParIO + 10;
	for(;;)
	{
		if (Char1Glob == 'A')
		{
			--IntLoc;
			*IntParIO = IntLoc - IntGlob;
			EnumLoc = Ident1;
		}
		if (EnumLoc == Ident1)
			break;
	}
}

void
Proc3(PtrParOut)
RecordPtr	*PtrParOut;
{
	if (PtrGlb != NULL)
		*PtrParOut = PtrGlb->PtrComp;
	else
		IntGlob = 100;
	Proc7(10, IntGlob, &PtrGlb->IntComp);
}

void
Proc4()
{
	REG boolean	BoolLoc;

	BoolLoc = Char1Glob == 'A';
	BoolLoc |= BoolGlob;
	Char2Glob = 'B';
}

void
Proc5()
{
	Char1Glob = 'A';
	BoolGlob = FALSE;
}

extern boolean Func3();

void
Proc6(EnumParIn, EnumParOut)
REG Enumeration	EnumParIn;
REG Enumeration	*EnumParOut;
{
	*EnumParOut = EnumParIn;
	if (! Func3(EnumParIn) )
		*EnumParOut = Ident4;
	switch (EnumParIn)
	{
	case Ident1:	*EnumParOut = Ident1; break;
	case Ident2:	if (IntGlob > 100) *EnumParOut = Ident1;
			else *EnumParOut = Ident4;
			break;
	case Ident3:	*EnumParOut = Ident2; break;
	case Ident4:	break;
	case Ident5:	*EnumParOut = Ident3;
	}
}

void
Proc7(IntParI1, IntParI2, IntParOut)
OneToFifty	IntParI1;
OneToFifty	IntParI2;
OneToFifty	*IntParOut;
{
	REG OneToFifty	IntLoc;

	IntLoc = IntParI1 + 2;
	*IntParOut = IntParI2 + IntLoc;
}

void
Proc8(Array1Par, Array2Par, IntParI1, IntParI2)
Array1Dim	Array1Par;
Array2Dim	Array2Par;
OneToFifty	IntParI1;
OneToFifty	IntParI2;
{
	REG OneToFifty	IntLoc;
	REG OneToFifty	IntIndex;

	IntLoc = IntParI1 + 5;
	Array1Par[IntLoc] = IntParI2;
	Array1Par[IntLoc+1] = Array1Par[IntLoc];
	Array1Par[IntLoc+30] = IntLoc;
	for (IntIndex = IntLoc; IntIndex <= (IntLoc+1); ++IntIndex)
		Array2Par[IntLoc][IntIndex] = IntLoc;
	++Array2Par[IntLoc][IntLoc-1];
	Array2Par[IntLoc+20][IntLoc] = Array1Par[IntLoc];
	IntGlob = 5;
}

Enumeration Func1(CharPar1, CharPar2)
CapitalLetter	CharPar1;
CapitalLetter	CharPar2;
{
	REG CapitalLetter	CharLoc1;
	REG CapitalLetter	CharLoc2;

	CharLoc1 = CharPar1;
	CharLoc2 = CharLoc1;
	if (CharLoc2 != CharPar2)
		return (Ident1);
	else
		return (Ident2);
}

boolean Func2(StrParI1, StrParI2)
String30	StrParI1;
String30	StrParI2;
{
	REG OneToThirty		IntLoc;
	REG CapitalLetter	CharLoc;

	IntLoc = 1;
	while (IntLoc <= 1)
		if (Func1(StrParI1[IntLoc], StrParI2[IntLoc+1]) == Ident1)
		{
			CharLoc = 'A';
			++IntLoc;
		}
	if (CharLoc >= 'W' && CharLoc <= 'Z')
		IntLoc = 7;
	if (CharLoc == 'X')
		return(TRUE);
	else
	{
		if (strcmp(StrParI1, StrParI2) > 0)
		{
			IntLoc += 7;
			return (TRUE);
		}
		else
			return (FALSE);
	}
}

boolean Func3(EnumParIn)
REG Enumeration	EnumParIn;
{
	REG Enumeration	EnumLoc;

	EnumLoc = EnumParIn;
	if (EnumLoc == Ident3) return (TRUE);
	return (FALSE);
}

#ifdef	NOSTRUCTASSIGN
memcpy(d, s, l)
register char	*d;
register char	*s;
register int	l;
{
	while (l--) *d++ = *s++;
}
#endif
/* ---------- */