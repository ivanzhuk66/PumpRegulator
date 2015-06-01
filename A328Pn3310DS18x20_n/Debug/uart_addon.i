# 1 "../uart/uart_addon.c"
# 1 "/home/izhuk/workspace/A328Pn3310DS18x20_n/Debug//"
# 1 "<command-line>"
# 1 "../uart/uart_addon.c"
# 14 "../uart/uart_addon.c"
# 1 "/AtmelAvrToolchain/avr/include/stdlib.h" 1 3
# 47 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
# 1 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 212 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/AtmelAvrToolchain/avr/include/stdlib.h" 2 3
# 68 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 114 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 128 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 151 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 183 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 216 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 250 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 262 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 274 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 286 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 298 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 346 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 372 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 417 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
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
# 462 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
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
# 505 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
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
# 547 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
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
# 579 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 638 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 655 "/AtmelAvrToolchain/avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 15 "../uart/uart_addon.c" 2

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
# 17 "../uart/uart_addon.c" 2
# 1 "../uart/uart.h" 1
# 142 "../uart/uart.h"
extern void uart_init(unsigned int baudrate);
# 170 "../uart/uart.h"
extern int uart_getc(void);







extern void uart_putc(unsigned char data);
# 191 "../uart/uart.h"
extern void uart_puts(const char *s );
# 205 "../uart/uart.h"
extern void uart_puts_p(const char *s );
# 217 "../uart/uart.h"
extern int uart_available(void);






extern void uart_flush(void);



extern void uart1_init(unsigned int baudrate);

extern unsigned int uart1_getc(void);

extern void uart1_putc(unsigned char data);

extern void uart1_puts(const char *s );

extern void uart1_puts_p(const char *s );



extern int uart1_available(void);

extern void uart1_flush(void);
# 18 "../uart/uart_addon.c" 2
# 26 "../uart/uart_addon.c"
void uart_put_int( const int val )
{
 char buffer[10];
 uart_puts( itoa( val, buffer, 10 ) );
}
