################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../keypad/keyadc.c 

S_SRCS += \
../keypad/adc.s 

OBJS += \
./keypad/adc.o \
./keypad/keyadc.o 

C_DEPS += \
./keypad/keyadc.d 

S_DEPS += \
./keypad/adc.d 


# Each subdirectory must supply rules for building sources it contributes
keypad/%.o: ../keypad/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Assembler'
	avr-gcc -x assembler-with-cpp -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/keypad" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/extint" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/gsm-sms" -I"C:\WinAVR-20100110\avr\include" -I"C:\AVR Toolchain\avr\include" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110" -mmcu=atmega328p -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

keypad/%.o: ../keypad/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n3310" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/keypad" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/extint" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/gsm-sms" -I"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110" -Wall -O1 -fpack-struct -fshort-enums -std=gnu99 -funsigned-char -funsigned-bitfields -save-temps -mmcu=atmega328p -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


