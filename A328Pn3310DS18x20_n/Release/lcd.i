# 1 "../lcd/lcd.c"
# 1 "<command-line>"
# 1 "../lcd/lcd.c"







# 1 "../lcd/lcdconf.h" 1
# 11 "../lcd/lcdconf.h"
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
# 12 "../lcd/lcdconf.h" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 1 3
# 45 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdarg.h" 1 3 4
# 40 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 46 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h" 2 3



# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 212 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef unsigned int size_t;
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
# 13 "../lcd/lcdconf.h" 2

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
# 15 "../lcd/lcdconf.h" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 1 3
# 47 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h" 3
# 1 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
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
# 16 "../lcd/lcdconf.h" 2
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
# 17 "../lcd/lcdconf.h" 2




typedef unsigned char byte;
# 57 "../lcd/lcdconf.h"
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
# 58 "../lcd/lcdconf.h" 2
# 101 "../lcd/lcdconf.h"
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
# 9 "../lcd/lcd.c" 2

unsigned x=0,y=0;







# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814c.h" 1
# 15 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814c.h"
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
# 16 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814c.h" 2

# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814.h" 1
# 18 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814c.h" 2




extern int8_t xUpdateMin, yUpdateMin,
   xUpdateMax, yUpdateMax;
extern byte LCDCache [96 * 9];


void LCD_send_bit(uint8_t data)
{
 if (data)
 {
  (((*(volatile uint8_t *)((0x05) + 0x20))) |= ((1 << (3))));
 }
 else (((*(volatile uint8_t *)((0x05) + 0x20))) &= ~((1 << (3))));
 _delay_us(40);
 (((*(volatile uint8_t *)((0x05) + 0x20))) |= ((1 << (5))));
 _delay_us(20);
 (((*(volatile uint8_t *)((0x05) + 0x20))) &= ~((1 << (5))));
 _delay_us(40);
}

void LCD_send_byte(uint8_t data, uint8_t dorc)
{
 (((*(volatile uint8_t *)((0x05) + 0x20))) &= ~((1 << (2))));

 LCD_send_bit(dorc);

 for (uint8_t m = 0x80; m > 0x00; m >>= 1)
 {
  LCD_send_bit(data & m);
 }

 (((*(volatile uint8_t *)((0x05) + 0x20))) |= ((1 << (2))));
}
# 85 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814c.h"
void LCD_send_command(uint8_t data)
{
 LCD_send_byte(data, 0x00);
}

void LCD_send_data(uint8_t data)
{
 LCD_send_byte(data, 0x01);
}
# 137 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814c.h"
void LCD_initialize2(){
 (*(volatile uint8_t *)((0x04) + 0x20)) |= (1<<5)|(1<<3)|(1<<2)|(1<<4);

 (*(volatile uint8_t *)((0x05) + 0x20)) &= ~(1<<2);
 _delay_ms(5);
 (*(volatile uint8_t *)((0x05) + 0x20)) &= ~(1<<4);

 _delay_ms(10);

 (*(volatile uint8_t *)((0x05) + 0x20)) |= (1<<4);

 LCD_send_command(0x20);
 LCD_send_command(0x90);
 LCD_send_command(0xA4);
 LCD_send_command(0x2F);
 LCD_send_command(0x40);
 LCD_send_command(0xB0);
 LCD_send_command(0x10);
 LCD_send_command(0x0);



 LCD_send_command(0xC8);

 LCD_send_command(0xA1);
 LCD_send_command(0xAC);
 LCD_send_command(0x07);

 LCD_send_command(0xAF);

 LCD_Clear_Screen();

 LCD_send_command(0xA7);
 _delay_ms(500);
 LCD_send_command(0xA6);
 _delay_ms(1000);
}

void LCD_Clear_Screen(void)
{
 LCD_send_command(0x40);
 LCD_send_command(0xB0);
 LCD_send_command(0x10);
 LCD_send_command(0x00);


 for(unsigned int i=0;i<864;i++) LCD_send_data(0x00);



}



