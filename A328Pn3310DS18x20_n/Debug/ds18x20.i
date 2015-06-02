# 1 "../ds18x20/ds18x20.c"
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug//"
# 1 "<command-line>"
# 1 "../ds18x20/ds18x20.c"
# 24 "../ds18x20/ds18x20.c"
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
# 25 "../ds18x20/ds18x20.c" 2
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
# 26 "../ds18x20/ds18x20.c" 2

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
# 28 "../ds18x20/ds18x20.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h" 1 3
# 87 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 88 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h" 2 3
# 1137 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static inline size_t strlen_P(const char * s);
static inline size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 29 "../ds18x20/ds18x20.c" 2

# 1 "../ds18x20/ds18x20.h" 1
# 14 "../ds18x20/ds18x20.h"
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/interrupt.h" 1 3
# 15 "../ds18x20/ds18x20.h" 2
# 100 "../ds18x20/ds18x20.h"
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
# 31 "../ds18x20/ds18x20.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire/onewire.h" 1
# 76 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire/onewire.h"
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
# 103 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire/onewire.h"
extern uint8_t OW_PIN;
extern uint8_t OW_PIN_MASK;
extern volatile uint8_t* OW_IN;
extern volatile uint8_t* OW_OUT;
extern volatile uint8_t* OW_DDR;
# 118 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire/onewire.h"
extern void ow_set_bus( volatile uint8_t* in,
 volatile uint8_t* out,
 volatile uint8_t* ddr,
 uint8_t pin );
# 32 "../ds18x20/ds18x20.c" 2
# 1 "../ds18x20/crc8.h" 1
# 10 "../ds18x20/crc8.h"
uint8_t crc8( uint8_t* data, uint16_t number_of_bytes_in_data );
# 33 "../ds18x20/ds18x20.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/debug.h" 1
# 34 "../ds18x20/ds18x20.c" 2



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
# 38 "../ds18x20/ds18x20.c" 2






void send_power_10ms() {

 ( (*(volatile uint8_t *)((0x0A) + 0x20)) |= (1 << 5) );
 (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);



 _delay_ms(10 -1);

 (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);
}




extern int OWFirst();
extern int OWNext();
extern uint8_t OWReset();
extern uint8_t OWSearch();
extern uint8_t OWVerify();
extern void ResetDiscrepancy();
extern unsigned char ROM_NO[8];
# 373 "../ds18x20/ds18x20.c"
uint8_t DS18X20_get_power_status( uint8_t id[] )
{
 uint8_t pstat;


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);

 __asm__ __volatile__ ("cli" ::: "memory");

 OWReset();




 ow_command( 0xB4, id );
 pstat = ow_bit_io( 1 );

 OWReset();




 __asm__ __volatile__ ("sei" ::: "memory");


    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);


 return ( pstat ) ? 0x01 : 0x00;
}



uint8_t DS18X20_start_meas( uint8_t with_power_extern, uint8_t id[])
{
 uint8_t ret;


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);

 __asm__ __volatile__ ("cli" ::: "memory");

 OWReset();




 __asm__ __volatile__ ("sei" ::: "memory");
 if( ow_input_pin_state() ) {
  if ( with_power_extern != 0x01 ) {
   __asm__ __volatile__ ("cli" ::: "memory");
   ow_command_with_parasite_enable( 0x44, id );
   __asm__ __volatile__ ("sei" ::: "memory");

  } else {
   __asm__ __volatile__ ("cli" ::: "memory");
   ow_command( 0x44, id );
   __asm__ __volatile__ ("sei" ::: "memory");
  }

  ret = 0x00;
 }
 else {



  ret = 0x02;
 }


       (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);


 return ret;
}



uint8_t DS18X20_conversion_in_progress(void)
{
   uint8_t ibit;


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);

 ibit = ow_bit_io( 1 ) ? 0x00 : 0x01;


        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);

   return ibit;
}

static uint8_t read_scratchpad( uint8_t id[], uint8_t sp[], uint8_t n )
{
 uint8_t i;
 uint8_t ret;


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);

 ow_command( 0xBE, id );

 for ( i = 0; i < n; i++ ) {
  sp[i] = ow_byte_rd();
 }
 if ( crc8( &sp[0], 9 ) ) {
  ret = 0x03;
 } else {
  ret = 0x00;
 }


        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);


 return ret;
}





static int16_t DS18X20_raw_to_decicelsius( uint8_t familycode, uint8_t sp[] )
{
 uint16_t measure;
 uint8_t negative;
 int16_t decicelsius;
 uint16_t fract;

 measure = sp[0] | (sp[1] << 8);



 if( familycode == 0x10 ) {

  measure &= (uint16_t)0xfffe;
  measure <<= 3;
  measure += (16 - sp[6]) - 4;
 }


 if ( measure & 0x8000 ) {
  negative = 1;
  measure ^= 0xffff;
  measure++;
 }
 else {
  negative = 0;
 }


 if ( familycode == 0x28 || familycode == 0x22 ) {
  switch( sp[4] & ((1<<6)|(1<<5)) ) {
  case 0:
   measure &= ~(((1<<0)|(1<<1)|(1<<2)));
   break;
  case (1<<5):
   measure &= ~(((1<<0)|(1<<1)));
   break;
  case (1<<6):
   measure &= ~(((1<<0)));
   break;
  default:

   break;
  }
 }

 decicelsius = (measure >> 4);
 decicelsius *= 10;



 fract = ( measure & 0x000F ) * 640;
 if ( !negative ) {
  fract += 512;
 }
 fract /= 1024;
 decicelsius += fract;

 if ( negative ) {
  decicelsius = -decicelsius;
 }

 if ( decicelsius < -550 || decicelsius > 1250 ) {
  return 2000;
 } else {
  return decicelsius;
 }
}





uint8_t DS18X20_format_from_decicelsius( int16_t decicelsius, char str[], uint8_t n)
{
 uint8_t sign = 0;
 char temp[7];
 int8_t temp_loc = 0;
 uint8_t str_loc = 0;
 div_t dt;
 uint8_t ret;


 if ( n >= (6+1) && decicelsius > -1000 && decicelsius < 10000 ) {

  if ( decicelsius < 0) {
   sign = 1;
   decicelsius = -decicelsius;
  }


  do {
   dt = div(decicelsius,10);
   temp[temp_loc++] = dt.rem + '0';
   decicelsius = dt.quot;
  } while ( decicelsius > 0 );

  if ( sign ) {
   temp[temp_loc] = '-';
  } else {

   temp[temp_loc] = '+';
  }


  while ( temp_loc >=0 ) {
   str[str_loc++] = temp[(uint8_t)temp_loc--];
   if ( temp_loc == 0 ) {
    str[str_loc++] = '.';
   }
  }
  str[str_loc] = '\0';

  ret = 0x00;
 } else {
  ret = 0x01;
 }

 return ret;
}




uint8_t DS18X20_read_decicelsius( uint8_t id[], int16_t *decicelsius )
{
 uint8_t sp[9];
 uint8_t ret;


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);


 OWReset();





 ret = read_scratchpad( id, sp, 9 );
 if ( ret == 0x00 ) {
  *decicelsius = DS18X20_raw_to_decicelsius( id[0], sp );
 }


        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);

 return ret;
}




uint8_t DS18X20_read_decicelsius_single( uint8_t familycode, int16_t *decicelsius )
{
 uint8_t sp[9];
 uint8_t ret;

 ret = read_scratchpad( ((void *)0), sp, 9 );
 if ( ret == 0x00 ) {
  *decicelsius = DS18X20_raw_to_decicelsius( familycode, sp );
 }
 return ret;
}
