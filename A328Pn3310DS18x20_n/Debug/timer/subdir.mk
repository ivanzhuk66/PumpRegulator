################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../timer/timer.c 

OBJS += \
./timer/timer.o 

C_DEPS += \
./timer/timer.d 


# Each subdirectory must supply rules for building sources it contributes
timer/%.o: ../timer/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n3310" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/keypad" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/extint" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/gsm-sms" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110" -Wall -g2 -gdwarf-2 -O1 -fpack-struct -fshort-enums -std=gnu99 -funsigned-char -funsigned-bitfields -g -save-temps -mmcu=atmega328p -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


