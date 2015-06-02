################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include uart/subdir.mk
-include timer/subdir.mk
-include onewire/subdir.mk
-include lcd/subdir.mk
-include keypad/subdir.mk
-include gsm-sms/subdir.mk
-include extint/subdir.mk
-include ds18x20/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
A328Pn3310DS18x20_n.lss \

FLASH_IMAGE += \
A328Pn3310DS18x20_n.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: A328Pn3310DS18x20_n.elf secondary-outputs

# Tool invocations
A328Pn3310DS18x20_n.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,A328Pn3310DS18x20_n.map -mmcu=atmega328p -o"A328Pn3310DS18x20_n.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

A328Pn3310DS18x20_n.lss: A328Pn3310DS18x20_n.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S A328Pn3310DS18x20_n.elf  >"A328Pn3310DS18x20_n.lss"
	@echo 'Finished building: $@'
	@echo ' '

A328Pn3310DS18x20_n.hex: A328Pn3310DS18x20_n.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -O ihex A328Pn3310DS18x20_n.elf  "A328Pn3310DS18x20_n.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: A328Pn3310DS18x20_n.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p A328Pn3310DS18x20_n.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS) A328Pn3310DS18x20_n.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
