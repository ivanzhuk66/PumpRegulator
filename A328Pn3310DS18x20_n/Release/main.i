# 1 "../main.c"
# 1 "<command-line>"
# 1 "../main.c"






# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/version.h" 1 3
# 8 "../main.c" 2





# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 1 3
# 99 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/sfr_defs.h" 1 3
# 126 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/sfr_defs.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 1 3
# 37 "/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 3
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
# 38 "/avr8-gnu-toolchain-linux_x86/avr/include/inttypes.h" 2 3
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
# 627 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/io.h" 3
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
# 14 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h" 1 3
# 87 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 212 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef unsigned int size_t;
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
# 15 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/interrupt.h" 1 3
# 16 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 1 3
# 570 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 147 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 324 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef int wchar_t;
# 571 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 2 3
# 657 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h" 3
uint8_t __eerd_byte_m328p (const uint8_t *__p) __attribute__((__pure__));




uint16_t __eerd_word_m328p (const uint16_t *__p) __attribute__((__pure__));




uint32_t __eerd_dword_m328p (const uint32_t *__p) __attribute__((__pure__));




float __eerd_float_m328p (const float *__p) __attribute__((__pure__));





void __eerd_block_m328p (void *__dst, const void *__src, size_t __n);





void __eewr_byte_m328p (uint8_t *__p, uint8_t __value);




void __eewr_word_m328p (uint16_t *__p, uint16_t __value);




void __eewr_dword_m328p (uint32_t *__p, uint32_t __value);




void __eewr_float_m328p (float *__p, float __value);





void __eewr_block_m328p (const void *__src, void *__dst, size_t __n);





void __eeupd_byte_m328p (uint8_t *__p, uint8_t __value);




void __eeupd_word_m328p (uint16_t *__p, uint16_t __value);




void __eeupd_dword_m328p (uint32_t *__p, uint32_t __value);




void __eeupd_float_m328p (float *__p, float __value);





void __eeupd_block_m328p (const void *__src, void *__dst, size_t __n);
# 17 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/sleep.h" 1 3
# 18 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/wdt.h" 1 3
# 19 "../main.c" 2

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
# 21 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/string.h" 1 3
# 45 "/avr8-gnu-toolchain-linux_x86/avr/include/string.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 46 "/avr8-gnu-toolchain-linux_x86/avr/include/string.h" 2 3
# 111 "/avr8-gnu-toolchain-linux_x86/avr/include/string.h" 3
extern int ffs (int __val) __attribute__((__const__));
extern int ffsl (long __val) __attribute__((__const__));
extern int ffsll (long long __val) __attribute__((__const__));
extern void *memccpy(void *, const void *, int, size_t);
extern void *memchr(const void *, int, size_t) __attribute__((__pure__));
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memcpy(void *, const void *, size_t);
extern void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern void *memmove(void *, const void *, size_t);
extern void *memrchr(const void *, int, size_t) __attribute__((__pure__));
extern void *memset(void *, int, size_t);
extern char *strcat(char *, const char *);
extern char *strchr(const char *, int) __attribute__((__pure__));
extern char *strchrnul(const char *, int) __attribute__((__pure__));
extern int strcmp(const char *, const char *) __attribute__((__pure__));
extern char *strcpy(char *, const char *);
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
extern char *strdup(const char *s1);
extern size_t strlcat(char *, const char *, size_t);
extern size_t strlcpy(char *, const char *, size_t);
extern size_t strlen(const char *) __attribute__((__pure__));
extern char *strlwr(char *);
extern char *strncat(char *, const char *, size_t);
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncpy(char *, const char *, size_t);
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
extern char *strrchr(const char *, int) __attribute__((__pure__));
extern char *strrev(char *);
extern char *strsep(char **, const char *);
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
extern char *strstr(const char *, const char *) __attribute__((__pure__));
extern char *strtok(char *, const char *);
extern char *strtok_r(char *, const char *, char **);
extern char *strupr(char *);
# 22 "../main.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 1 3
# 45 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdarg.h" 1 3 4
# 40 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 46 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 2 3



# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 50 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 2 3
# 242 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
struct __file {
 char *buf;
 unsigned char unget;
 uint8_t flags;
# 261 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
 int size;
 int len;
 int (*put)(char, struct __file *);
 int (*get)(struct __file *);
 void *udata;
};
# 405 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern struct __file *__iob[];
# 417 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern struct __file *fdevopen(int (*__put)(char, struct __file*), int (*__get)(struct __file*));
# 434 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int fclose(struct __file *__stream);
# 608 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int vfprintf(struct __file *__stream, const char *__fmt, va_list __ap);





extern int vfprintf_P(struct __file *__stream, const char *__fmt, va_list __ap);






extern int fputc(int __c, struct __file *__stream);




extern int putc(int __c, struct __file *__stream);


extern int putchar(int __c);
# 649 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int printf(const char *__fmt, ...);





extern int printf_P(const char *__fmt, ...);







extern int vprintf(const char *__fmt, va_list __ap);





extern int sprintf(char *__s, const char *__fmt, ...);





extern int sprintf_P(char *__s, const char *__fmt, ...);
# 685 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int snprintf(char *__s, size_t __n, const char *__fmt, ...);





extern int snprintf_P(char *__s, size_t __n, const char *__fmt, ...);





extern int vsprintf(char *__s, const char *__fmt, va_list ap);





extern int vsprintf_P(char *__s, const char *__fmt, va_list ap);
# 713 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int vsnprintf(char *__s, size_t __n, const char *__fmt, va_list ap);





extern int vsnprintf_P(char *__s, size_t __n, const char *__fmt, va_list ap);




extern int fprintf(struct __file *__stream, const char *__fmt, ...);





extern int fprintf_P(struct __file *__stream, const char *__fmt, ...);






extern int fputs(const char *__str, struct __file *__stream);




extern int fputs_P(const char *__str, struct __file *__stream);





extern int puts(const char *__str);




extern int puts_P(const char *__str);
# 762 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern size_t fwrite(const void *__ptr, size_t __size, size_t __nmemb,
         struct __file *__stream);







extern int fgetc(struct __file *__stream);




extern int getc(struct __file *__stream);


extern int getchar(void);
# 810 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int ungetc(int __c, struct __file *__stream);
# 822 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern char *fgets(char *__str, int __size, struct __file *__stream);






extern char *gets(char *__str);
# 840 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern size_t fread(void *__ptr, size_t __size, size_t __nmemb,
        struct __file *__stream);




extern void clearerr(struct __file *__stream);
# 857 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int feof(struct __file *__stream);
# 868 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
extern int ferror(struct __file *__stream);






extern int vfscanf(struct __file *__stream, const char *__fmt, va_list __ap);




extern int vfscanf_P(struct __file *__stream, const char *__fmt, va_list __ap);







extern int fscanf(struct __file *__stream, const char *__fmt, ...);




extern int fscanf_P(struct __file *__stream, const char *__fmt, ...);






extern int scanf(const char *__fmt, ...);




extern int scanf_P(const char *__fmt, ...);







extern int vscanf(const char *__fmt, va_list __ap);







extern int sscanf(const char *__buf, const char *__fmt, ...);




extern int sscanf_P(const char *__buf, const char *__fmt, ...);
# 938 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
static __inline__ int fflush(struct __file *stream __attribute__((unused)))
{
 return 0;
}
# 23 "../main.c" 2


# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h" 1
# 142 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h"
extern void uart_init(unsigned int baudrate);
# 170 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h"
extern int uart_getc(void);







