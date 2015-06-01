# 1 "../n3310/n3310.c"
# 1 "/home/izhuk/workspace/A328Pn3310DS18x20_n/Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../n3310/n3310.c"
# 35 "../n3310/n3310.c"
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 1 3
# 99 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/sfr_defs.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/inttypes.h" 1 3
# 37 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/include/stdint.h" 1 3 4


# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/stdint.h" 1 3 4
# 121 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/stdint.h" 3 4
typedef int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "/usr/lib/gcc/avr/4.5.0/include/stdint.h" 2 3 4
# 38 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/inttypes.h" 2 3
# 77 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3
# 222 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/iom328p.h" 1 3
# 223 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3
# 426 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/portpins.h" 1 3
# 427 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3

# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/common.h" 1 3
# 429 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3

# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/version.h" 1 3
# 431 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3


# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/fuse.h" 1 3
# 239 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 434 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3


# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/lock.h" 1 3
# 437 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/io.h" 2 3
# 36 "../n3310/n3310.c" 2
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/string.h" 1 3
# 45 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/string.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/include/stddef.h" 1 3 4
# 211 "/usr/lib/gcc/avr/4.5.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 46 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/string.h" 2 3
# 111 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/string.h" 3
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
# 37 "../n3310/n3310.c" 2
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/4.5.0/include/stddef.h" 1 3 4
# 88 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/pgmspace.h" 2 3
# 217 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/pgmspace.h" 3
typedef void prog_void __attribute__((__progmem__));
typedef char prog_char __attribute__((__progmem__));
typedef unsigned char prog_uchar __attribute__((__progmem__));

typedef int8_t prog_int8_t __attribute__((__progmem__));
typedef uint8_t prog_uint8_t __attribute__((__progmem__));
typedef int16_t prog_int16_t __attribute__((__progmem__));
typedef uint16_t prog_uint16_t __attribute__((__progmem__));
typedef int32_t prog_int32_t __attribute__((__progmem__));
typedef uint32_t prog_uint32_t __attribute__((__progmem__));

typedef int64_t prog_int64_t __attribute__((__progmem__));
typedef uint64_t prog_uint64_t __attribute__((__progmem__));
# 907 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/pgmspace.h" 3
extern const prog_void * memchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const prog_void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const prog_void *, int __val, size_t);
extern void *memcpy_P(void *, const prog_void *, size_t);
extern void *memmem_P(const void *, size_t, const prog_void *, size_t) __attribute__((__pure__));
extern const prog_void * memrchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const prog_char *);
extern const prog_char * strchr_P(const prog_char *, int __val) __attribute__((__const__));
extern const prog_char * strchrnul_P(const prog_char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const prog_char *);
extern int strcasecmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const prog_char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const prog_char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const prog_char *, size_t );
extern size_t strlcpy_P (char *, const prog_char *, size_t );
extern size_t strlen_P(const prog_char *) __attribute__((__const__));
extern size_t strnlen_P(const prog_char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const prog_char *, size_t);
extern char *strncpy_P(char *, const prog_char *, size_t);
extern char *strpbrk_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern const prog_char * strrchr_P(const prog_char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const prog_char * __delim);
extern size_t strspn_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const prog_char * __delim);
extern char *strtok_rP(char *__s, const prog_char * __delim, char **__last);

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
# 38 "../n3310/n3310.c" 2
# 1 "/usr/lib/gcc/avr/4.5.0/../../../../avr/include/avr/interrupt.h" 1 3
# 39 "../n3310/n3310.c" 2
# 1 "../n3310/n3310.h" 1
# 54 "../n3310/n3310.h"
typedef unsigned char byte;

typedef enum
{
LCD_CMD = 0,
LCD_DATA = 1
} LcdCmdData;
typedef enum
{
PIXEL_OFF = 0,
PIXEL_ON = 1,
PIXEL_XOR = 2
} LcdPixelMode;
typedef enum
{
FONT_1X = 1,
FONT_2X = 2
} LcdFontSize;

