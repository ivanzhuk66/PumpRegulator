# 1 "../onewire/1WireMaxim.c"
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug//"
# 1 "<command-line>"
# 1 "../onewire/1WireMaxim.c"






# 1 "../onewire/onewire.h" 1







# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdint.h" 1 3 4
# 9 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdint.h" 3 4
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 1 3 4
# 121 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdint.h" 2 3 4
# 9 "../onewire/onewire.h" 2
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
# 8 "../onewire/1WireMaxim.c" 2


# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 1 3
# 99 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/sfr_defs.h" 1 3
# 126 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/sfr_defs.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 1 3
# 77 "/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/sfr_defs.h" 2 3
# 100 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3
# 272 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/iom328p.h" 1 3
# 273 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3
# 616 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/portpins.h" 1 3
# 617 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3

# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/common.h" 1 3
# 619 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3

# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/version.h" 1 3
# 621 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3






# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/fuse.h" 1 3
# 239 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 628 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3


# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/lock.h" 1 3
# 631 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 2 3
# 11 "../onewire/1WireMaxim.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 1 3
# 43 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1 3
# 40 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 3
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
# 102 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 3
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
# 44 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 2 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 1 3
# 127 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
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
# 376 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/avr8-gnu-toolchain-linux_x86/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 2 3
# 84 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((8000000UL) / 1e3) * __ms;
# 160 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
}
# 223 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((8000000UL) / 1e6) * __us;
# 242 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 268 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h" 3
}
# 12 "../onewire/1WireMaxim.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/util/atomic.h" 1 3
# 38 "/avr8-gnu-toolchain-linux_x86/avr/include/util/atomic.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/interrupt.h" 1 3
# 39 "/avr8-gnu-toolchain-linux_x86/avr/include/util/atomic.h" 2 3



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
# 13 "../onewire/1WireMaxim.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/ds18x20.h" 1







# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 1 3
# 47 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 212 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 2 3
# 68 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 114 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 128 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 151 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 183 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 216 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 250 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 262 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 274 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 286 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 298 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 346 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 372 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 417 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 462 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 505 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 547 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 579 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 638 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 655 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 9 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/ds18x20.h" 2
# 100 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/ds18x20.h"
extern void send_power_10mikroS(void);




extern uint8_t DS18X20_find_sensor(uint8_t *diff,
 uint8_t id[]);
extern uint8_t DS18X20_find_sensor_n(uint8_t *diff,
 uint8_t id[]);
extern uint8_t DS18X20_get_power_status(uint8_t id[]);
extern uint8_t DS18X20_start_meas( uint8_t with_external,
 uint8_t id[]);


extern uint8_t DS18X20_conversion_in_progress(void);



extern uint8_t DS18X20_read_decicelsius( uint8_t id[],
 int16_t *decicelsius );
extern uint8_t DS18X20_read_decicelsius_single( uint8_t familycode,
 int16_t *decicelsius );
extern uint8_t DS18X20_format_from_decicelsius( int16_t decicelsius,
 char s[], uint8_t n);
# 14 "../onewire/1WireMaxim.c" 2
# 42 "../onewire/1WireMaxim.c"
uint8_t OWReset();
uint8_t OWFirst();
uint8_t OWNext();
uint8_t OWVerify();

void OWWriteByte(unsigned char byte_value);
void OWWriteBit(unsigned char bit_value);
unsigned char OWReadBit();
uint8_t OWSearch();
unsigned char docrc8(unsigned char value);


unsigned char ROM_NO[8];
uint8_t LastDiscrepancy;
uint8_t LastFamilyDiscrepancy;
uint8_t LastDeviceFlag;
unsigned char crc8m;






uint8_t OWFirst()
{

   LastDiscrepancy = 0;
   LastDeviceFlag = 0;
   LastFamilyDiscrepancy = 0;

   return OWSearch();
}

void ResetDiscrepancy()
{

   LastDiscrepancy = 0;
   LastDeviceFlag = 0;
   LastFamilyDiscrepancy = 0;

}





uint8_t OWNext()
{

   return OWSearch();
}







