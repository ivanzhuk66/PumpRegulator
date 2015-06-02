# 1 "../timer/timer.c"
# 1 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug//"
# 1 "<command-line>"
# 1 "../timer/timer.c"






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
# 8 "../timer/timer.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/interrupt.h" 1 3
# 9 "../timer/timer.c" 2
# 1 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/wdt.h" 1 3
# 10 "../timer/timer.c" 2
# 1 "../timer/timer.h" 1
# 11 "../timer/timer.h"
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
# 11 "../timer/timer.c" 2

time tAsync = {0,25,11,1,1,2014};
uint8_t TimeKeyPressed;
uint8_t CheckNoReadySNCounter;
char wait_powergone = 0;

void WDT_off(void)
{
 __asm__ __volatile__ ("cli" ::: "memory");
 __asm__ __volatile__ ("wdr");

 (*(volatile uint8_t *)((0x34) + 0x20)) &= ~(1<<3);



 (*(volatile uint8_t *)(0x60)) |= (1<<4) | (1<<3);

 (*(volatile uint8_t *)(0x60)) = 0x00;
 __asm__ __volatile__ ("sei" ::: "memory");
}


void __vector_6 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_6 (void)
{
   __asm__ __volatile__ ("cli" ::: "memory");
   __asm__ __volatile__ ("wdr");
   __asm__ __volatile__ ("sei" ::: "memory");
}

void WDT_setup()
{

 __asm__ __volatile__ ("cli" ::: "memory");
 (*(volatile uint8_t *)((0x34) + 0x20)) &= ~(1 << 3);
 (*(volatile uint8_t *)(0x60)) = (1 << 4) | (1 << 3);
 (*(volatile uint8_t *)(0x60)) = (1 << 6) | (1<< 0) | (1 << 5);

 __asm__ __volatile__ ("sei" ::: "memory");

}


void init_clock(void)
{

    int temp0,temp1;

    for(temp0=0;temp0<0x0040;temp0++)
    {
        for(temp1=0;temp1<0xFFFF;temp1++);
    }

    (*(volatile uint8_t *)(0x70)) &=~((1<<0)|(1<<1)|(1<<2));
    (*(volatile uint8_t *)(0xB6)) |= (1<<5);

    (*(volatile uint8_t *)(0xB2)) = 0x00;
    (*(volatile uint8_t *)(0xB1)) = 0x05;

    while((*(volatile uint8_t *)(0xB6))&0x1F);
    (*(volatile uint8_t *)(0x70)) |= (1<<0);
    __asm__ __volatile__ ("sei" ::: "memory");
}

void __vector_9 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_9 (void)
{

    if (++tAsync.second==60)
    {
        tAsync.second=0;
        TimeKeyPressed++;
        CheckNoReadySNCounter++;
        if (++tAsync.minute==60)
        {
            tAsync.minute=0;
            if (++tAsync.hour==24)
            {
                tAsync.hour=0;
                if (++tAsync.date==32)
                {
                    tAsync.month++;
                    tAsync.date=1;
                }
                else if (tAsync.date==31)
                {
                    if ((tAsync.month==4) || (tAsync.month==6) || (tAsync.month==9) || (tAsync.month==11))
                    {
                        tAsync.month++;
                        tAsync.date=1;
                    }
                }
                else if (tAsync.date==30)
                {
                    if(tAsync.month==2)
                    {
                       tAsync.month++;
                       tAsync.date=1;
                    }
                }
                else if (tAsync.date==29)
                {
                    if((tAsync.month==2) && (not_leap()))
                    {
                        tAsync.month++;
                        tAsync.date=1;
                    }
                }
                if (tAsync.month==13)
                {
                    tAsync.month=1;
                    tAsync.year++;
                }
            }
        }

        if(wait_powergone) wait_powergone++;

    }

}

char not_leap(void)
{
    if (!(tAsync.year%100))
        return (char)(tAsync.year%400);
    else
        return (char)(tAsync.year%4);
}