void LcdInit ( void );
void LcdClear ( void );
void LcdUpdate ( void );
void LcdImage ( const byte *imageData );
void LcdContrast ( byte contrast );
byte LcdGotoXYFont ( byte x, byte y );
byte LcdChr ( LcdFontSize size, byte ch );
byte LcdStr ( LcdFontSize size, byte dataArray[] );
byte LcdFStr ( LcdFontSize size, const byte *dataPtr );
# 94 "../n3310/n3310.h"
__attribute__((progmem)) static const byte FontLookup [][5] =
{
{ 0x00, 0x00, 0x00, 0x00, 0x00 },
{ 0x00, 0x00, 0x5F, 0x00, 0x00 },
{ 0x00, 0x07, 0x00, 0x07, 0x00 },
{ 0x14, 0x7F, 0x14, 0x7F, 0x14 },
{ 0x24, 0x2A, 0x7F, 0x2A, 0x12 },
{ 0x4C, 0x2C, 0x10, 0x68, 0x64 },
{ 0x36, 0x49, 0x55, 0x22, 0x50 },
{ 0x00, 0x05, 0x03, 0x00, 0x00 },
{ 0x00, 0x1C, 0x22, 0x41, 0x00 },
{ 0x00, 0x41, 0x22, 0x1C, 0x00 },
{ 0x14, 0x08, 0x3E, 0x08, 0x14 },
{ 0x08, 0x08, 0x3E, 0x08, 0x08 },
{ 0x00, 0x00, 0x50, 0x30, 0x00 },
{ 0x10, 0x10, 0x10, 0x10, 0x10 },
{ 0x00, 0x60, 0x60, 0x00, 0x00 },
{ 0x20, 0x10, 0x08, 0x04, 0x02 },
{ 0x3E, 0x51, 0x49, 0x45, 0x3E },
{ 0x00, 0x42, 0x7F, 0x40, 0x00 },
{ 0x42, 0x61, 0x51, 0x49, 0x46 },
{ 0x21, 0x41, 0x45, 0x4B, 0x31 },
{ 0x18, 0x14, 0x12, 0x7F, 0x10 },
{ 0x27, 0x45, 0x45, 0x45, 0x39 },
{ 0x3C, 0x4A, 0x49, 0x49, 0x30 },
{ 0x01, 0x71, 0x09, 0x05, 0x03 },
{ 0x36, 0x49, 0x49, 0x49, 0x36 },
{ 0x06, 0x49, 0x49, 0x29, 0x1E },
{ 0x00, 0x36, 0x36, 0x00, 0x00 },
{ 0x00, 0x56, 0x36, 0x00, 0x00 },
{ 0x08, 0x14, 0x22, 0x41, 0x00 },
{ 0x14, 0x14, 0x14, 0x14, 0x14 },
{ 0x00, 0x41, 0x22, 0x14, 0x08 },
{ 0x02, 0x01, 0x51, 0x09, 0x06 },
{ 0x32, 0x49, 0x79, 0x41, 0x3E },
{ 0x7E, 0x11, 0x11, 0x11, 0x7E },
{ 0x7F, 0x49, 0x49, 0x49, 0x36 },
{ 0x3E, 0x41, 0x41, 0x41, 0x22 },
{ 0x7F, 0x41, 0x41, 0x22, 0x1C },
{ 0x7F, 0x49, 0x49, 0x49, 0x41 },
{ 0x7F, 0x09, 0x09, 0x09, 0x01 },
{ 0x3E, 0x41, 0x49, 0x49, 0x7A },
{ 0x7F, 0x08, 0x08, 0x08, 0x7F },
{ 0x00, 0x41, 0x7F, 0x41, 0x00 },
{ 0x20, 0x40, 0x41, 0x3F, 0x01 },
{ 0x7F, 0x08, 0x14, 0x22, 0x41 },
{ 0x7F, 0x40, 0x40, 0x40, 0x40 },
{ 0x7F, 0x02, 0x0C, 0x02, 0x7F },
{ 0x7F, 0x04, 0x08, 0x10, 0x7F },
{ 0x3E, 0x41, 0x41, 0x41, 0x3E },
{ 0x7F, 0x09, 0x09, 0x09, 0x06 },
{ 0x3E, 0x41, 0x51, 0x21, 0x5E },
{ 0x7F, 0x09, 0x19, 0x29, 0x46 },
{ 0x46, 0x49, 0x49, 0x49, 0x31 },
{ 0x01, 0x01, 0x7F, 0x01, 0x01 },
{ 0x3F, 0x40, 0x40, 0x40, 0x3F },
{ 0x1F, 0x20, 0x40, 0x20, 0x1F },
{ 0x3F, 0x40, 0x38, 0x40, 0x3F },
{ 0x63, 0x14, 0x08, 0x14, 0x63 },
{ 0x07, 0x08, 0x70, 0x08, 0x07 },
{ 0x61, 0x51, 0x49, 0x45, 0x43 },
{ 0x00, 0x7F, 0x41, 0x41, 0x00 },
{ 0x02, 0x04, 0x08, 0x10, 0x20 },
{ 0x00, 0x41, 0x41, 0x7F, 0x00 },
{ 0x04, 0x02, 0x01, 0x02, 0x04 },
{ 0x40, 0x40, 0x40, 0x40, 0x40 },
{ 0x00, 0x01, 0x02, 0x04, 0x00 },
{ 0x20, 0x54, 0x54, 0x54, 0x78 },
{ 0x7F, 0x48, 0x44, 0x44, 0x38 },
{ 0x38, 0x44, 0x44, 0x44, 0x20 },
{ 0x38, 0x44, 0x44, 0x48, 0x7F },
{ 0x38, 0x54, 0x54, 0x54, 0x18 },
{ 0x08, 0x7E, 0x09, 0x01, 0x02 },
{ 0x0C, 0x52, 0x52, 0x52, 0x3E },
{ 0x7F, 0x08, 0x04, 0x04, 0x78 },
{ 0x00, 0x44, 0x7D, 0x40, 0x00 },
{ 0x20, 0x40, 0x44, 0x3D, 0x00 },
{ 0x7F, 0x10, 0x28, 0x44, 0x00 },
{ 0x00, 0x41, 0x7F, 0x40, 0x00 },
{ 0x7C, 0x04, 0x18, 0x04, 0x78 },
{ 0x7C, 0x08, 0x04, 0x04, 0x78 },
{ 0x38, 0x44, 0x44, 0x44, 0x38 },
{ 0x7C, 0x14, 0x14, 0x14, 0x08 },
{ 0x08, 0x14, 0x14, 0x18, 0x7C },
{ 0x7C, 0x08, 0x04, 0x04, 0x08 },
{ 0x48, 0x54, 0x54, 0x54, 0x20 },
{ 0x04, 0x3F, 0x44, 0x40, 0x20 },
{ 0x3C, 0x40, 0x40, 0x20, 0x7C },
{ 0x1C, 0x20, 0x40, 0x20, 0x1C },
{ 0x3C, 0x40, 0x30, 0x40, 0x3C },
{ 0x44, 0x28, 0x10, 0x28, 0x44 },
{ 0x0C, 0x50, 0x50, 0x50, 0x3C },
{ 0x44, 0x64, 0x54, 0x4C, 0x44 },
{ 0x00, 0x08, 0x36, 0x41, 0x00 },
{ 0x00, 0x00, 0x7F, 0x00, 0x00 },
{ 0x00, 0x41, 0x36, 0x08, 0x00 },
{ 0x08, 0x04, 0x08, 0x10, 0x08 },
{ 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
{ 0x7C, 0x12, 0x11, 0x12, 0x7C },
{ 0x7F, 0x49, 0x49, 0x49, 0x31 },
{ 0x7F, 0x49, 0x49, 0x49, 0x36 },
{ 0x7F, 0x01, 0x01, 0x01, 0x01 },
{ 0x60, 0x3F, 0x21, 0x3F, 0x60 },
{ 0x7F, 0x49, 0x49, 0x49, 0x41 },
{ 0x77, 0x08, 0x7F, 0x08, 0x77 },
{ 0x22, 0x41, 0x49, 0x49, 0x36 },
{ 0x7F, 0x10, 0x08, 0x04, 0x7F },
{ 0x7E, 0x10, 0x09, 0x04, 0x7E },
{ 0x7F, 0x08, 0x14, 0x22, 0x41 },
{ 0x40, 0x3E, 0x01, 0x01, 0x7F },
{ 0x7F, 0x02, 0x0C, 0x02, 0x7F },
{ 0x7F, 0x08, 0x08, 0x08, 0x7F },
{ 0x3E, 0x41, 0x41, 0x41, 0x3E },
{ 0x7F, 0x01, 0x01, 0x01, 0x7F },
{ 0x7F, 0x09, 0x09, 0x09, 0x06 },
{ 0x3E, 0x41, 0x41, 0x41, 0x22 },
{ 0x01, 0x01, 0x7F, 0x01, 0x01 },
{ 0x07, 0x48, 0x48, 0x48, 0x3F },
{ 0x0E, 0x11, 0x7F, 0x11, 0x0E },
{ 0x63, 0x14, 0x08, 0x14, 0x63 },
{ 0x3F, 0x20, 0x20, 0x3F, 0x60 },
{ 0x07, 0x08, 0x08, 0x08, 0x7F },
{ 0x7F, 0x40, 0x7E, 0x40, 0x7F },
{ 0x3F, 0x20, 0x3F, 0x20, 0x7F },
{ 0x01, 0x7F, 0x48, 0x48, 0x30 },
{ 0x7F, 0x48, 0x30, 0x00, 0x7F },
{ 0x00, 0x7F, 0x48, 0x48, 0x30 },
{ 0x22, 0x41, 0x49, 0x49, 0x3E },
{ 0x7F, 0x08, 0x3E, 0x41, 0x3E },
{ 0x46, 0x29, 0x19, 0x09, 0x7F },
{ 0x20, 0x54, 0x54, 0x54, 0x78 },
{ 0x3C, 0x4A, 0x4A, 0x4A, 0x31 },
{ 0x7C, 0x54, 0x54, 0x28, 0x00 },
{ 0x7C, 0x04, 0x04, 0x0C, 0x00 },
{ 0x60, 0x3C, 0x24, 0x3C, 0x60 },
{ 0x38, 0x54, 0x54, 0x54, 0x18 },
{ 0x6C, 0x10, 0x7C, 0x10, 0x6C },
{ 0x00, 0x44, 0x54, 0x54, 0x28 },
{ 0x7C, 0x20, 0x10, 0x08, 0x7C },
{ 0x7C, 0x21, 0x12, 0x09, 0x7C },
{ 0x7C, 0x10, 0x28, 0x44, 0x00 },
{ 0x40, 0x38, 0x04, 0x04, 0x7C },
{ 0x7C, 0x08, 0x10, 0x08, 0x7C },
{ 0x7C, 0x10, 0x10, 0x10, 0x7C },
{ 0x38, 0x44, 0x44, 0x44, 0x38 },
{ 0x7C, 0x04, 0x04, 0x04, 0x7C },
{ 0x7C, 0x14, 0x14, 0x14, 0x08 },
{ 0x38, 0x44, 0x44, 0x44, 0x00 },
{ 0x04, 0x04, 0x7C, 0x04, 0x04 },
{ 0x0C, 0x50, 0x50, 0x50, 0x3C },
{ 0x08, 0x14, 0x7C, 0x14, 0x08 },
{ 0x44, 0x28, 0x10, 0x28, 0x44 },
{ 0x3C, 0x20, 0x20, 0x3C, 0x60 },
{ 0x0C, 0x10, 0x10, 0x10, 0x7C },
{ 0x7C, 0x40, 0x7C, 0x40, 0x7C },
{ 0x3C, 0x20, 0x3C, 0x20, 0x7C },
{ 0x04, 0x7C, 0x50, 0x50, 0x20 },
{ 0x7C, 0x50, 0x20, 0x00, 0x7C },
{ 0x00, 0x7C, 0x50, 0x50, 0x20 },
{ 0x28, 0x44, 0x54, 0x54, 0x38 },
{ 0x7C, 0x10, 0x38, 0x44, 0x38 },
{ 0x48, 0x54, 0x34, 0x14, 0x7C }
};
# 40 "../n3310/n3310.c" 2

static void LcdSend ( byte data, LcdCmdData cd );
static void Delay ( void );


static byte LcdCache [ ( ( 84 * 48 ) / 8 ) ];



static int LoWaterMark;
static int HiWaterMark;

static int LcdCacheIdx;

static byte UpdateLcd;






void LcdInit ( void )
{

(*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << (4));

(*(volatile uint8_t *)((0x04) + 0x20)) |= (1 << (4)) | (1 << (1)) | (1 << (2)) | (1 << (3)) | (1 << (5));

Delay();

(*(volatile uint8_t *)((0x05) + 0x20)) &= ~( (1 << (4)) );
Delay();
(*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << (4));


(*(volatile uint8_t *)((0x2C) + 0x20)) = 0x50;

(*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << (2));

LcdSend( 0x21, LCD_CMD );
LcdSend( 0xC8, LCD_CMD );
LcdSend( 0x06, LCD_CMD );
LcdSend( 0x13, LCD_CMD );
LcdSend( 0x20, LCD_CMD );
LcdSend( 0x0C, LCD_CMD );

LcdClear();
LcdUpdate();
}






void LcdClear ( void )
{







memset( LcdCache, 0x00, ( ( 84 * 48 ) / 8 ) );

LoWaterMark = 0;
HiWaterMark = ( ( 84 * 48 ) / 8 ) - 1;

UpdateLcd = 1;
}






void LcdUpdate (void)
{
int i;
if ( LoWaterMark < 0 )
LoWaterMark = 0;
else if ( LoWaterMark >= ( ( 84 * 48 ) / 8 ) )
LoWaterMark = ( ( 84 * 48 ) / 8 ) - 1;
if ( HiWaterMark < 0 )
HiWaterMark = 0;
else if ( HiWaterMark >= ( ( 84 * 48 ) / 8 ) )
HiWaterMark = ( ( 84 * 48 ) / 8 ) - 1;
# 158 "../n3310/n3310.c"
LcdSend( 0x80 | ( LoWaterMark % 84 ), LCD_CMD );
LcdSend( 0x40 | ( LoWaterMark / 84 ), LCD_CMD );

for ( i = LoWaterMark; i <= HiWaterMark; i++ )
{


LcdSend( LcdCache[i], LCD_DATA );
}


LoWaterMark = ( ( 84 * 48 ) / 8 ) - 1;
HiWaterMark = 0;

UpdateLcd = 0;
}







static void LcdSend ( byte data, LcdCmdData cd )
{

(*(volatile uint8_t *)((0x05) + 0x20)) &= ~( (1 << (2)) );
if ( cd == LCD_DATA )
{
(*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << (1));
}
else
{
(*(volatile uint8_t *)((0x05) + 0x20)) &= ~( (1 << (1)) );
}

(*(volatile uint8_t *)((0x2E) + 0x20)) = data;

while ( ((*(volatile uint8_t *)((0x2D) + 0x20)) & 0x80) != 0x80 );

(*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << (2));
}






void LcdContrast ( byte contrast )
{
LcdSend( 0x21, LCD_CMD );
LcdSend( 0x80 | contrast, LCD_CMD );
LcdSend( 0x20, LCD_CMD );
}






static void Delay ( void )
{
int i;
for ( i = -32000; i < 32000; i++ );
}






byte LcdGotoXYFont ( byte x, byte y )
{

if( x > 13 || y > 5 ) return 1;

LcdCacheIdx = x * 6 + y * 84;
return 0;
}







byte LcdChr ( LcdFontSize size, byte ch )
{
byte i, c;
byte b1, b2;
int tmpIdx;
if ( LcdCacheIdx < LoWaterMark )
{

LoWaterMark = LcdCacheIdx;
}
if ( (ch >= 0x20) && (ch <= 0x7F) )
{

ch -= 32;
}
else if ( ch >= 0xC0 )
{

ch -= 96;
}
else
{

ch = 95;
}
if ( size == FONT_1X )
{
for ( i = 0; i < 5; i++ )
{

LcdCache[LcdCacheIdx++] = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&(FontLookup[ch][i]))); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })) << 1;
}
}
else if ( size == FONT_2X )
{
tmpIdx = LcdCacheIdx - 84;
if ( tmpIdx < LoWaterMark )
{
LoWaterMark = tmpIdx;
}
if ( tmpIdx < 0 ) return 1;
for ( i = 0; i < 5; i++ )
{

c = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&(FontLookup[ch][i]))); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })) << 1;


