# 1 "../keypad/keyadc.c"
# 1 "<command-line>"
# 1 "../keypad/keyadc.c"







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
# 9 "../keypad/keyadc.c" 2
# 1 "/AtmelAvrToolchain/avr/include/avr/interrupt.h" 1 3
# 10 "../keypad/keyadc.c" 2
# 1 "/AtmelAvrToolchain/avr/include/avr/pgmspace.h" 1 3
# 87 "/AtmelAvrToolchain/avr/include/avr/pgmspace.h" 3
# 1 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 212 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 88 "/AtmelAvrToolchain/avr/include/avr/pgmspace.h" 2 3
# 1137 "/AtmelAvrToolchain/avr/include/avr/pgmspace.h" 3
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
# 11 "../keypad/keyadc.c" 2
# 1 "../keypad/adc.h" 1
# 12 "../keypad/keyadc.c" 2

void __vector_21 (void) __attribute__ ((signal,used, externally_visible)) __attribute__((naked)); void __vector_21 (void)
{
    asm volatile(
    "   jmp IntAdc;                   \n"
    ::);
}

void __vector_23 (void) __attribute__ ((signal,used, externally_visible)) __attribute__((naked)); void __vector_23 (void)
{
    asm volatile(
    "	jmp	IntAnalogComp				\n"
    ::);
}