uint8_t OWSearch()
{
   uint8_t id_bit_number;
   uint8_t last_zero, rom_byte_number, search_result;
   uint8_t id_bit, cmp_id_bit;
   unsigned char rom_byte_mask, search_direction;


   id_bit_number = 1;
   last_zero = 0;
   rom_byte_number = 0;
   rom_byte_mask = 1;
   search_result = 0;
   crc8m = 0;


   if (!LastDeviceFlag)
   {

      if (!OWReset())
      {

         LastDiscrepancy = 0;
         LastDeviceFlag = 0;
         LastFamilyDiscrepancy = 0;
         return 0;
      }


      OWWriteByte(0xF0);


      do
      {

         id_bit = OWReadBit();
         cmp_id_bit = OWReadBit();


         if ((id_bit == 1) && (cmp_id_bit == 1))
            break;
         else
         {

            if (id_bit != cmp_id_bit)
               search_direction = id_bit;
            else
            {


               if (id_bit_number < LastDiscrepancy)
                  search_direction = ((ROM_NO[rom_byte_number] & rom_byte_mask) > 0);
               else

                  search_direction = (id_bit_number == LastDiscrepancy);


               if (search_direction == 0)
               {
                  last_zero = id_bit_number;


                  if (last_zero < 9)
                     LastFamilyDiscrepancy = last_zero;
               }
            }



            if (search_direction == 1)
              ROM_NO[rom_byte_number] |= rom_byte_mask;
            else
              ROM_NO[rom_byte_number] &= ~rom_byte_mask;


            OWWriteBit(search_direction);



            id_bit_number++;
            rom_byte_mask <<= 1;


            if (rom_byte_mask == 0)
            {
                docrc8(ROM_NO[rom_byte_number]);
                rom_byte_number++;
                rom_byte_mask = 1;
            }
         }
      }
      while(rom_byte_number < 8);


      if (!((id_bit_number < 65) || (crc8m != 0)))
      {

         LastDiscrepancy = last_zero;


         if (LastDiscrepancy == 0)
            LastDeviceFlag = 1;

         search_result = 1;
      }
   }


   if (!search_result || !ROM_NO[0])
   {
      LastDiscrepancy = 0;
      LastDeviceFlag = 0;
      LastFamilyDiscrepancy = 0;
      search_result = 0;
   }

   return search_result;
}






uint8_t OWVerify()
{
   unsigned char rom_backup[8];
   uint8_t i,rslt,ld_backup,ldf_backup,lfd_backup;


   for (i = 0; i < 8; i++)
      rom_backup[i] = ROM_NO[i];
   ld_backup = LastDiscrepancy;
   ldf_backup = LastDeviceFlag;
   lfd_backup = LastFamilyDiscrepancy;


   LastDiscrepancy = 64;
   LastDeviceFlag = 0;

   if (OWSearch())
   {

      rslt = 1;
      for (i = 0; i < 8; i++)
      {
         if (rom_backup[i] != ROM_NO[i])
         {
            rslt = 0;
            break;
         }
      }
   }
   else
     rslt = 0;


   for (i = 0; i < 8; i++)
      ROM_NO[i] = rom_backup[i];
   LastDiscrepancy = ld_backup;
   LastDeviceFlag = ldf_backup;
   LastFamilyDiscrepancy = lfd_backup;


   return rslt;
}
# 276 "../onewire/1WireMaxim.c"
uint8_t OWReset()
{

        uint8_t r;
        uint8_t retries = 125;

        __asm__ __volatile__ ("cli" ::: "memory");
  ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );
        __asm__ __volatile__ ("sei" ::: "memory");

        do {
                if (--retries == 0) return 0;
     _delay_us(2);

  } while ( !( *OW_IN & OW_PIN_MASK ));

        __asm__ __volatile__ ("cli" ::: "memory");
  ( *OW_OUT &= (uint8_t) ~OW_PIN_MASK );
  ( *OW_DDR |= (uint8_t) OW_PIN_MASK );
        __asm__ __volatile__ ("sei" ::: "memory");
  _delay_us(480);
        __asm__ __volatile__ ("cli" ::: "memory");
  ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );
  _delay_us(70);
  r = !( *OW_IN & OW_PIN_MASK );
        __asm__ __volatile__ ("sei" ::: "memory");
  _delay_us(410);
        return r;

}