void LCD_Update() {
 for(int p = 0; p < 9; p++){
  if(yUpdateMin >= ((p+1) *8)) {
   continue;
  }
  if(yUpdateMax < p*8){
    break;
  }

  LCD_send_command(0xB0 | p);

  int col = xUpdateMin;
  int maxcol = xUpdateMax;


  LCD_send_command(0x10 | (col >> 4));

  LCD_send_command(0x00 | (col & 0x000f));



  for(; col <= maxcol; col++){
   LCD_send_data(LCDCache[(96 * p) + col]);
  }

 }
 xUpdateMin = 96 - 1;
 xUpdateMax = 0;
 yUpdateMin = 65 -1;
 yUpdateMax = 0;
}
# 19 "../lcd/lcd.c" 2



byte LCDCache [96 * 9];



int8_t xUpdateMin = 0, yUpdateMin = 0,
   xUpdateMax = 96 - 1,yUpdateMax = 65 - 1;
static int8_t Cursor_X = 0, Cursor_Y = 0;


static uint16_t textcolor = 0xFF, textbgcolor = 0x00;
static uint8_t textsize = 1;

extern char wbuffer[];


__attribute__((progmem)) static const char font[] = {
0x00, 0x00, 0x00, 0x00, 0x00,
0x3E, 0x5B, 0x4F, 0x5B, 0x3E,
0x3E, 0x6B, 0x4F, 0x6B, 0x3E,
0x1C, 0x3E, 0x7C, 0x3E, 0x1C,
0x18, 0x3C, 0x7E, 0x3C, 0x18,
0x1C, 0x57, 0x7D, 0x57, 0x1C,
0x1C, 0x5E, 0x7F, 0x5E, 0x1C,
0x00, 0x18, 0x3C, 0x18, 0x00,
0xFF, 0xE7, 0xC3, 0xE7, 0xFF,
0x00, 0x18, 0x24, 0x18, 0x00,
0xFF, 0xE7, 0xDB, 0xE7, 0xFF,
0x30, 0x48, 0x3A, 0x06, 0x0E,
0x26, 0x29, 0x79, 0x29, 0x26,
0x40, 0x7F, 0x05, 0x05, 0x07,
0x40, 0x7F, 0x05, 0x25, 0x3F,
0x5A, 0x3C, 0xE7, 0x3C, 0x5A,
0x7F, 0x3E, 0x1C, 0x1C, 0x08,
0x08, 0x1C, 0x1C, 0x3E, 0x7F,
0x14, 0x22, 0x7F, 0x22, 0x14,
0x5F, 0x5F, 0x00, 0x5F, 0x5F,
0x06, 0x09, 0x7F, 0x01, 0x7F,
0x00, 0x66, 0x89, 0x95, 0x6A,
0x60, 0x60, 0x60, 0x60, 0x60,
0x94, 0xA2, 0xFF, 0xA2, 0x94,
0x08, 0x04, 0x7E, 0x04, 0x08,
0x10, 0x20, 0x7E, 0x20, 0x10,
0x08, 0x08, 0x2A, 0x1C, 0x08,
0x08, 0x1C, 0x2A, 0x08, 0x08,
0x1E, 0x10, 0x10, 0x10, 0x10,
0x0C, 0x1E, 0x0C, 0x1E, 0x0C,
0x30, 0x38, 0x3E, 0x38, 0x30,
0x06, 0x0E, 0x3E, 0x0E, 0x06,
0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x5f, 0x00, 0x00,
0x00, 0x07, 0x00, 0x07, 0x00,
0x14, 0x7f, 0x14, 0x7f, 0x14,
0x24, 0x2a, 0x7f, 0x2a, 0x12,
0x23, 0x13, 0x08, 0x64, 0x62,
0x36, 0x49, 0x55, 0x22, 0x50,
0x00, 0x05, 0x03, 0x00, 0x00,
0x00, 0x1c, 0x22, 0x41, 0x00,
0x00, 0x41, 0x22, 0x1c, 0x00,
0x14, 0x08, 0x3e, 0x08, 0x14,
0x08, 0x08, 0x3e, 0x08, 0x08,
0x00, 0x50, 0x30, 0x00, 0x00,
0x08, 0x08, 0x08, 0x08, 0x08,
0x00, 0x60, 0x60, 0x00, 0x00,
0x20, 0x10, 0x08, 0x04, 0x02,
0x3e, 0x51, 0x49, 0x45, 0x3e,
0x00, 0x42, 0x7f, 0x40, 0x00,
0x42, 0x61, 0x51, 0x49, 0x46,
0x21, 0x41, 0x45, 0x4b, 0x31,
0x18, 0x14, 0x12, 0x7f, 0x10,
0x27, 0x45, 0x45, 0x45, 0x39,
0x3c, 0x4a, 0x49, 0x49, 0x30,
0x01, 0x71, 0x09, 0x05, 0x03,
0x36, 0x49, 0x49, 0x49, 0x36,
0x06, 0x49, 0x49, 0x29, 0x1e,
0x00, 0x36, 0x36, 0x00, 0x00,
0x00, 0x56, 0x36, 0x00, 0x00,
0x08, 0x14, 0x22, 0x41, 0x00,
0x14, 0x14, 0x14, 0x14, 0x14,
0x00, 0x41, 0x22, 0x14, 0x08,
0x02, 0x01, 0x51, 0x09, 0x06,
0x32, 0x49, 0x79, 0x41, 0x3e,
0x7e, 0x11, 0x11, 0x11, 0x7e,
0x7f, 0x49, 0x49, 0x49, 0x36,
0x3e, 0x41, 0x41, 0x41, 0x22,
0x7f, 0x41, 0x41, 0x22, 0x1c,
0x7f, 0x49, 0x49, 0x49, 0x41,
0x7f, 0x09, 0x09, 0x09, 0x01,
0x3e, 0x41, 0x49, 0x49, 0x7a,
0x7f, 0x08, 0x08, 0x08, 0x7f,
0x00, 0x41, 0x7f, 0x41, 0x00,
0x20, 0x40, 0x41, 0x3f, 0x01,
0x7f, 0x08, 0x14, 0x22, 0x41,
0x7f, 0x40, 0x40, 0x40, 0x40,
0x7f, 0x02, 0x0c, 0x02, 0x7f,
0x7f, 0x04, 0x08, 0x10, 0x7f,
0x3e, 0x41, 0x41, 0x41, 0x3e,
0x7f, 0x09, 0x09, 0x09, 0x06,
0x3e, 0x41, 0x51, 0x21, 0x5e,
0x7f, 0x09, 0x19, 0x29, 0x46,
0x46, 0x49, 0x49, 0x49, 0x31,
0x01, 0x01, 0x7f, 0x01, 0x01,
0x3f, 0x40, 0x40, 0x40, 0x3f,
0x1f, 0x20, 0x40, 0x20, 0x1f,
0x3f, 0x40, 0x38, 0x40, 0x3f,
0x63, 0x14, 0x08, 0x14, 0x63,
0x07, 0x08, 0x70, 0x08, 0x07,
0x61, 0x51, 0x49, 0x45, 0x43,
0x00, 0x7f, 0x41, 0x41, 0x00,
0x02, 0x04, 0x08, 0x10, 0x20,
0x00, 0x41, 0x41, 0x7f, 0x00,
0x04, 0x02, 0x01, 0x02, 0x04,
0x40, 0x40, 0x40, 0x40, 0x40,
0x00, 0x01, 0x02, 0x04, 0x00,
0x20, 0x54, 0x54, 0x54, 0x78,
0x7f, 0x48, 0x44, 0x44, 0x38,
0x38, 0x44, 0x44, 0x44, 0x20,
0x38, 0x44, 0x44, 0x48, 0x7f,
0x38, 0x54, 0x54, 0x54, 0x18,
0x08, 0x7e, 0x09, 0x01, 0x02,
0x0c, 0x52, 0x52, 0x52, 0x3e,
0x7f, 0x08, 0x04, 0x04, 0x78,
0x00, 0x44, 0x7d, 0x40, 0x00,
0x20, 0x40, 0x44, 0x3d, 0x00,
0x7f, 0x10, 0x28, 0x44, 0x00,
0x00, 0x41, 0x7f, 0x40, 0x00,
0x7c, 0x04, 0x18, 0x04, 0x78,
0x7c, 0x08, 0x04, 0x04, 0x78,
0x38, 0x44, 0x44, 0x44, 0x38,
0x7c, 0x14, 0x14, 0x14, 0x08,
0x08, 0x14, 0x14, 0x18, 0x7c,
0x7c, 0x08, 0x04, 0x04, 0x08,
0x48, 0x54, 0x54, 0x54, 0x20,
0x04, 0x3f, 0x44, 0x40, 0x20,
0x3c, 0x40, 0x40, 0x20, 0x7c,
0x1c, 0x20, 0x40, 0x20, 0x1c,
0x3c, 0x40, 0x30, 0x40, 0x3c,
0x44, 0x28, 0x10, 0x28, 0x44,
0x0c, 0x50, 0x50, 0x50, 0x3c,
0x44, 0x64, 0x54, 0x4c, 0x44,
0x00, 0x08, 0x36, 0x41, 0x00,
0x00, 0x00, 0x7f, 0x00, 0x00,
0x00, 0x41, 0x36, 0x08, 0x00,
0x10, 0x08, 0x08, 0x10, 0x08,
0x78, 0x46, 0x41, 0x46, 0x78,
0x1E, 0xA1, 0xA1, 0x61, 0x12,
0x3A, 0x40, 0x40, 0x20, 0x7A,
0x38, 0x54, 0x54, 0x55, 0x59,
0x21, 0x55, 0x55, 0x79, 0x41,
0x21, 0x54, 0x54, 0x78, 0x41,
0x21, 0x55, 0x54, 0x78, 0x40,
0x20, 0x54, 0x55, 0x79, 0x40,
0x0C, 0x1E, 0x52, 0x72, 0x12,
0x39, 0x55, 0x55, 0x55, 0x59,
0x39, 0x54, 0x54, 0x54, 0x59,
0x39, 0x55, 0x54, 0x54, 0x58,
0x00, 0x00, 0x45, 0x7C, 0x41,
0x00, 0x02, 0x45, 0x7D, 0x42,
0x00, 0x01, 0x45, 0x7C, 0x40,
0xF0, 0x29, 0x24, 0x29, 0xF0,
0xF0, 0x28, 0x25, 0x28, 0xF0,
0x7C, 0x54, 0x55, 0x45, 0x00,
0x20, 0x54, 0x54, 0x7C, 0x54,
0x7C, 0x0A, 0x09, 0x7F, 0x49,
0x32, 0x49, 0x49, 0x49, 0x32,
0x32, 0x48, 0x48, 0x48, 0x32,
0x32, 0x4A, 0x48, 0x48, 0x30,
0x3A, 0x41, 0x41, 0x21, 0x7A,
0x3A, 0x42, 0x40, 0x20, 0x78,
0x00, 0x9D, 0xA0, 0xA0, 0x7D,
0x39, 0x44, 0x44, 0x44, 0x39,
0x3D, 0x40, 0x40, 0x40, 0x3D,
0x3C, 0x24, 0xFF, 0x24, 0x24,
0x48, 0x7E, 0x49, 0x43, 0x66,
0x2B, 0x2F, 0xFC, 0x2F, 0x2B,
0xFF, 0x09, 0x29, 0xF6, 0x20,
0xC0, 0x88, 0x7E, 0x09, 0x03,
0x20, 0x54, 0x54, 0x79, 0x41,
0x00, 0x00, 0x44, 0x7D, 0x41,
0x30, 0x48, 0x48, 0x4A, 0x32,
0x38, 0x40, 0x40, 0x22, 0x7A,
0x00, 0x7A, 0x0A, 0x0A, 0x72,
0x7D, 0x0D, 0x19, 0x31, 0x7D,
0x26, 0x29, 0x29, 0x2F, 0x28,
0x26, 0x29, 0x29, 0x29, 0x26,
0x30, 0x48, 0x4D, 0x40, 0x20,
0x38, 0x08, 0x08, 0x08, 0x08,
0x08, 0x08, 0x08, 0x08, 0x38,
0x2F, 0x10, 0xC8, 0xAC, 0xBA,
0x2F, 0x10, 0x28, 0x34, 0xFA,
0x00, 0x00, 0x7B, 0x00, 0x00,
0x08, 0x14, 0x2A, 0x14, 0x22,
0x22, 0x14, 0x2A, 0x14, 0x08,
0xAA, 0x00, 0x55, 0x00, 0xAA,
0xAA, 0x55, 0xAA, 0x55, 0xAA,
0x00, 0x00, 0x00, 0xFF, 0x00,
0x10, 0x10, 0x10, 0xFF, 0x00,
0x14, 0x14, 0x14, 0xFF, 0x00,
0x10, 0x10, 0xFF, 0x00, 0xFF,
0x10, 0x10, 0xF0, 0x10, 0xF0,
0x14, 0x14, 0x14, 0xFC, 0x00,
0x14, 0x14, 0xF7, 0x00, 0xFF,
0x00, 0x00, 0xFF, 0x00, 0xFF,
0x14, 0x14, 0xF4, 0x04, 0xFC,
0x14, 0x14, 0x17, 0x10, 0x1F,
0x10, 0x10, 0x1F, 0x10, 0x1F,
0x14, 0x14, 0x14, 0x1F, 0x00,
0x10, 0x10, 0x10, 0xF0, 0x00,
0x00, 0x00, 0x00, 0x1F, 0x10,
0x10, 0x10, 0x10, 0x1F, 0x10,
0x10, 0x10, 0x10, 0xF0, 0x10,
0x00, 0x00, 0x00, 0xFF, 0x10,
0x10, 0x10, 0x10, 0x10, 0x10,
0x10, 0x10, 0x10, 0xFF, 0x10,
0x00, 0x00, 0x00, 0xFF, 0x14,
0x00, 0x00, 0xFF, 0x00, 0xFF,
0x00, 0x00, 0x1F, 0x10, 0x17,
0x00, 0x00, 0xFC, 0x04, 0xF4,
0x14, 0x14, 0x17, 0x10, 0x17,
0x14, 0x14, 0xF4, 0x04, 0xF4,
0x00, 0x00, 0xFF, 0x00, 0xF7,
0x14, 0x14, 0x14, 0x14, 0x14,
0x14, 0x14, 0xF7, 0x00, 0xF7,
0x14, 0x14, 0x14, 0x17, 0x14,
0x10, 0x10, 0x1F, 0x10, 0x1F,
0x14, 0x14, 0x14, 0xF4, 0x14,
0x10, 0x10, 0xF0, 0x10, 0xF0,
0x00, 0x00, 0x1F, 0x10, 0x1F,
0x00, 0x00, 0x00, 0x1F, 0x14,
0x00, 0x00, 0x00, 0xFC, 0x14,
0x00, 0x00, 0xF0, 0x10, 0xF0,
0x10, 0x10, 0xFF, 0x10, 0xFF,
0x14, 0x14, 0x14, 0xFF, 0x14,
0x10, 0x10, 0x10, 0x1F, 0x00,
0x00, 0x00, 0x00, 0xF0, 0x10,
0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
0xF0, 0xF0, 0xF0, 0xF0, 0xF0,
0xFF, 0xFF, 0xFF, 0x00, 0x00,
0x00, 0x00, 0x00, 0xFF, 0xFF,
0x0F, 0x0F, 0x0F, 0x0F, 0x0F,
0x38, 0x44, 0x44, 0x38, 0x44,
0x7C, 0x2A, 0x2A, 0x3E, 0x14,
0x7E, 0x02, 0x02, 0x06, 0x06,
0x02, 0x7E, 0x02, 0x7E, 0x02,
0x63, 0x55, 0x49, 0x41, 0x63,
0x38, 0x44, 0x44, 0x3C, 0x04,
0x40, 0x7E, 0x20, 0x1E, 0x20,
0x06, 0x02, 0x7E, 0x02, 0x02,
0x99, 0xA5, 0xE7, 0xA5, 0x99,
0x1C, 0x2A, 0x49, 0x2A, 0x1C,
0x4C, 0x72, 0x01, 0x72, 0x4C,
0x30, 0x4A, 0x4D, 0x4D, 0x30,
0x30, 0x48, 0x78, 0x48, 0x30,
0xBC, 0x62, 0x5A, 0x46, 0x3D,
0x3E, 0x49, 0x49, 0x49, 0x00,
0x7E, 0x01, 0x01, 0x01, 0x7E,
0x2A, 0x2A, 0x2A, 0x2A, 0x2A,
0x44, 0x44, 0x5F, 0x44, 0x44,
0x40, 0x51, 0x4A, 0x44, 0x40,
0x40, 0x44, 0x4A, 0x51, 0x40,
0x00, 0x00, 0xFF, 0x01, 0x03,
0xE0, 0x80, 0xFF, 0x00, 0x00,
0x08, 0x08, 0x6B, 0x6B, 0x08,
0x36, 0x12, 0x36, 0x24, 0x36,
0x06, 0x0F, 0x09, 0x0F, 0x06,
0x00, 0x00, 0x18, 0x18, 0x00,
0x00, 0x00, 0x10, 0x10, 0x00,
0x30, 0x40, 0xFF, 0x01, 0x01,
0x00, 0x1F, 0x01, 0x01, 0x1E,
0x00, 0x19, 0x1D, 0x17, 0x12,
0x00, 0x3C, 0x3C, 0x3C, 0x3C,
0x00, 0x00, 0x00, 0x00, 0x00,
};
# 307 "../lcd/lcd.c"
void LCD_Clear() {
 for (int index = 0; index < 96 * 9 ; index++)
  {
   LCDCache[index] = (0x00);
  }
  LCD_UpdateBox(0, 0, 96 - 1, 65 - 1);
  Cursor_X = 0;
  Cursor_Y = 0;
  x = 0;
  y = 0;
}

