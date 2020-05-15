# 1 "./src/blink.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./src/blink.c"




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
# 6 "./src/blink.c" 2

# 6 "./src/blink.c"
uint8_t clk_prescaler;
# 18 "./src/blink.c"
# 1 "/usr/avr/include/avr/io.h" 1 3
# 99 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/avr/include/inttypes.h" 1 3
# 77 "/usr/avr/include/inttypes.h" 3

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
# 19 "./src/blink.c" 2

# 1 "/usr/avr/include/avr/interrupt.h" 1 3
# 21 "./src/blink.c" 2
# 30 "./src/blink.c"
void __vector_11 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_11 (void) 
# 30 "./src/blink.c"
                      {
 
# 31 "./src/blink.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 31 "./src/blink.c"
      ^= 1<<5;
}


void update_timer_value() {
 *((uint16_t*)&
# 36 "./src/blink.c" 3
              (*(volatile uint16_t *)(0x88))
# 36 "./src/blink.c"
                   ) = (uint16_t) ((15998976 >> clk_prescaler) >> 10)/20;
}
__attribute__ ((hot))
void set_clock_prescaler(int new_prescaler) {
 clk_prescaler = new_prescaler;
 __asm__ volatile (
  "sts %0, %1\n"
  "sts %0, %2\n"
  :: "n" (&
# 44 "./src/blink.c" 3
          (*(volatile uint8_t *)(0x61))
# 44 "./src/blink.c"
               ), "r" ((uint8_t)1<<
# 44 "./src/blink.c" 3
                                   7
# 44 "./src/blink.c"
                                         ), "r" ((uint8_t)new_prescaler) : "r20", "r21");
 update_timer_value();

 
# 47 "./src/blink.c" 3
(*(volatile uint8_t *)(0xC5)) 
# 47 "./src/blink.c"
       = (uint8_t) (((15998976 >> clk_prescaler)/(16*115200)-1) << clk_prescaler) >> 8;
 
# 48 "./src/blink.c" 3
(*(volatile uint8_t *)(0xC4)) 
# 48 "./src/blink.c"
       = (uint8_t) ((15998976 >> clk_prescaler)/(16*115200)-1) << clk_prescaler;
}

__attribute__ ((cold))
__attribute__ ((unused))
void usart_init() {





 
# 59 "./src/blink.c" 3
(*(volatile uint8_t *)(0xC5)) 
# 59 "./src/blink.c"
       = (uint8_t) 0x0f & ((((15998976 >> clk_prescaler)/(16*115200)-1) << clk_prescaler) >> 8);
 
# 60 "./src/blink.c" 3
(*(volatile uint8_t *)(0xC4)) 
# 60 "./src/blink.c"
       = (uint8_t) ((15998976 >> clk_prescaler)/(16*115200)-1) << clk_prescaler;

}

__attribute__ ((hot))
__attribute__ ((unused))
inline int transmit_complete(char c) {
 return 
# 67 "./src/blink.c" 3
       (*(volatile uint8_t *)(0xC0)) 
# 67 "./src/blink.c"
              & 
# 67 "./src/blink.c" 3
                6
# 67 "./src/blink.c"
                    ;
}

__attribute__ ((hot))
__attribute__ ((unused))
void put_char(char c) {
 while( !(
# 73 "./src/blink.c" 3
         (*(volatile uint8_t *)(0xC0)) 
# 73 "./src/blink.c"
                & 
# 73 "./src/blink.c" 3
                  (1 << (5))
# 73 "./src/blink.c"
                            ) );
 
# 74 "./src/blink.c" 3
(*(volatile uint8_t *)(0xC6)) 
# 74 "./src/blink.c"
     = c;
 return;
}

int main(void) {

 set_clock_prescaler(8);

 
# 82 "./src/blink.c" 3
__asm__ __volatile__ ("cli" ::: "memory")
# 82 "./src/blink.c"
     ;




 ( 
# 87 "./src/blink.c" 3
(*(volatile uint8_t *)((0x04) + 0x20)) 
# 87 "./src/blink.c"
|= 1<<1<<5 );





 
# 93 "./src/blink.c" 3
(*(volatile uint8_t *)(0x80)) 
# 93 "./src/blink.c"
       = 0x00;
 
# 94 "./src/blink.c" 3
(*(volatile uint8_t *)(0x81)) 
# 94 "./src/blink.c"
       = 0x00 | 
# 94 "./src/blink.c" 3
                (1 << (3)) 
# 94 "./src/blink.c"
                           | 
# 94 "./src/blink.c" 3
                             (1 << (0)) 
# 94 "./src/blink.c"
                                       | 
# 94 "./src/blink.c" 3
                                         (1 << (2))
# 94 "./src/blink.c"
                                                  ;



 ( 
# 98 "./src/blink.c" 3
(*(volatile uint8_t *)(0x6F)) 
# 98 "./src/blink.c"
|= 1<<
# 98 "./src/blink.c" 3
1 
# 98 "./src/blink.c"
);
 ( 
# 99 "./src/blink.c" 3
(*(volatile uint8_t *)((0x16) + 0x20)) 
# 99 "./src/blink.c"
|= 1<<
# 99 "./src/blink.c" 3
1 
# 99 "./src/blink.c"
);



 
# 103 "./src/blink.c" 3
__asm__ __volatile__ ("sei" ::: "memory")
# 103 "./src/blink.c"
     ;



 
# 107 "./src/blink.c" 3
(*(volatile uint8_t *)(0x64)) 
# 107 "./src/blink.c"
    = 0xff & ~(
# 107 "./src/blink.c" 3
               (1 << (3)) 
# 107 "./src/blink.c"
                           | 
# 107 "./src/blink.c" 3
                             (1 << (1))
# 107 "./src/blink.c"
                                          );






 
# 114 "./src/blink.c" 3
(*(volatile uint8_t *)((0x33) + 0x20)) 
# 114 "./src/blink.c"
     = 0x00 | 
# 114 "./src/blink.c" 3
              (1 << (0))
# 114 "./src/blink.c"
                     ;







 usart_init();




 while(1) {


 }
}
