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

EEPROM_IMAGE += \
A328Pn3310DS18x20_n.eep \

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
	$(MAKE) --no-print-directory post-build

A328Pn3310DS18x20_n.lss: A328Pn3310DS18x20_n.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S A328Pn3310DS18x20_n.elf  >"A328Pn3310DS18x20_n.lss"
	@echo 'Finished building: $@'
	@echo ' '

A328Pn3310DS18x20_n.hex: A328Pn3310DS18x20_n.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex A328Pn3310DS18x20_n.elf  "A328Pn3310DS18x20_n.hex"
	@echo 'Finished building: $@'
	@echo ' '

A328Pn3310DS18x20_n.eep: A328Pn3310DS18x20_n.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex A328Pn3310DS18x20_n.elf  "A328Pn3310DS18x20_n.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: A328Pn3310DS18x20_n.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p A328Pn3310DS18x20_n.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(EEPROM_IMAGE)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS) A328Pn3310DS18x20_n.elf
	-@echo ' '

post-build:
	-@echo 'Build BIN file for Proteus7 EEPROM load and make SYM file'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex A328Pn3310DS18x20_n.elf A328Pn3310DS18x20_n.eep; avr-objcopy -I ihex -O binary A328Pn3310DS18x20_n.eep A328Pn3310DS18x20_n.bin; avr-nm -n A328Pn3310DS18x20_n.elf >> A328Pn3310DS18x20_n.sym;
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
