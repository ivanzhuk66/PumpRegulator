# 1 "../ds18x20/crc8.c"
# 1 "<command-line>"
# 1 "../ds18x20/crc8.c"


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
# 4 "../ds18x20/crc8.c" 2




uint8_t crc8( uint8_t *data, uint16_t number_of_bytes_in_data )
{
 uint8_t crc;
 uint16_t loop_count;
 uint8_t bit_counter;
 uint8_t b;
 uint8_t feedback_bit;

 crc = 0x00;

 for (loop_count = 0; loop_count != number_of_bytes_in_data; loop_count++)
 {
  b = data[loop_count];

  bit_counter = 8;
  do {
   feedback_bit = (crc ^ b) & 0x01;

   if ( feedback_bit == 0x01 ) {
    crc = crc ^ 0x18;
   }
   crc = (crc >> 1) & 0x7F;
   if ( feedback_bit == 0x01 ) {
    crc = crc | 0x80;
   }

   b = b >> 1;
   bit_counter--;

  } while (bit_counter > 0);
 }

 return crc;
}
