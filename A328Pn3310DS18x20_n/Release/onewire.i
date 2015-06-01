# 1 "../onewire/onewire.c"
# 1 "<command-line>"
# 1 "../onewire/onewire.c"
# 14 "../onewire/onewire.c"
# 1 "/AtmelAvrToolchain/avr/include/avr/io.h" 1 3
# 99 "/AtmelAvrToolchain/avr/include/avr/io.h" 3
# 1 "/AtmelAvrToolchain/avr/include/avr/sfr_defs.h" 1 3
# 126 "/AtmelAvrToolchain/avr/include/avr/sfr_defs.h" 3
# 1 "/AtmelAvrToolchain/avr/include/inttypes.h" 1 3
# 37 "/AtmelAvrToolchain/avr/include/inttypes.h" 3
# 1 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stdint.h" 1 3 4
# 9 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stdint.h" 3 4
# 1 "/AtmelAvrToolchain/avr/include/stdint.h" 1 3 4
# 121 "/AtmelAvrToolchain/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/AtmelAvrToolchain/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/AtmelAvrToolchain/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/AtmelAvrToolchain/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/AtmelAvrToolchain/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stdint.h" 2 3 4
# 38 "/AtmelAvrToolchain/avr/include/inttypes.h" 2 3
# 77 "/AtmelAvrToolchain/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/AtmelAvrToolchain/avr/include/avr/sfr_defs.h" 2 3
# 100 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3
# 272 "/AtmelAvrToolchain/avr/include/avr/io.h" 3
# 1 "/AtmelAvrToolchain/avr/include/avr/iom328p.h" 1 3
# 273 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3
# 616 "/AtmelAvrToolchain/avr/include/avr/io.h" 3
# 1 "/AtmelAvrToolchain/avr/include/avr/portpins.h" 1 3
# 617 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3

# 1 "/AtmelAvrToolchain/avr/include/avr/common.h" 1 3
# 619 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3

# 1 "/AtmelAvrToolchain/avr/include/avr/version.h" 1 3
# 621 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3






# 1 "/AtmelAvrToolchain/avr/include/avr/fuse.h" 1 3
# 239 "/AtmelAvrToolchain/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 628 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3


# 1 "/AtmelAvrToolchain/avr/include/avr/lock.h" 1 3
# 631 "/AtmelAvrToolchain/avr/include/avr/io.h" 2 3
# 15 "../onewire/onewire.c" 2
# 1 "/AtmelAvrToolchain/avr/include/util/delay.h" 1 3
# 43 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
# 1 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1 3
# 40 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 3
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
# 102 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 3
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
# 44 "/AtmelAvrToolchain/avr/include/util/delay.h" 2 3
# 1 "/AtmelAvrToolchain/avr/include/math.h" 1 3
# 127 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/AtmelAvrToolchain/avr/include/math.h" 3
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
# 376 "/AtmelAvrToolchain/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/AtmelAvrToolchain/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/AtmelAvrToolchain/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/AtmelAvrToolchain/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/AtmelAvrToolchain/avr/include/util/delay.h" 2 3
# 84 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((8000000UL) / 1e3) * __ms;
# 160 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
}
# 223 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((8000000UL) / 1e6) * __us;
# 242 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 268 "/AtmelAvrToolchain/avr/include/util/delay.h" 3
}
# 16 "../onewire/onewire.c" 2
# 1 "/AtmelAvrToolchain/avr/include/util/atomic.h" 1 3
# 38 "/AtmelAvrToolchain/avr/include/util/atomic.h" 3
# 1 "/AtmelAvrToolchain/avr/include/avr/interrupt.h" 1 3
# 39 "/AtmelAvrToolchain/avr/include/util/atomic.h" 2 3



static __inline__ uint8_t __iSeiRetVal(void)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    return 1;
}

static __inline__ void __iSeiParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iCliParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iRestore(const uint8_t *__s)
{
    (*(volatile uint8_t *)((0x3F) + 0x20)) = *__s;
    __asm__ volatile ("" ::: "memory");
}
# 17 "../onewire/onewire.c" 2

# 1 "../onewire/onewire.h" 1
# 76 "../onewire/onewire.h"
extern uint8_t ow_reset(void);

extern uint8_t ow_bit_io( uint8_t b );
extern uint8_t ow_byte_wr( uint8_t b );
extern uint8_t ow_byte_rd( void );
extern uint8_t ow_byte_wr_with_parasite_enable( uint8_t b );