extern void uart_putc(unsigned char data);
# 191 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h"
extern void uart_puts(const char *s );
# 205 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h"
extern void uart_puts_p(const char *s );
# 217 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h"
extern int uart_available(void);






extern void uart_flush(void);



extern void uart1_init(unsigned int baudrate);

extern unsigned int uart1_getc(void);

extern void uart1_putc(unsigned char data);

extern void uart1_puts(const char *s );

extern void uart1_puts_p(const char *s );



extern int uart1_available(void);

extern void uart1_flush(void);
# 26 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h" 1
# 37 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_put_longint( long int i );
# 51 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_put_ulongint( unsigned long int i );
# 65 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_put_int( int i );
# 79 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_puthex_nibble( const unsigned char b );
# 92 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_puthex_byte( const unsigned char b );
# 101 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_puthex_long( unsigned long l );
# 110 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart_addon.h"
extern void uart_putbin_byte( const unsigned char b );
# 27 "../main.c" 2
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
# 28 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/ds18x20.h" 1







# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 1 3
# 47 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
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
# 29 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd/lcdconf.h" 1
# 21 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd/lcdconf.h"
typedef unsigned char byte;
# 57 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd/lcdconf.h"
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814.h" 1
# 28 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814.h"
void LCD_send_bit(uint8_t data);
void LCD_send_byte(uint8_t data, uint8_t dorc);
void LCD_send_command(uint8_t data);
void LCD_send_data(uint8_t data);
void LCD_initialize();
void LCD_initialize2();
void LCD_Update();
void LCD_Clear_Screen(void);
# 58 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd/lcdconf.h" 2
# 101 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd/lcdconf.h"
void LCD_Clear();
void LCD_drawPixel (int16_t x, int16_t y, uint16_t color);
void LCD_UpdateBox (int xmin, int ymin, int xmax, int ymax);
void LCD_Update();
void LCD_drawChar(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size);

void LCD_drawLine(int16_t x0, int16_t y0,int16_t x1, int16_t y1, uint16_t color);
void LCD_fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void LCD_drawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
void LCD_setTextColor(uint16_t c);
void LCD_setTextColor2(uint16_t c, uint16_t b);
void LCD_drawBitmap(int16_t x, int16_t y, const uint8_t *bitmap, int16_t w, int16_t h, uint16_t color);
void LCD_setTextSize(uint8_t s);
void LCD_setCursor(int16_t x, int16_t y);
void LCD_drawRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void LCD_drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void LCD_drawCircleHelper( int16_t x0, int16_t y0, int16_t r, uint8_t cornername, uint16_t color);
void LCD_fillCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void LCD_fillCircleHelper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername, int16_t delta, uint16_t color);
void LCD_fillScreen(uint16_t color);
void LCD_drawRoundRect(int16_t x, int16_t y, int16_t w, int16_t h, int16_t r, uint16_t color);
void LCD_fillRoundRect(int16_t x, int16_t y, int16_t w, int16_t h, int16_t r, uint16_t color);
void LCD_set_position2(uint8_t xpos, uint8_t ypos);
uint8_t LCD_write2(uint8_t c);
void LCD_draw_Fstring2(const char* text);
void LCD_draw_string2(char* text);
void LCD_draw_string3(const char* text);

uint8_t DS18X20_format_from_decicelsius( int16_t decicelsius,
 char s[], uint8_t n);

void NoneFunc(void);
void LcdPutInt(int i);
void LcdNextStr(void);
void LcdFirstLine(void);
void LcdPutTemp(int16_t decicelsius);
void ReturnXPos(uint8_t ps);
int LcdWrite ( char c, struct __file *stream );
# 30 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/keypad/adc.h" 1
# 31 "../main.c" 2
# 1 "../debug.h" 1
# 32 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/crc8.h" 1
# 10 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/crc8.h"
uint8_t crc8( uint8_t* data, uint16_t number_of_bytes_in_data );
# 33 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer/timer.h" 1
# 11 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer/timer.h"
typedef struct{
unsigned char second;
unsigned char minute;
unsigned char hour;
unsigned char date;
unsigned char month;
unsigned int year;
            }time;

void WDT_setup(void);
void WDT_off(void);
void init_clock(void);
char not_leap(void);
# 34 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/extint/extint.h" 1
# 28 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/extint/extint.h"
void ExtInt0Enable(void);

void ExtInt0Disable(void);

void ExtInt1Enable(void);

void ExtInt1Disable(void);
# 35 "../main.c" 2
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/gsm-sms/sms.h" 1
# 41 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/gsm-sms/sms.h"
typedef struct struct_sms{
 char body[160];
 char number[20];
 char date[25];
 char stat;
}SMS;


typedef struct struct_time{
 unsigned char hour, minute, second;
 unsigned char year, month, day;
}GSM_RTC;







void gsm_init( void(*sendByte_func)(unsigned char c),int(*getByte_func)(void) );

void gsm_debug( char *command, void(*sendByte_func)(unsigned char c) );


int gsm_command(char *command );



void gsm_text_sms(void);


int gsm_send_sms( char *number, char *text, int try_num );


int gsm_read_sms( int index, SMS *sms );



int gsm_check_new_sms( SMS *sms );


int gsm_del_sms( int index );


int gsm_SIM_mem_used( int *total_mem );


int gsm_signal_quality(void);





int gsm_set_rtc( char *time );



int gsm_get_rtc_str( char *time );


int gsm_get_rtc( GSM_RTC *rtc );


int gsm_str2rtc( char *time_str, GSM_RTC *time );




int gsm_usd_command( char *cmd, char *response );

int gsm_read_token( char *src, char *dest, char lenght, char nToken, char *delimiter );

void gsm_remove_char( char *dest, char *src, char c );


int gsm_readline( char *str, int lenght );


void gsm_flush_buffer( void );


void gsm_rprintf_init( void );


void gsm_dummy_print( char *str );
# 36 "../main.c" 2
# 1 "../main.h" 1
# 18 "../main.h"
extern int OWFirst();
extern int OWNext();
extern int OWReset();
extern uint8_t OWVerify();
extern void ResetDiscrepancy();
extern unsigned char ROM_NO[8];
static uint8_t search_sensors_n();




extern void InitAdc(uint8_t);
extern void InitAnalogComp(void);
extern uint8_t GetKeyCode(void);
extern void resetKbd(void);

extern uint8_t extstate;
extern uint8_t powergone;
extern time tAsync;
extern char wait_powergone;
extern uint8_t TimeKeyPressed;
extern unsigned x,y;

void DoWatchDog(void);
int8_t test_SN_sensors(void);
char checkPresenceSN(void);
void copyrSNsTogSNs(void);
void sleepPWS();
void sleepPWRDown();
void getSleep();
void ShutOffADC(void);
void LcdPowerGoneStr(void);
void manageTemperatureEvent(void);
uint8_t manage_new_sensors(char ch);
void DisplayTemperature(void);
int16_t getTemperature(uint8_t* sensorID);
char ValidSensorCode(uint8_t* sensorID);
void sms_noready_sens(uint8_t sensNumber);
void resetSensNumber(uint8_t sensNumber);
void sms_pumpStarted(void);
void sms_powerGone(void);

void ManageOutdoorTempEvent();
void TestNoReadySensors();
int8_t ClearEEPROMSensCodes();



enum { DISPLAY_TEMPERATURE, DISPLAY_MAINMENU, DISPLAY_KBD, ENTER_NEW_SENSOR };

enum {MMENU_SHOW,MSNs_SET,MVIEW_SNs,MASSIGN,MSETTEMP,MSET_TIME,MVIEW_TIME,MVIEWTEMPR,MTELPHONE_SET,CLRIDS_EEPROM,CLRIDS_EEPROM2,MEXIT};

