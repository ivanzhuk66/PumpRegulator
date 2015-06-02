# 1 "../extint/extint.c"
# 1 "<command-line>"
# 1 "../extint/extint.c"






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
# 8 "../extint/extint.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/interrupt.h" 1 3
# 9 "../extint/extint.c" 2
# 1 "../extint/extint.h" 1
# 28 "../extint/extint.h"
void ExtInt0Enable(void);

void ExtInt0Disable(void);

void ExtInt1Enable(void);

void ExtInt1Disable(void);
# 10 "../extint/extint.c" 2

uint8_t extstate = 0;
uint8_t powergone = 0;
extern char wait_powergone;

void ExtInt0Enable(){
  (*(volatile uint8_t *)((0x1D) + 0x20)) &= ~(1 << 0);


  (*(volatile uint8_t *)(0x69)) &= ~( (1 << 1) | (1 << 0) );


  (*(volatile uint8_t *)((0x0A) + 0x20)) &= ~(1 << 2);
     (*(volatile uint8_t *)((0x1C) + 0x20)) |= (1 << 0);
     (*(volatile uint8_t *)((0x1D) + 0x20)) |= (1 << 0);
 __asm__ __volatile__ ("sei" ::: "memory");
}

void ExtInt0Disable(){

 (*(volatile uint8_t *)((0x1D) + 0x20)) &= ~(1 << 0);
 (*(volatile uint8_t *)((0x1C) + 0x20)) |= (1 << 0);
}


void __vector_1 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_1 (void) {
 if(extstate >= 3)
  extstate=0;
 else
  extstate++;

}

void ExtInt1Enable(){
  (*(volatile uint8_t *)((0x1D) + 0x20)) &= ~(1 << 1);



  (*(volatile uint8_t *)(0x69)) &= ~( (1 << 3)); (*(volatile uint8_t *)(0x69)) |= (1 << 2);

  (*(volatile uint8_t *)((0x0A) + 0x20)) &= ~(1 << 3);



     (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 3);

     (*(volatile uint8_t *)((0x1C) + 0x20)) |= (1 << 1);
     (*(volatile uint8_t *)((0x1D) + 0x20)) |= (1 << 1);
 __asm__ __volatile__ ("sei" ::: "memory");
}

void ExtInt1Disable(){
 (*(volatile uint8_t *)((0x1D) + 0x20)) &= ~(1 << 1);
 (*(volatile uint8_t *)((0x1C) + 0x20)) |= (1 << 1);
}

void __vector_2 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_2 (void) {

 if((*(volatile uint8_t *)((0x09) + 0x20)) & (1 << 3)){
  if(powergone >= 100)
   powergone=1;
  else
   powergone++;
 } else {wait_powergone = 0; powergone=0;}

}