void OWWriteByte(unsigned char v)
{
# 321 "../onewire/1WireMaxim.c"
 uint8_t power;
    uint8_t bitMask;

 power = 1;


    for (bitMask = 0x01; bitMask; bitMask <<= 1) {
        OWWriteBit( (bitMask & v)?1:0);
    }
    if ( !power) {
        __asm__ __volatile__ ("cli" ::: "memory");
  ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );
  ( *OW_OUT &= (uint8_t) ~OW_PIN_MASK );
        __asm__ __volatile__ ("sei" ::: "memory");
    }

}




void OWWriteBit(unsigned char v)
{


        __asm__ __volatile__ ("cli" ::: "memory");

  ( *OW_OUT &= (uint8_t) ~OW_PIN_MASK );
  ( *OW_DDR |= (uint8_t) OW_PIN_MASK );

 if (v & 1) {
  _delay_us(10);
  ( *OW_OUT |= (uint8_t) OW_PIN_MASK );
        __asm__ __volatile__ ("sei" ::: "memory");
  _delay_us(55);
 } else {
  _delay_us(65);
  ( *OW_OUT |= (uint8_t) OW_PIN_MASK );
        __asm__ __volatile__ ("sei" ::: "memory");
  _delay_us(5);
 }



}






unsigned char OWReadBit()
{



 uint8_t r;
        __asm__ __volatile__ ("cli" ::: "memory");
        ( *OW_OUT &= (uint8_t) ~OW_PIN_MASK );
  ( *OW_DDR |= (uint8_t) OW_PIN_MASK );
  _delay_us(2);
  ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK );
  _delay_us(10);
  r = (( *OW_IN & (OW_PIN_MASK)) == (uint8_t) OW_PIN_MASK);
  __asm__ __volatile__ ("sei" ::: "memory");
  _delay_us(53);
        return r;


}

void OWMatchRom(unsigned char * romValue)
{
    unsigned char bytesLeft = 8;


    OWWriteByte(0x55);


    while (bytesLeft > 0)
    {

     OWWriteByte(*romValue++);
        bytesLeft--;
    }
}



static unsigned char dscrc_table[] = {
        0, 94,188,226, 97, 63,221,131,194,156,126, 32,163,253, 31, 65,
      157,195, 33,127,252,162, 64, 30, 95, 1,227,189, 62, 96,130,220,
       35,125,159,193, 66, 28,254,160,225,191, 93, 3,128,222, 60, 98,
      190,224, 2, 92,223,129, 99, 61,124, 34,192,158, 29, 67,161,255,
       70, 24,250,164, 39,121,155,197,132,218, 56,102,229,187, 89, 7,
      219,133,103, 57,186,228, 6, 88, 25, 71,165,251,120, 38,196,154,
      101, 59,217,135, 4, 90,184,230,167,249, 27, 69,198,152,122, 36,
      248,166, 68, 26,153,199, 37,123, 58,100,134,216, 91, 5,231,185,
      140,210, 48,110,237,179, 81, 15, 78, 16,242,172, 47,113,147,205,
       17, 79,173,243,112, 46,204,146,211,141,111, 49,178,236, 14, 80,
      175,241, 19, 77,206,144,114, 44,109, 51,209,143, 12, 82,176,238,
       50,108,142,208, 83, 13,239,177,240,174, 76, 18,145,207, 45,115,
      202,148,118, 40,171,245, 23, 73, 8, 86,180,234,105, 55,213,139,
       87, 9,235,181, 54,104,138,212,149,203, 41,119,244,170, 72, 22,
      233,183, 85, 11,136,214, 52,106, 43,117,151,201, 74, 20,246,168,
      116, 42,200,150, 21, 75,169,247,182,232, 10, 84,215,137,107, 53};






unsigned char docrc8(unsigned char value)
{
   crc8m = dscrc_table[crc8m ^ value];
   return crc8m;
}