enum {INDOOR, OUTDOOR, SUPPLY, RETURN, SN_EXIT, ENTER_SN};

enum {INDOORTEMPMIN,INDOORTEMPMAX, OUTDOORTEMPMIN,OUTDOORTEMPMAX,
  SUPPLYTEMPMIN,SUPPLYTEMPMAX,DIFFTEMPMIN,DIFFTEMPMAX,
  TEMP_EXIT, ENTER_TEMP, TOEEPROM, SAVE_EEPROM};
enum {MSET_HOUR,MSET_MINUTE,MSET_SECOND,ENTER_NUMB,MTIME_EXIT};
enum {REORDER_NWSENS,REORDER_NWSENS2,ASSIGN_NEWSENS,ASSIGN_NEWSENS2,GETKEY_NWSENS,ASSIGN_TOEEPROM,EXIT_NWSENS};
enum {TELPRNSTR, TELENTERNUM, TELTOEEPROM, EXITTELSET};
# 37 "../main.c" 2





__fuse_t __fuse __attribute__((__used__, __section__ (".fuse"))) =
{

.low = ((unsigned char)~(1 << (0)) & (unsigned char)~(1 << (2)) & (unsigned char)~(1 << (3)) & (unsigned char)~(1 << (4))),


.high = ((unsigned char)~(1 << (1)) & (unsigned char)~(1 << (5)) & (unsigned char)~(1 << (1)) & (unsigned char)~(1 << (2)) ),

.extended = (0xFF),
};


char ReadyWATCHDOG;
char WATCHDOG_STATE = 0;
unsigned char TLastWatchDog = 0;
int8_t rTempInDoorMin;
int8_t rTempInDoorMax;
int8_t rTempOutDoorMin;
int8_t rTempOutDoorMax;
int8_t rTempSupplyMin;
int8_t rTempSupplyMax;
int8_t rTempDiffSupplyReturnMin;
int8_t rTempDiffSupplyReturnMax;
int8_t nSensors;

int8_t temper[4];

static uint8_t sn_presence[4] = {0,0,0,0};
static uint8_t sn_noready_counter[4] = {0,0,0,0};
static uint8_t nwSen_Phase;
static uint8_t btest_new_sensors = 0;
static uint8_t noready_sens[4] = {0,0,0,0};
static int8_t kg;
static uint8_t oldDisplaySens;

static struct __file lcd_str = { .put = LcdWrite, .get = ((void *)0), .flags = 0x0002, .udata = 0, };
char wbuffer[30 + 1];
static uint8_t gSensorIDs[4][8];
uint8_t* rSensorIDs;
static int8_t *TempAct;


int8_t __attribute__((section(".eeprom"))) TempInDoorMin = 18;
int8_t __attribute__((section(".eeprom"))) TempInDoorMax = 25;
int8_t __attribute__((section(".eeprom"))) TempOutDoorMin = -5;
int8_t __attribute__((section(".eeprom"))) TempOutDoorMax = -35;
int8_t __attribute__((section(".eeprom"))) TempSupplyMin = 50;
int8_t __attribute__((section(".eeprom"))) TempSupplyMax = 80;
int8_t __attribute__((section(".eeprom"))) TempDiffSupplyReturnMin = 10;
int8_t __attribute__((section(".eeprom"))) TempDiffSupplyReturnMax = 20;
uint8_t __attribute__((section(".eeprom"))) eSensorIDs[4][8] =
  {
   {0x10,0x44,0x40,0x30,0xc5,0x00,0x00,0x95},
   {0x28,0x22,0x20,0x30,0xc5,0x00,0x00,0x10},
   {0x28,0x11,0x10,0x30,0xc5,0x00,0x00,0x20},
   {0x28,0x33,0x30,0x30,0x15,0x00,0x00,0x19}
  };
uint8_t __attribute__((section(".eeprom"))) etelNumber[14 + 1] = "111111111111" ;


__attribute__((progmem)) static const char
  okStr[] = "OK",
  helloStr1[]="PUMP",
  helloStr2[]="REGULATOR",
  exitStr[]="#-EXIT",
  nextStr[]="*-NEXT",
  snStr[] = "SN",
  indoorStr[] = "INDOOR",
  outdoorStr[] = "OUTDOOR",
  supplyStr[] = "SUPPLY",
  returnStr[] = "RETURN",
  nsupdownStr[] = "Ns-UPSIDE-DOWN",
  checksumStr[] = "CHECKSUM",
  setStr[] = "SET",
  viewStr[] = "VIEW",
  assignStr[] = "ASSIGNs",
  minStr[]="MIN",
  maxStr[]="MAX",
  tempStr[] = "TEMP",
  diffStr[] = "DIFF",
  toeepromStr[] = "TO EEPROM",
  saveStr[] = "SAVE",
  timeStr[] = "TIME",
  minuteStr[] = "MINUTE",
  hourStr[] = "HOUR",
  secondStr[] = "SECOND",
  alarmStr[] = "ALARM",
  sensorStr[] = "Sensor",
  absenceStr[] = "ABSENCE",
  missingStr[] = "MISSING",
  temperStr[] = "T-EDGES",
  Sensorsfound[] = " Sensorsfound",
  DS18S20[] = "-DS18S20",
  DS18B20[] = "-DS18B20",
  DS1822[] = "-DS1822",
  PAR[] = "-PAR",
  crcErrStr[] = "CRC Err",
  EXT[] = "-EXT",
  telStr[] = "PHONE",
  clearStr[] = "Clear",
  errStr[] = "Err",
  startRegulatorStr[] = "00-Regulator Started!",
  startPowerGoneStr[] = "01-Power Gone!",
  notReadyStr[] = "02-NotReady";

static uint8_t MainLoopPhase, LastPhase, MenuPhase;
static uint8_t fl;
static char mausure_temperature_ok = 1;
char telNumber[14 + 1];
uint8_t temp_for_hour;
uint8_t PrefHeatting;

extern uint8_t CheckNoReadySNCounter;




uint8_t search_sensors_n()
{

 uint8_t nSenss;
 uint8_t rslt;






        (*(volatile uint8_t *)((0x0B) + 0x20)) &= (~(1 << 5)); _delay_loop_1(10);




 uint8_t k;
 k = 4;

 do {


    nSenss = 0;
    rslt = OWFirst();
    while (rslt)
    {





    memcpy(&gSensorIDs[nSenss],&ROM_NO[0],8);
    if(++nSenss >= 4 ) { k = 1; break;}

     rslt = OWNext();
    }

  k--;
 } while (k > 1);


       (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);

return nSenss;

}
# 261 "../main.c"
void LcdPutTemp(int16_t decicelsius)
{
 char s[10];
 DS18X20_format_from_decicelsius( decicelsius, s, 10 );
 LCD_draw_string3((const char*)(__extension__({static const char __c[] __attribute__((__progmem__)) = (" "); &__c[0];})));
 LCD_draw_string2(s);
 LCD_draw_string3((const char*)(__extension__({static const char __c[] __attribute__((__progmem__)) = ("C"); &__c[0];})));
}



