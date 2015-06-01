################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../n3310/n3310.c 

OBJS += \
./n3310/n3310.o 

C_DEPS += \
./n3310/n3310.d 


# Each subdirectory must supply rules for building sources it contributes
n3310/%.o: ../n3310/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/izhuk/workspace/A328Pn3310DS18x20_n/ds18x20" -I"/home/izhuk/workspace/A328Pn3310DS18x20_n/n3310" -I"/home/izhuk/workspace/A328Pn3310DS18x20_n/uart" -I"/home/izhuk/workspace/A328Pn3310DS18x20_n/onewire" -I/usr/avr/include -I"/home/izhuk/workspace/A328Pn3310DS18x20_n/keypad" -I"/home/izhuk/workspace/A328Pn3310DS18x20_n" -Wall -g2 -gdwarf-2 -O1 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -g -save-temps -mmcu=atmega328p -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