void LCD_UpdateBox (int xmin, int ymin, int xmax, int ymax) {
 if (xmin < xUpdateMin) xUpdateMin = xmin;
 if (xmax > xUpdateMax) xUpdateMax = xmax;
 if (ymin < yUpdateMin) yUpdateMin = ymin;
 if (ymax > yUpdateMax) yUpdateMax = ymax;
}

void LCD_drawPixel (int16_t xc, int16_t yc, uint16_t color) {
 if ((xc < 0) || (xc >= 96) || (yc < 0) || (yc >= 65))
 return;

 if (color)
    LCDCache[xc + (yc/8)*96] |= (1 << (yc%8));
  else
    LCDCache[xc + (yc/8)*96] &= ~(1 << (yc%8));

 LCD_UpdateBox(xc,yc,xc,yc);
}
# 367 "../lcd/lcd.c"
void LCD_drawChar(int16_t xs, int16_t ys, unsigned char c, uint16_t color, uint16_t bg, uint8_t size) {

  if((xs >= 96) ||(ys >= 65) || ((xs + 5 * size - 1) < 0) || ((ys + 8 * size - 1) < 0))
    return;

  for (int8_t i=0; i<6; i++ ) {
    uint8_t line;
    if (i == 5)
      line = 0x0;
    else
      line = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(font+(c*5)+i)); uint8_t __result; __asm__ __volatile__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }));
    for (int8_t j = 0; j<8; j++) {
      if (line & 0x1) {
        if (size == 1)
          LCD_drawPixel(xs+i, ys+j, color);
        else {
          LCD_fillRect(xs+(i*size), ys+(j*size), size, size, color);
        }
      } else if (bg != color) {
        if (size == 1)
          LCD_drawPixel(xs+i, ys+j, bg);
        else {
          LCD_fillRect(xs+i*size, ys+j*size, size, size, bg);
        }
      }
      line >>= 1;
    }
  }
}


