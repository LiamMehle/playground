# 1 "./src/blink.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./src/blink.c"
# 13 "./src/blink.c"
# 1 "/usr/avr/include/avr/io.h" 1 3
# 99 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/avr/include/inttypes.h" 1 3
# 37 "/usr/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/9.2.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/9.2.0/include/stdint.h" 3 4
# 1 "/usr/avr/include/stdint.h" 1 3 4
# 125 "/usr/avr/include/stdint.h" 3 4

# 125 "/usr/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/9.2.0/include/stdint.h" 2 3 4
# 38 "/usr/avr/include/inttypes.h" 2 3
# 77 "/usr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/avr/include/avr/io.h" 2 3
# 252 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/iom328p.h" 1 3
# 253 "/usr/avr/include/avr/io.h" 2 3
# 585 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/portpins.h" 1 3
# 586 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/common.h" 1 3
# 588 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/version.h" 1 3
# 590 "/usr/avr/include/avr/io.h" 2 3






# 1 "/usr/avr/include/avr/fuse.h" 1 3
# 239 "/usr/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 597 "/usr/avr/include/avr/io.h" 2 3


# 1 "/usr/avr/include/avr/lock.h" 1 3
# 600 "/usr/avr/include/avr/io.h" 2 3
# 14 "./src/blink.c" 2
# 1 "/usr/avr/include/util/delay.h" 1 3
# 45 "/usr/avr/include/util/delay.h" 3
# 1 "/usr/avr/include/util/delay_basic.h" 1 3
# 40 "/usr/avr/include/util/delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "/usr/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "/usr/avr/include/util/delay.h" 2 3
# 1 "/usr/avr/include/math.h" 1 3
# 127 "/usr/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/usr/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/usr/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/usr/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/usr/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/usr/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/usr/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/usr/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/usr/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/usr/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "/usr/avr/include/util/delay.h" 2 3
# 86 "/usr/avr/include/util/delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "/usr/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "/usr/avr/include/util/delay.h"
          (15998976 >> 0x08)
# 174 "/usr/avr/include/util/delay.h" 3
               ) / 1e3) * __ms;
# 184 "/usr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "/usr/avr/include/util/delay.h" 3
}
# 254 "/usr/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "/usr/avr/include/util/delay.h"
          (15998976 >> 0x08)
# 263 "/usr/avr/include/util/delay.h" 3
               ) / 1e6) * __us;
# 273 "/usr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "/usr/avr/include/util/delay.h" 3
}
# 15 "./src/blink.c" 2
# 1 "/usr/avr/include/avr/interrupt.h" 1 3
# 16 "./src/blink.c" 2
# 56 "./src/blink.c"
void __vector_11 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_11 (void) 
# 56 "./src/blink.c"
                      {
 
# 57 "./src/blink.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 57 "./src/blink.c"
      ^= 1<<5;
}

int main(void) {

 __asm__ volatile (

  "sts %0, %1\n"
  "sts %0, %2\n"
  :: "n" (&
# 66 "./src/blink.c" 3
          (*(volatile uint8_t *)(0x61))
# 66 "./src/blink.c"
               ), "r" ((uint8_t)1<<
# 66 "./src/blink.c" 3
                                   7
# 66 "./src/blink.c"
                                         ), "r" ((uint8_t)0x08) : "r20", "r21");


 ( 
# 69 "./src/blink.c" 3
(*(volatile uint8_t *)((0x04) + 0x20)) 
# 69 "./src/blink.c"
|= 1<<1<<5 );

 *((uint16_t*)&
# 71 "./src/blink.c" 3
              (*(volatile uint16_t *)(0x88))
# 71 "./src/blink.c"
                   ) = (uint16_t) ((15998976 >> 0x08) >> 10)/20;
 
# 72 "./src/blink.c" 3
(*(volatile uint8_t *)(0x80)) 
# 72 "./src/blink.c"
        = 0x00;
# 82 "./src/blink.c"
 
# 82 "./src/blink.c" 3
(*(volatile uint8_t *)(0x81)) 
# 82 "./src/blink.c"
       = 0x00 | 
# 82 "./src/blink.c" 3
                (1 << (3)) 
# 82 "./src/blink.c"
                           | 
# 82 "./src/blink.c" 3
                             (1 << (0)) 
# 82 "./src/blink.c"
                                       | 
# 82 "./src/blink.c" 3
                                         (1 << (2))
# 82 "./src/blink.c"
                                                  ;



 ( 
# 86 "./src/blink.c" 3
(*(volatile uint8_t *)(0x6F)) 
# 86 "./src/blink.c"
|= 1<<
# 86 "./src/blink.c" 3
1 
# 86 "./src/blink.c"
);
 ( 
# 87 "./src/blink.c" 3
(*(volatile uint8_t *)((0x16) + 0x20)) 
# 87 "./src/blink.c"
|= 1<<
# 87 "./src/blink.c" 3
1 
# 87 "./src/blink.c"
);



 
# 91 "./src/blink.c" 3
(*(volatile uint8_t *)(0x64)) 
# 91 "./src/blink.c"
    = 0xff & ~
# 91 "./src/blink.c" 3
              (1 << (3))
# 91 "./src/blink.c"
                         ;






 
# 98 "./src/blink.c" 3
(*(volatile uint8_t *)((0x33) + 0x20)) 
# 98 "./src/blink.c"
     = 0X00 | 
# 98 "./src/blink.c" 3
              (1 << (0))
# 98 "./src/blink.c"
                     ;





 
# 104 "./src/blink.c" 3
__asm__ __volatile__ ("sei" ::: "memory")
# 104 "./src/blink.c"
     ;

 while(1) {
  __asm__ volatile ("sleep\n");
 }
}