int main( void )
{
 char ch;
 uint8_t i, k, ks, nSNpos, ActSN, n ;
 int8_t mtemp_minute;
 int8_t mtemp_hour;
 uint8_t ActSN_next, aSN_num;
 char wStr[5];
 int ki;
 byte gSensNumb[7 + 1];


  (__iob[1]) = &lcd_str;

 (*(volatile uint8_t *)((0x0A) + 0x20)) &= ~(1 << (*(volatile uint8_t *)((0x09) + 0x20)));
    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (*(volatile uint8_t *)((0x09) + 0x20)));


    ReadyWATCHDOG = 0;
    x = 0; y = 0;

    CheckNoReadySNCounter = 0;

    LCD_initialize2();

 if((*(volatile uint8_t *)((0x09) + 0x20)) & (1 << 3)){
  LcdPowerGoneStr();
  abort();
 }

 MainLoopPhase = DISPLAY_MAINMENU;
 LastPhase = MainLoopPhase;
 MenuPhase = MMENU_SHOW;

 if((rSensorIDs = (uint8_t *)malloc(4 * 8 +1)) != ((void *)0)) {
  __eerd_block_m328p((void *)rSensorIDs , (const void*)eSensorIDs ,4 * 8);
 } else abort();

 for ( i = 0; i < 4; i++ ) {
   sn_presence[i] = 0;
   temper[i] = 127;
 }

 rTempInDoorMin = (int8_t) __eerd_byte_m328p((uint8_t*) &TempInDoorMin);
 rTempInDoorMax = (int8_t) __eerd_byte_m328p((uint8_t*) &TempInDoorMax);
  rTempOutDoorMin = (int8_t) __eerd_byte_m328p((uint8_t*) &TempOutDoorMin);
  rTempOutDoorMax = (int8_t) __eerd_byte_m328p((uint8_t*) &TempOutDoorMax);
  rTempSupplyMin = (int8_t) __eerd_byte_m328p((uint8_t*) &TempSupplyMin);
  rTempSupplyMax = (int8_t) __eerd_byte_m328p((uint8_t*) &TempSupplyMax);
  rTempDiffSupplyReturnMin = (int8_t) __eerd_byte_m328p((uint8_t*) &TempDiffSupplyReturnMin);
  rTempDiffSupplyReturnMax = (int8_t) __eerd_byte_m328p((uint8_t*) &TempDiffSupplyReturnMax);

 __eerd_block_m328p((void *)telNumber , (const void*)etelNumber ,14);



 nSNpos = 0;
 n = 0;
 k = 0;
 fl = 0;
 ks = 0;
 ActSN = INDOOR;
 ActSN_next = OUTDOOR;
 aSN_num = 0;
 mtemp_minute = 127;
 mtemp_hour = 127;


 (*(volatile uint8_t *)(0x64)) |= (1<<7) | (1<<3) | (1<<5);


 (*(volatile uint8_t *)((0x07) + 0x20)) |= (1<<5)|(1<<4);
 (*(volatile uint8_t *)((0x07) + 0x20)) |= (1<<3);





 WDT_off();




        ( (*(volatile uint8_t *)((0x0A) + 0x20)) |= (1 << 5) );
        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 5);




        LCD_Clear();
        LCD_set_position2(5, 1);
        printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S"); &__c[0];})),helloStr1);
        LCD_set_position2(3, 2);
        printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S"); &__c[0];})),helloStr2);
        LCD_Update();
# 425 "../main.c"
 ow_set_bus(&(*(volatile uint8_t *)((0x09) + 0x20)),&(*(volatile uint8_t *)((0x0B) + 0x20)),&(*(volatile uint8_t *)((0x0A) + 0x20)),4);


 __asm__ __volatile__ ("sei" ::: "memory");
 if(!checkPresenceSN()){
  k = 3;
# 441 "../main.c"
  nSensors = search_sensors_n();

  while (nSensors != 4){
   _delay_ms(3);
   nSensors = search_sensors_n();
   if(!k--) break;
  }

  btest_new_sensors = 1;

 } else {
  copyrSNsTogSNs();
  nSensors = 4;
 }


 uart_init((((8000000UL)/(((9600))*16l)-1)));