void LCD_set_position2(uint8_t xpos, uint8_t ypos)
{
   x = xpos;
   y = ypos;
      Cursor_X = xpos * 6 * textsize;
      Cursor_Y = ypos * 8 * textsize;
}

uint8_t LCD_write2(uint8_t c) {
 int txsize,tysize;
    LCD_drawChar(Cursor_X, Cursor_Y, c, textcolor, textbgcolor, textsize);

    txsize = 6 * textsize;
    tysize = 8 * textsize;

 if(x + 1 < 16) x += 1;
 else { x=0;
  if (y < 8 - 1) y += 1;
   else LCD_Clear();
 }
 Cursor_X = x * txsize;
 Cursor_Y = y * tysize;
# 429 "../lcd/lcd.c"
  return 0;
}
# 440 "../lcd/lcd.c"
void LCD_draw_string2(char* text)
{
 for (unsigned char i = 0; text[i]; i++)
 {
  LCD_write2(text[i]);
 }
}

void LCD_draw_string3(const char* text)
{
 strncpy_P(wbuffer,(const char *)text,16);
 wbuffer[16]='\0';
 LCD_draw_string2(wbuffer);
}



void LCD_drawLine(int16_t x0, int16_t y0,int16_t x1, int16_t y1, uint16_t color) {
  int16_t steep = __builtin_abs(y1 - y0) > __builtin_abs(x1 - x0);
  if (steep) {
    { int16_t t = x0; x0 = y0; y0 = t; };
    { int16_t t = x1; x1 = y1; y1 = t; };
  }

  if (x0 > x1) {
    { int16_t t = x0; x0 = x1; x1 = t; };
    { int16_t t = y0; y0 = y1; y1 = t; };
  }

  int16_t dx, dy;
  dx = x1 - x0;
  dy = __builtin_abs(y1 - y0);

  int16_t err = dx / 2;
  int16_t ystep;

  if (y0 < y1) {
    ystep = 1;
  } else {
    ystep = -1;
  }

  for (; x0<=x1; x0++) {
    if (steep) {
      LCD_drawPixel(y0, x0, color);
    } else {
      LCD_drawPixel(x0, y0, color);
    }
    err -= dy;
    if (err < 0) {
      y0 += ystep;
      err += dx;
    }
  }
}