b1 = (c & 0x01) * 3;
b1 |= (c & 0x02) * 6;
b1 |= (c & 0x04) * 12;
b1 |= (c & 0x08) * 24;
c >>= 4;

b2 = (c & 0x01) * 3;
b2 |= (c & 0x02) * 6;
b2 |= (c & 0x04) * 12;
b2 |= (c & 0x08) * 24;

LcdCache[tmpIdx++] = b1;
LcdCache[tmpIdx++] = b1;
LcdCache[tmpIdx + 82] = b2;
LcdCache[tmpIdx + 83] = b2;
}

LcdCacheIdx = (LcdCacheIdx + 11) % ( ( 84 * 48 ) / 8 );
}
if ( LcdCacheIdx > HiWaterMark )
{

HiWaterMark = LcdCacheIdx;
}

LcdCache[LcdCacheIdx] = 0x00;

if(LcdCacheIdx == (( ( 84 * 48 ) / 8 ) - 1) )
{
LcdCacheIdx = 0;
return 2;
}

LcdCacheIdx++;
return 0;
}







byte LcdStr ( LcdFontSize size, byte dataArray[] )
{
byte tmpIdx=0;
byte response;
while( dataArray[ tmpIdx ] != '\0' )
{

response = LcdChr( size, dataArray[ tmpIdx ] );


if( response == 1)
return 1;

tmpIdx++;
}
return 0;
}
# 360 "../n3310/n3310.c"
byte LcdFStr ( LcdFontSize size, const byte *dataPtr )
{
byte c;
byte response;
for ( c = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(dataPtr)); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })); c; ++dataPtr, c = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(dataPtr)); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })) )
{

response = LcdChr( size, c );
if(response == 1)
return 1;
}
return 0;
}