# 512 "../main.c"
 InitAdc(7);
 InitAnalogComp();
 init_clock();

 LCD_Clear();


 LcdPutInt(nSensors);

 LCD_draw_string3((const char*)Sensorsfound);
 LCD_Update();





 if(nSensors == 4 ){
  if((ki = test_SN_sensors()) == 99){

 for ( i = 0; i < nSensors; i++ ) {
  LcdNextStr();
  LcdPutInt((int)i+1);
  if ( gSensorIDs[i][0] == 0x10 ) {
   LCD_draw_string3(DS18S20);

  } else if ( gSensorIDs[i][0] == 0x22 ) {
   LCD_draw_string3(DS1822);

  }
  else {
   LCD_draw_string3((const char*)DS18B20);

  }

  if ( DS18X20_get_power_status( &gSensorIDs[i][0] ) == 0x00 ) {
   LCD_draw_string3((const char*)PAR);

  } else {
   LCD_draw_string3((const char*)EXT);

  }
 }
      LCD_Update();

   } else {
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n    %S"); &__c[0];})),alarmStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n   %S:%01i"); &__c[0];})),sensorStr,ki);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n   %S"); &__c[0];})),missingStr);
    LCD_Update();
   }
  } else {
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n    %S"); &__c[0];})),alarmStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n   %Ss"); &__c[0];})),sensorStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n   %S"); &__c[0];})),absenceStr);
    LCD_Update();
  }

 _delay_ms(1000);






 LCD_Clear();

 (*(volatile uint8_t *)((0x04) + 0x20)) |=(1 << 0);
 TimeKeyPressed = 0;
 extstate = 0;
 powergone = 0;
 ExtInt0Enable();
 ExtInt1Enable();

 kg = 0;
 if(!btest_new_sensors){
  free(rSensorIDs);
  manageTemperatureEvent();
  ReadyWATCHDOG = 1;
 } else {
  MainLoopPhase = ENTER_NEW_SENSOR;
  nwSen_Phase = REORDER_NWSENS;
 }
 PrefHeatting = 0;
 temp_for_hour = temper[1];


 for(;;) {


  if(!wait_powergone && powergone){
   wait_powergone = 1;
  }

  if(wait_powergone){
   if(powergone){
    if(wait_powergone >= 2 + 1){
     if((*(volatile uint8_t *)((0x09) + 0x20)) & (1 << 3)){
      LcdPowerGoneStr();
      sms_powerGone();
      abort();
     } else {
      __asm__ __volatile__ ("cli" ::: "memory");
      powergone = 0;
      wait_powergone = 0;
      __asm__ __volatile__ ("sei" ::: "memory");
     }
    }
   }
  }






 ch = (char)GetKeyCode();

 if(ch == '*' && !fl) {
  LastPhase = MainLoopPhase;
  MainLoopPhase = DISPLAY_MAINMENU;
  if(LastPhase != MainLoopPhase)
   LCD_Clear();
 }

  switch(MainLoopPhase) {

  case ENTER_NEW_SENSOR:

   if(manage_new_sensors(ch)){
    manageTemperatureEvent();
    PrefHeatting = 0;
    temp_for_hour = temper[1];
    kg = 0;
    LastPhase = MainLoopPhase;
    MainLoopPhase = DISPLAY_MAINMENU;
    MenuPhase = MMENU_SHOW;
    ReadyWATCHDOG = 1;
    free(rSensorIDs);
   }
   continue;
  break;

  case DISPLAY_TEMPERATURE:
   DisplayTemperature();
  break;

  case DISPLAY_MAINMENU:

   switch(ch){
   case '0':
    if(MenuPhase == MMENU_SHOW ){
     MenuPhase = CLRIDS_EEPROM;
    }
    case '1':
    if(MenuPhase == MMENU_SHOW )
     MenuPhase = MTELPHONE_SET;
    break;
    case '2':
     if(MenuPhase == MMENU_SHOW )
      MenuPhase = MVIEW_SNs;
     break;
    case '3':
     if(MenuPhase == MMENU_SHOW )
      MenuPhase = MSET_TIME;
     break;
    case '4':
     if(MenuPhase == MMENU_SHOW )
      MenuPhase = MSETTEMP;
     break;
    case '5':
     if(MenuPhase == MMENU_SHOW ){
      MenuPhase = MSETTEMP;
      ActSN = TOEEPROM;
      fl = 1;
     }
     break;
    case '6':
     if(MenuPhase == MMENU_SHOW )
      MenuPhase = MVIEW_TIME;
     break;
    case '7':
     if(MenuPhase == MMENU_SHOW )
      MenuPhase = MASSIGN;
     break;
    case '8':
     if(MenuPhase == MMENU_SHOW )
      MenuPhase = MVIEWTEMPR;
     break;
    case '9':
    if(MenuPhase == MMENU_SHOW )
     MenuPhase = MSNs_SET;
    break;

    case '#':
     LCD_Clear();
        LCD_Update();
     if(fl){
      MenuPhase = MMENU_SHOW;
      fl = 0;
     } else {MainLoopPhase = DISPLAY_TEMPERATURE; mausure_temperature_ok = 1; continue;}
     break;
    }

   switch(MenuPhase){
   case MMENU_SHOW:
    if(fl){ LCD_Clear(); fl = 0;}
    LcdFirstLine();

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %S\n"); &__c[0];})),1,setStr,telStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %Ss\n"); &__c[0];})),2,viewStr,snStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %S\n"); &__c[0];})),3,setStr,timeStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %S-%S\n"); &__c[0];})),4,setStr,minStr,maxStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S\n"); &__c[0];})),5,toeepromStr);

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %S\n"); &__c[0];})),6,viewStr,timeStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %S\n"); &__c[0];})),7,viewStr,assignStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%i.%S %S"); &__c[0];})),8,viewStr,temperStr);




    break;
   case CLRIDS_EEPROM:
    LCD_Clear();
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %Ss?\n"); &__c[0];})),clearStr, snStr);
    MenuPhase = CLRIDS_EEPROM2;
    break;
   case CLRIDS_EEPROM2:
    if(ch == '*') {
     if(ClearEEPROMSensCodes())
       printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%SD %S!"); &__c[0];})),clearStr,okStr);
     else printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%SD %S!"); &__c[0];})),clearStr,errStr);
     fl = 1;
     MenuPhase = MMENU_SHOW;
    }
    _delay_ms(1000);
    break;
   case MTELPHONE_SET:
    if(fl == 0){
     ActSN = TELPRNSTR;
     fl = 1;
    }
    switch(ActSN) {
     case TELPRNSTR:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S:\n"); &__c[0];})),setStr, telStr);
      ActSN = TELENTERNUM;
      n = 0;
      break;
     case TELENTERNUM:
      if(ch >= 0x30 && ch <= 0x39) {
       if(n < 14){
        printf("%c",ch);
        telNumber[n] = ch;
        n++;
        }
         }
      if(ch == '*')
       {
        telNumber[n] = '\0';
        printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S?"); &__c[0];})),saveStr, toeepromStr);
        printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%s"); &__c[0];})),telNumber);
        ActSN = TELTOEEPROM;
       }
      break;
     case TELTOEEPROM:

      if(ch == '*') {

       __eewr_block_m328p((void *)telNumber , (void*)etelNumber ,strlen(telNumber)+1);
       printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%SD %S!"); &__c[0];})),saveStr,okStr);
       ActSN = EXITTELSET;;
      }
      break;
     case EXITTELSET:
      break;
    }

    break;

   case MSNs_SET:
    if(fl == 0){
     ActSN = INDOOR;
     fl = 1;
    }

    switch(ActSN) {

     case INDOOR:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S %S:\n"); &__c[0];})),indoorStr,snStr);
      ch = 'z';
      n = 0;
      nSNpos = 0;
      ActSN_next = OUTDOOR;
      aSN_num = 0;
      ActSN = ENTER_SN;
      break;
     case OUTDOOR:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S %S:\n"); &__c[0];})),outdoorStr,snStr);
      ch = 'z';
      n = 0;
      nSNpos = 0;
      ActSN_next = SUPPLY;
      aSN_num = 1;
      ActSN = ENTER_SN;
      break;
     case SUPPLY:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S %S:\n"); &__c[0];})),supplyStr,snStr);
      ch = 'z';
      n = 0;
      nSNpos = 0;
      ActSN_next = RETURN;
      aSN_num = 2;
      ActSN = ENTER_SN;
      break;
     case RETURN:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S %S:\n"); &__c[0];})),returnStr,snStr);
      ch = 'z';
      n = 0;
      nSNpos = 0;
      ActSN_next = INDOOR;
      aSN_num = 3;
      ActSN = ENTER_SN;
      break;

     case ENTER_SN:
       if(ch >= 0x30 && ch <= 0x39) {
       if(nSNpos < 7){
        printf("%c",ch);
        wStr[n] = ch;
         if (n < 2) n++;
         else {
        wStr[n+1] = 0;
        ki = atoi(wStr);
        if(ki <= 255){
         gSensNumb[nSNpos] = (uint8_t) ki;
         ReturnXPos(3);
         printf("%02X ",gSensNumb[nSNpos]);
               ReturnXPos(1);
         nSNpos += 1;
           if(nSNpos == 7){
              gSensNumb[nSNpos] = 0;
              for(k=0;k<7;k++)
           gSensorIDs[aSN_num][k] = gSensNumb[k];
              ch = crc8(&gSensNumb[0],7);
              gSensorIDs[aSN_num][k] = ch;
              printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n %S:%02X"); &__c[0];})),checksumStr,ch);
              ActSN = SN_EXIT;
           }
        } else { ReturnXPos(3); printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("   "); &__c[0];}))); ReturnXPos(3);}
        n = 0;
         }
          } else ActSN = SN_EXIT;

      }

       if(ch == '*')
        ActSN = ActSN_next;

       break;
      case SN_EXIT:
       if(ch == '*')
        ActSN = ActSN_next;
       break;
     }

    break;

   case MVIEW_SNs:
    if(fl == 0){
     fl = 1;
     LCD_Clear();
# 910 "../main.c"
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S"); &__c[0];})),nsupdownStr);


    for(k = 0;k < 4;k++){





      printf("\n%02X%02X%02X%02X%02X%02X%02X",

       gSensorIDs[k][0],
       gSensorIDs[k][1],gSensorIDs[k][2],
       gSensorIDs[k][3],gSensorIDs[k][4],
       gSensorIDs[k][5],gSensorIDs[k][6]);

    }

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("    %S"); &__c[0];})),exitStr);


    } else _delay_ms(1000);

    break;

   case MASSIGN:
    if(fl == 0){
     LCD_Clear();

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S%i - %S"); &__c[0];})), snStr,1,indoorStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%i - %S"); &__c[0];})),snStr,2,outdoorStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%i - %S"); &__c[0];})),snStr,3,supplyStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%i - %S"); &__c[0];})),snStr,4,returnStr);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n   %S"); &__c[0];})),exitStr);
    fl = 1;
    }
    break;
   case MVIEWTEMPR:
    if(fl == 0){
    LCD_Clear();


    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S%S:%i"); &__c[0];})),indoorStr,minStr,(int8_t)rTempInDoorMin);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),indoorStr,maxStr,(int8_t)rTempInDoorMax);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),outdoorStr,minStr,(int8_t)rTempOutDoorMin);
# 965 "../main.c"
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),outdoorStr,maxStr,(int8_t)rTempOutDoorMax);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),supplyStr,minStr,(int8_t)rTempSupplyMin);

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),supplyStr,maxStr,(int8_t)rTempSupplyMax);

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),diffStr,minStr,(int8_t)rTempDiffSupplyReturnMin);
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S%S:%i"); &__c[0];})),diffStr,maxStr,(int8_t)rTempDiffSupplyReturnMax);


    fl = 1;
    } else _delay_ms(1000);
    break;
   case MSETTEMP:
    if(fl == 0){
     ActSN = INDOORTEMPMIN;
     fl = 1;
    }

    switch(ActSN){
     case INDOORTEMPMIN:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,indoorStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),minStr);
      ch = 'z';
      n = 0;
      k = 1;
      ActSN_next = INDOORTEMPMAX;
      ActSN = ENTER_TEMP;
      TempAct = &rTempInDoorMin;
      break;
     case INDOORTEMPMAX:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,indoorStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),maxStr);
      ch = 'z';
      ActSN_next = OUTDOORTEMPMIN;
      ActSN = ENTER_TEMP;
      TempAct = &rTempInDoorMax;
      n = 0;
      k = 1;
      break;
     case OUTDOORTEMPMIN:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,outdoorStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),minStr);
      ch = 'z';
      ActSN_next = OUTDOORTEMPMAX;
      ActSN = ENTER_TEMP;
      n = 0;
      k = 1;
      TempAct = &rTempOutDoorMin;
      break;
     case OUTDOORTEMPMAX:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,outdoorStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),maxStr);
      ch = 'z';
      ActSN_next = SUPPLYTEMPMIN;
      ActSN = ENTER_TEMP;
      n = 0;
      k = 1;
      TempAct = &rTempOutDoorMax;
      break;
     case SUPPLYTEMPMIN:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,supplyStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),minStr);
      ch = 'z';
      ActSN_next = SUPPLYTEMPMAX;
      ActSN = ENTER_TEMP;
      n = 0;
      k = 1;
      TempAct = &rTempSupplyMin;
      break;
     case SUPPLYTEMPMAX:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,supplyStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),maxStr);
      ch = 'z';
      ActSN_next = DIFFTEMPMIN;
      ActSN = ENTER_TEMP;
      TempAct = &rTempSupplyMax;
      n = 0;
      k = 1;
      break;
     case DIFFTEMPMIN:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,diffStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),minStr);
      ch = 'z';
      ActSN_next = DIFFTEMPMAX;
      ActSN = ENTER_TEMP;
      n = 0;
      k = 1;
      TempAct = &rTempDiffSupplyReturnMin;
      break;
     case DIFFTEMPMAX:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S\n"); &__c[0];})),exitStr,nextStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S%S\n"); &__c[0];})),tempStr,diffStr);
      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" %S:"); &__c[0];})),maxStr);
      ch = 'z';
      ActSN_next = TOEEPROM;
      ActSN = ENTER_TEMP;
      n = 0;
      k = 1;
      TempAct = &rTempDiffSupplyReturnMax;
      break;
     case TOEEPROM:
      LCD_Clear();

      printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S %S?\n"); &__c[0];})),saveStr, toeepromStr);
      ActSN_next = INDOORTEMPMIN;
      ActSN = SAVE_EEPROM;
      break;
     case SAVE_EEPROM:
      if(ch == '*') {
       __eeupd_byte_m328p((uint8_t*) &TempInDoorMin,rTempInDoorMin);
       __eeupd_byte_m328p((uint8_t*) &TempInDoorMax,rTempInDoorMax);
       __eeupd_byte_m328p((uint8_t*) &TempOutDoorMin,rTempOutDoorMin);
       __eeupd_byte_m328p((uint8_t*) &TempOutDoorMax,rTempOutDoorMax);
       __eeupd_byte_m328p((uint8_t*) &TempSupplyMin,rTempSupplyMin);
       __eeupd_byte_m328p((uint8_t*) &TempSupplyMax,rTempSupplyMax);
       __eeupd_byte_m328p((uint8_t*) &TempDiffSupplyReturnMin,rTempDiffSupplyReturnMin);
       __eeupd_byte_m328p((uint8_t*) &TempDiffSupplyReturnMax,rTempDiffSupplyReturnMax);
       __eeupd_block_m328p((void *)gSensorIDs , (void*)eSensorIDs ,4 * 8);
       printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%SD %S!"); &__c[0];})),saveStr,okStr);
       ActSN = TEMP_EXIT;
      } else _delay_ms(1000);
      break;
     case TEMP_EXIT:
      if(ch == '*') ActSN = ActSN_next;

      break;
     case ENTER_TEMP:
       if(ch >= 0x30 && ch <= 0x39) {

        if(n < k){
         if(n == 0 && ch == '9'){
             { wStr[n] = '-'; k = 2; printf("-");}
         } else { wStr[n] = ch; printf("%c",ch);}
         n++;
        } else {
         wStr[n] = ch;
         wStr[n+1] = '\0';
         printf("%c",ch);
         ki = atoi(wStr);
         *TempAct = ki;
         n = 0;
         printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\nValue is:%i"); &__c[0];})),ki);
         ActSN = TEMP_EXIT;
        }
       }
       if(ch == '*') ActSN = ActSN_next;
      break;
    }

    break;
   case MVIEW_TIME:
    if(fl == 0) {LCD_Clear(); fl = 1;}


    LCD_setTextSize(2);

    LcdFirstLine();

    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%02d:%02d:%02d"); &__c[0];})),tAsync.hour,tAsync.minute,tAsync.second);
    LCD_setTextSize(1);



    break;
   case MSET_TIME:
    if(fl == 0){
     LCD_Clear();
     ActSN = MSET_HOUR;
     ActSN_next = MSET_MINUTE;
     fl = 1;
    }

    switch(ActSN){
    case MSET_HOUR:
     printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S:"); &__c[0];})),hourStr);
     k = 1;
     n = 0;
     ks = 23;
     TempAct = (int8_t*)&(tAsync.hour);
     ActSN_next = MSET_MINUTE;
     ActSN = ENTER_NUMB;
     break;
    case MSET_MINUTE:
     printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S:"); &__c[0];})),minuteStr);
     k = 1;
     n = 0;
     ks = 60;
     TempAct = (int8_t*)&(tAsync.minute);
     ActSN_next = MSET_SECOND;
     ActSN = ENTER_NUMB;
     break;
    case MSET_SECOND:
     printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S:"); &__c[0];})),secondStr);
     k = 1;
     n = 0;
     ks = 60;
     TempAct = (int8_t*)&(tAsync.second);
     ActSN_next = MTIME_EXIT;
     ActSN = ENTER_NUMB;
     break;

    case ENTER_NUMB:
       if(ch >= 0x30 && ch <= 0x39) {

        if(n < k){
         wStr[n] = ch;
         printf("%c",ch);
         n++;
        } else {
         wStr[n] = ch;
         wStr[n+1] = '\0';
         printf("%c",ch);
         ki = atoi(wStr);
        n = 0;
        if(ki >= 0 && ki <= (int) ks){
        *TempAct = ki;
        ActSN = ActSN_next;;
        } else {
        ReturnXPos(2);
        printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("  "); &__c[0];})));
        ReturnXPos(2);
        }
        }
       }
       if(ch == '*') ActSN = ActSN_next;
       break;
    case MTIME_EXIT:
     if(ch == '*') {MenuPhase = MVIEW_TIME; fl = 0;}
     break;
    }
    ch = 'z';
    break;
   case MEXIT:
    LCD_Clear();
    LastPhase = MainLoopPhase;
    MainLoopPhase = DISPLAY_TEMPERATURE;
    MenuPhase = MMENU_SHOW;
    continue;

    break;

   }

  break;
  }
  LCD_Update();

 if(MainLoopPhase != ENTER_NEW_SENSOR){
  DoWatchDog();

  for(k = 0;k < 4;k++)
   if(noready_sens[k]) {
    sms_noready_sens(k);
   }

  if(MainLoopPhase == DISPLAY_MAINMENU)
   if(TimeKeyPressed > 2){
    LastPhase = MainLoopPhase;
    MainLoopPhase = DISPLAY_TEMPERATURE;
    fl = 0;
    __asm__ __volatile__ ("cli" ::: "memory");
    TimeKeyPressed = 0;
    __asm__ __volatile__ ("sei" ::: "memory");
    LCD_Clear();
   }

  if(extstate != 0){
   LastPhase = MainLoopPhase;
   MainLoopPhase = DISPLAY_MAINMENU;
   fl = 0;
   __asm__ __volatile__ ("cli" ::: "memory");
   TimeKeyPressed = 0;
   extstate = 0;
   __asm__ __volatile__ ("sei" ::: "memory");
   LCD_Clear();
  }

   if(tAsync.minute != mtemp_minute){
    manageTemperatureEvent();
    mtemp_minute = tAsync.minute;
    mausure_temperature_ok = 1;
   }
# 1278 "../main.c"
   if(CheckNoReadySNCounter > 15){
    TestNoReadySensors();
    __asm__ __volatile__ ("cli" ::: "memory");
    CheckNoReadySNCounter = 0;
    __asm__ __volatile__ ("sei" ::: "memory");
   }

   if(tAsync.hour != mtemp_hour){
    ManageOutdoorTempEvent();
    mtemp_hour = tAsync.hour;
   }
  }
 }
}
# 1347 "../main.c"
void ShutOffADC(void)
{
    (*(volatile uint8_t *)((0x30) + 0x20)) = (1<<7);
    (*(volatile uint8_t *)(0x7A)) = (0<<7);
    (*(volatile uint8_t *)(0x7E)) = 0x3f;
    (*(volatile uint8_t *)(0x7F)) = 0x03;
}