void LCD_fillRect(int16_t xq, int16_t yq, int16_t w, int16_t h, uint16_t color) {
  for (int16_t i=xq; i<xq+w; i++) {
    LCD_drawFastVLine(i, yq, h, color);
  }
}

void LCD_drawFastVLine(int16_t xq, int16_t yq, int16_t h, uint16_t color) {
  LCD_drawLine(xq, yq, xq, yq+h-1, color);
}

void LCD_drawFastHLine(int16_t xq, int16_t yq, int16_t w, uint16_t color) {
  LCD_drawLine(xq, yq, xq+w-1, yq, color);
}
# 554 "../lcd/lcd.c"
void LCD_setTextSize(uint8_t s) {
  textsize = (s > 0) ? s : 1;
}
# 792 "../lcd/lcd.c"
void NoneFunc()
{

}

void LcdPutInt(int i)
{

 char printbuff[17];

 itoa(i, printbuff, 10);
 LCD_draw_string2(printbuff);
# 812 "../lcd/lcd.c"
}
# 821 "../lcd/lcd.c"
void LcdNextStr(void)
{
 if (y < 8 - 1) {
  y += 1;
  LCD_set_position2(0, y);
 } else LCD_Clear();

}

void LcdFirstLine(void)
{





 LCD_set_position2(0, 0);

}

void ReturnXPos(uint8_t ps){
 if (x >= ps) x -= ps;
 else {
  if ( y > 0 ) y -= 1;
    x = 16 - (ps - x);
 }
 LCD_set_position2(x, y);
}


int LcdWrite ( char c, struct __file *stream ){
 if (c == 0x0A)
  LcdNextStr();
 else if (c >= 0x20){
  LCD_write2(c);







 }

 return 0;
}