extern uint8_t ow_rom_search( uint8_t diff, uint8_t *id );

extern void ow_command( uint8_t command, uint8_t *id );
extern void ow_command_with_parasite_enable( uint8_t command, uint8_t *id );

extern void ow_parasite_enable( void );
extern void ow_parasite_disable( void );
extern uint8_t ow_input_pin_state( void );
# 103 "../onewire/onewire.h"
extern uint8_t OW_PIN;
extern uint8_t OW_PIN_MASK;
extern volatile uint8_t* OW_IN;
extern volatile uint8_t* OW_OUT;
extern volatile uint8_t* OW_DDR;
# 118 "../onewire/onewire.h"
extern void ow_set_bus( volatile uint8_t* in,
 volatile uint8_t* out,
 volatile uint8_t* ddr,
 uint8_t pin );
# 19 "../onewire/onewire.c" 2


extern uint8_t OWReset();






uint8_t OW_PIN;
uint8_t OW_PIN_MASK;
volatile uint8_t* OW_IN;
volatile uint8_t* OW_OUT;
volatile uint8_t* OW_DDR;

void ow_set_bus(volatile uint8_t* in,
 volatile uint8_t* out,
 volatile uint8_t* ddr,
 uint8_t pin)
{
 OW_DDR=ddr;
 OW_OUT=out;
 OW_IN=in;
 OW_PIN_MASK = (1 << pin);
 OW_PIN = pin;

}



uint8_t ow_input_pin_state()
{
 return ( *OW_IN & OW_PIN_MASK );
}

void ow_parasite_enable(void)
{
 ( *OW_OUT |= (uint8_t) OW_PIN_MASK );
 ( *OW_DDR |= (uint8_t) OW_PIN_MASK );
}

void ow_parasite_disable(void)
{
 ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );



}
# 109 "../onewire/onewire.c"
static uint8_t ow_bit_io_intern( uint8_t b, uint8_t with_parasite_enable )
{
 for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) {

  ( *OW_OUT &= (uint8_t) ~OW_PIN_MASK );

  ( *OW_DDR |= (uint8_t) OW_PIN_MASK );
  _delay_us(2);
  if ( b ) {
   ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );

   ( *OW_OUT |= (uint8_t) OW_PIN_MASK );

  }





  _delay_us(15-2-( (uint16_t)( ((13) * 1000000L) / 8000000UL ) ));

  if( ( *OW_IN & OW_PIN_MASK ) == 0 ) {
   b = 0;
  }

  _delay_us(60-15-2+( (uint16_t)( ((13) * 1000000L) / 8000000UL ) ));

  ( *OW_OUT |= (uint8_t) OW_PIN_MASK );

  ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );

  if ( with_parasite_enable ) {
   ow_parasite_enable();
  }

 }

 _delay_us(10);

 return b;
}

uint8_t ow_bit_io( uint8_t b )
{
 return ow_bit_io_intern( b & 1, 0 );
}

uint8_t ow_byte_wr( uint8_t b )
{
 uint8_t i = 8, j;

 do {
  j = ow_bit_io( b & 1 );
  b >>= 1;
  if( j ) {
   b |= 0x80;
  }
 } while( --i );

 return b;
}

uint8_t ow_byte_wr_with_parasite_enable( uint8_t b )
{
 uint8_t i = 8, j;

 do {
  if ( i != 1 ) {
   j = ow_bit_io_intern( b & 1, 0 );
  } else {
   j = ow_bit_io_intern( b & 1, 1 );
  }
  b >>= 1;
  if( j ) {
   b |= 0x80;
  }
 } while( --i );

 return b;
}


uint8_t ow_byte_rd( void )
{


 return ow_byte_wr( 0xFF );
}
# 252 "../onewire/onewire.c"
static void ow_command_intern( uint8_t command, uint8_t *id, uint8_t with_parasite_enable )
{
 uint8_t i;


 OWReset();





 if( id ) {
  ow_byte_wr( 0x55 );
  i = 8;
  do {
   ow_byte_wr( *id );
   id++;
  } while( --i );
 }
 else {
  ow_byte_wr( 0xCC );
 }

 if ( with_parasite_enable ) {
  ow_byte_wr_with_parasite_enable( command );
 } else {
  ow_byte_wr( command );
 }
}

void ow_command( uint8_t command, uint8_t *id )
{
 ow_command_intern( command, id, 0);
}

void ow_command_with_parasite_enable( uint8_t command, uint8_t *id )
{
 ow_command_intern( command, id, 1 );
}