int8_t test_SN_sensors(){
 int8_t i, k;
 int8_t retcode;
 for ( k = 0; k < 4; k++ ) {
  retcode = 1;
  for ( i = 0; i < 4; i++ ) {
  if(!memcmp(&gSensorIDs[k],(uint8_t*)(rSensorIDs + i * 8),8)){
   retcode = 0; break;
  }
  }
  if(retcode) return k;

    }
 return 99;
}

char checkPresenceSN(){
 char retcode;
 uint8_t i,k;

 k = 0;
 retcode = 1;
 for ( i = 0; i < 4; i++ ) {
  if(ValidSensorCode((uint8_t*)(rSensorIDs + i * 8))){
   if((temper[i] = getTemperature((uint8_t*)(rSensorIDs + i * 8))) == 127)
    retcode = 0;
   else sn_presence[i] = 1;
   _delay_ms(3);
  } else k++;
 }
 if(k > 0) return 0;
 return retcode;
}

void copyrSNsTogSNs(void){
 uint8_t i;
 for ( i = 0; i < 4; i++ ) {
  memcpy(&gSensorIDs[i],(uint8_t*)(rSensorIDs + i * 8),8);
 }
}



void LcdPowerGoneStr(void){
 LCD_Clear();
 LCD_set_position2(0, 2);
 printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("%S"); &__c[0];})),startPowerGoneStr);
 LCD_Update();
_delay_ms(5000);
}

void DisplayTemperature(void){
 uint8_t i,k;
 if(mausure_temperature_ok){
  k = 0;
  for(i=0;i<4;i++) if(temper[i] != 127) k++;

  if(oldDisplaySens > k) LCD_Clear();
  else LcdFirstLine();
  oldDisplaySens = k;

  printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("  %02d:%02d:%02d\n"); &__c[0];})),tAsync.hour,tAsync.minute,tAsync.second);
  if(sn_presence[0]){
   if(temper[0] < 127)
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n %S: %i"); &__c[0];})),indoorStr,temper[0]);
  }
  if(sn_presence[1]){
   if(temper[1] < 127)
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n %S: %i"); &__c[0];})),outdoorStr,temper[1]);
  }
  if(sn_presence[2]){
   if(temper[2] < 127)
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n %S: %i"); &__c[0];})),supplyStr,temper[2]);
  }
  if(sn_presence[3]){
   if(temper[3] < 127)
    printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n %S: %i"); &__c[0];})),returnStr,temper[3]);
  }

  mausure_temperature_ok = 0;
 } else _delay_ms(2000);
}


int16_t getTemperature(uint8_t* sensorID)
{
 int16_t temp;
 char s[10],k;
 k = 3;

 do {
 if ( DS18X20_start_meas( 0x00, sensorID ) == 0x00 ) {
  _delay_ms( 750 );
  DoWatchDog();
  if ( DS18X20_read_decicelsius( sensorID, &temp) == 0x00 ) {
   if( 0x00 == DS18X20_format_from_decicelsius( temp, s, 10 ))
    return atoi(s);
  }
 }
 } while (k--);
 return 127;
}

 void manageTemperatureEvent(void){
  uint8_t i;
  uint8_t inTA;
  uint8_t sh;

  inTA = (rTempInDoorMin + rTempInDoorMax)/2;

  if(kg < 4 - 1) kg++;
  else kg = 0;

   if(sn_presence[kg]){
    temper[kg] = getTemperature(&gSensorIDs[kg][0]);
    if (temper[kg] == 127){
     if (sn_noready_counter[kg] < 2 )
      sn_noready_counter[kg]+=1;
     else {
       sn_presence[kg] = 0;
       noready_sens[kg] = 1;
       sn_noready_counter[kg] = 0;
       }
    }
   }


 sh = 5;
 if(PrefHeatting){

  if (temper[0] <= rTempInDoorMax + 5 ||
    temper[0] == 127) sh = 4;

 }

  if(temper[0] != 127){
   if (temper[0] <= rTempInDoorMin) sh = 0;
   else if (temper[0] <= inTA) sh = 1;
   else if (temper[0] <= rTempInDoorMax) sh = 2;
   else if (sh != 4) sh = 3;
  } else if(temper[2] == 127 || temper[3] == 127) sh = 0;

  if (sh == 5){
   if(temper[2] != 127 && temper[3] != 127) {
    inTA = (rTempDiffSupplyReturnMin + rTempDiffSupplyReturnMax)/2;
    i = temper[2] - temper[3];
    if( i > rTempDiffSupplyReturnMax) sh = 0;
    else if( i > inTA ) sh = 1;
    else if(i > rTempDiffSupplyReturnMin) sh = 2;
    else sh = 3;
   }
  }

  switch (sh){
  case 0:
  case 4:
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (3))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) |= ((1 << (5))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) |= ((1 << (4))));
   break;
  case 1:
   (((*(volatile uint8_t *)((0x08) + 0x20))) |= ((1 << (5))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (3))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (4))));
   break;
  case 2:
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (5))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (3))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (4))));
   break;
  case 3:
   (((*(volatile uint8_t *)((0x08) + 0x20))) |= ((1 << (5))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) |= ((1 << (3))));
   (((*(volatile uint8_t *)((0x08) + 0x20))) &= ~((1 << (4))));
   break;
  }
}






uint8_t manage_new_sensors(char ch){
 uint8_t sensID, l, val;
 int8_t retcode, i, fl4, fl3;

 switch(nwSen_Phase){
 case REORDER_NWSENS:
  kg = 0;
  nwSen_Phase = REORDER_NWSENS2;
 break;

 case REORDER_NWSENS2:
  if(ValidSensorCode((uint8_t*) &gSensorIDs[kg])){
   fl4 = 1;
   retcode = 1;
   for ( i = 0; i < 4; i++ ) {
  if(!memcmp(&gSensorIDs[kg],(uint8_t*)(rSensorIDs + i * 8),8)){
   retcode = 0;
   if (kg == i) break;
   if(!memcmp(&gSensorIDs[kg],&gSensorIDs[i],8)) fl3 = 1;
   else fl3 = 0;
   for (l = 0; l < 8; l++){
    sensID = gSensorIDs[i][l];
    gSensorIDs[i][l] = gSensorIDs[kg][l];
    val = sn_presence[i];
    sn_presence[i] = sn_presence[kg];

    if(fl3){
     gSensorIDs[kg][l] = 0;
     sn_presence[kg] = 0;
    } else {
     gSensorIDs[kg][l] = sensID;
     sn_presence[kg] = val;
    }
   }
   fl4 = 0;
  }
   }
   if(retcode != 0) nwSen_Phase = ASSIGN_NEWSENS;
   else {
   if(fl4){
    if (kg < 4 - 1) kg++;
    else if(retcode == 0) return 1;
   }
   }
  } else return 1;
 break;
 case ASSIGN_NEWSENS:

    LCD_Clear();


             printf("%02X%02X%02X%02X%02X%02X%02X",
                      gSensorIDs[kg][0],
                      gSensorIDs[kg][1],gSensorIDs[kg][2],
                      gSensorIDs[kg][3],gSensorIDs[kg][4],
                      gSensorIDs[kg][5],gSensorIDs[kg][6]);



             printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%S %S"); &__c[0];})),setStr,assignStr);

    if(!sn_presence[0]) printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%i-%S"); &__c[0];})),0,indoorStr);
    if(!sn_presence[1]) printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%i-%S"); &__c[0];})),1,outdoorStr);
    if(!sn_presence[2]) printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%i-%S"); &__c[0];})),2,supplyStr);
    if(!sn_presence[3]) printf_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("\n%i-%S"); &__c[0];})),3,returnStr);
    LCD_Update();
    nwSen_Phase = ASSIGN_NEWSENS2;
  break;
 case ASSIGN_NEWSENS2:
     switch(ch){
     case '0':
     case '1':
     case '2':
     case '3':
       l = ch - '0';
      if(!sn_presence[l]){
       memcpy((uint8_t*)(rSensorIDs + l * 8),&gSensorIDs[kg][0],8);
       sn_presence[l] = 1;
      }
      nwSen_Phase = ASSIGN_TOEEPROM;
      break;

     }
 break;
 case ASSIGN_TOEEPROM:
  __eeupd_block_m328p((void *)rSensorIDs , (void*)eSensorIDs ,4 * 8);
    if (kg < 4 - 1)
     nwSen_Phase = REORDER_NWSENS2;
  else return 1;
  break;
 }
 return 0;

}

void DoWatchDog(void) {
 if (TLastWatchDog == tAsync.second) return;
 if(ReadyWATCHDOG){
  if(WATCHDOG_STATE){
   (*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << 0); WATCHDOG_STATE = 0;
  } else {
   (*(volatile uint8_t *)((0x05) + 0x20)) &= ~(1 << 0); WATCHDOG_STATE = 1;}
  TLastWatchDog = tAsync.second;
  }
}

char ValidSensorCode(uint8_t* sensorID){
 uint8_t l;
 for (l = 0; l < 8; l++){
  if(sensorID[l] == 0xff || sensorID[l] == 0x00) continue;
  else return 1;
 }
 return 0;
}

void sms_noready_sens(uint8_t sensNumber){
 size_t size;
 SMS *psms;
 size = sizeof(SMS)+1;
 if((psms = (SMS*)malloc(size)) != ((void *)0)){
  strncpy(psms->number, telNumber, 20);


  strncpy_P(psms->body, notReadyStr, 160);
  strncpy_P(wbuffer, snStr, 30 );
  strncat(psms->body, wbuffer, 160 - strlen(psms->body));
  sprintf_P(wbuffer,(__extension__({static const char __c[] __attribute__((__progmem__)) = ("%d: "); &__c[0];})),sensNumber);
  strncat(psms->body, wbuffer, 160 - strlen(psms->body));
  sprintf_P(wbuffer,(__extension__({static const char __c[] __attribute__((__progmem__)) = (" at %02d:%02d:%02d"); &__c[0];})),tAsync.hour,tAsync.minute,tAsync.second);
  strncat(psms->body, wbuffer, 160 - strlen(psms->body));
  DoWatchDog();
  gsm_send_sms( psms->number, psms->body, 1 );
  free(psms);
 }
 noready_sens[sensNumber] = 0;
 resetSensNumber(sensNumber);

}

void resetSensNumber(uint8_t sensNumber){
 int8_t i;
 for(i = 0;i < 8; i++)
  gSensorIDs[sensNumber][i] = 0x00;
}

void sms_pumpStarted(){
 size_t size;
 SMS *psms;
 size = sizeof(SMS)+1;
 if((psms = (SMS*)malloc(size)) != ((void *)0)){
  strncpy(psms->number, telNumber, 20);
  strncpy_P(psms->body, startRegulatorStr, 160);


  gsm_send_sms( psms->number, psms->body, 2 );
  free(psms);
 }
}

void sms_powerGone(){
 size_t size;
 SMS *psms;
 size = sizeof(SMS)+1;
 if((psms = (SMS*)malloc(size)) != ((void *)0)){
  strncpy(psms->number, telNumber, 20);
  strncpy_P(psms->body, startPowerGoneStr, 160);
  sprintf_P(wbuffer,(__extension__({static const char __c[] __attribute__((__progmem__)) = (" at %02d:%02d:%02d"); &__c[0];})),tAsync.hour,tAsync.minute,tAsync.second);
  strncat(psms->body, wbuffer, sizeof(psms->body) - strlen(psms->body));
  gsm_send_sms( psms->number, psms->body, 2 );
  free(psms);
 }
}


void ManageOutdoorTempEvent(){
 if (temper[1] != 127 ){
  if (temp_for_hour == 127) temp_for_hour = temper[1];
  if (temper[1] - temp_for_hour >= 10){
   PrefHeatting = 1;
   temp_for_hour = temper[1];
  }
  else PrefHeatting = 0;
 }
}


void TestNoReadySensors(){
 uint8_t i;

 if((rSensorIDs = (uint8_t *)malloc(4 * 8 +1)) != ((void *)0)) {
   __eerd_block_m328p((void *)rSensorIDs , (const void*)eSensorIDs ,4 * 8);

  for ( i = 0; i < 4; i++ ) {
   if (!sn_presence[i])
    if(ValidSensorCode((uint8_t*)(rSensorIDs + i * 8))){
     if((temper[i] = getTemperature((uint8_t*)(rSensorIDs + i * 8))) != 127){
      memcpy(&gSensorIDs[i],(uint8_t*)(rSensorIDs + i * 8),8);
      sn_presence[i] = 1;
     }
    }
   _delay_ms(3);
  }
  free(rSensorIDs);
 }
}

int8_t ClearEEPROMSensCodes(){

 if((rSensorIDs = (uint8_t *)malloc(4 * 8 +1)) != ((void *)0)) {
  *rSensorIDs = 0x00;
  memcpy(rSensorIDs+1, rSensorIDs,4 * 8);
  __eewr_block_m328p((const void *)rSensorIDs , (void*)eSensorIDs , 4 * 8);
  free(rSensorIDs);
  return 1;
 }
 return 0;
}
