#ifndef ONEWIRE_H_
#define ONEWIRE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

/*******************************************/
/* Hardware connection                     */
/*******************************************/

/* Define OW_ONE_BUS if only one 1-Wire-Bus is used
   in the application -> shorter code.
   If not defined make sure to call ow_set_bus() before using 
   a bus. Runtime bus-select increases code size by around 300 
   bytes so use OW_ONE_BUS if possible */
//#define OW_ONE_BUS

#define MAXIM_SEARCH_ENABLE 1


#ifdef OW_ONE_BUS

#define OW_PIN  PD4
#define OW_IN   PIND
#define OW_OUT  PORTD
#define OW_DDR  DDRD
#define OW_CONF_DELAYOFFSET 0

#else 
#if ( F_CPU < 1843200 )
#warning | Experimental multi-bus-mode is not tested for 
#warning | frequencies below 1,84MHz. Use OW_ONE_WIRE or
#warning | faster clock-source (i.e. internal 2MHz R/C-Osc.).
#endif
#define OW_CONF_CYCLESPERACCESS 13
#define OW_CONF_DELAYOFFSET ( (uint16_t)( ((OW_CONF_CYCLESPERACCESS) * 1000000L) / F_CPU ) )
#define OW_PIN_SETB  PD4

#define	THERM_PORT	PORTD
#define	THERM_DDR	DDRD
#define	THERM_PIN	PIND
#define	THERM_IO	OW_PIN_SETB
#endif

// Recovery time (T_Rec) minimum 1usec - increase for long lines 
// 5 usecs is a value give in some Maxim AppNotes
// 30u secs seem to be reliable for longer lines
//#define OW_RECOVERY_TIME        5  /* usec */
//#define OW_RECOVERY_TIME      300 /* usec */
#define OW_RECOVERY_TIME         10 /* usec */

// Use AVR's internal pull-up resistor instead of external 4,7k resistor.
// Based on information from Sascha Schade. Experimental but worked in tests
// with one DS18B20 and one DS18S20 on a rather short bus (60cm), where both 
// sensores have been parasite-powered.
#define OW_USE_INTERNAL_PULLUP     1  /* 0=external, 1=internal */

/*******************************************/


#define OW_MATCH_ROM    0x55
#define OW_SKIP_ROM     0xCC
#define OW_SEARCH_ROM   0xF0

#define OW_SEARCH_FIRST 0xFF        // start new search
#define OW_PRESENCE_ERR 0xFF
#define OW_DATA_ERR     0xFE
#define OW_LAST_DEVICE  0x00        // last device found

// rom-code size including CRC
#define OW_ROMCODE_SIZE 8

extern uint8_t ow_reset(void);

extern uint8_t ow_bit_io( uint8_t b );
extern uint8_t ow_byte_wr( uint8_t b );
extern uint8_t ow_byte_rd( void );
extern uint8_t ow_byte_wr_with_parasite_enable( uint8_t b );

extern uint8_t ow_rom_search( uint8_t diff, uint8_t *id );

extern void ow_command( uint8_t command, uint8_t *id );
extern void ow_command_with_parasite_enable( uint8_t command, uint8_t *id );

extern void ow_parasite_enable( void );
extern void ow_parasite_disable( void );
extern uint8_t ow_input_pin_state( void );

#ifdef OW_ONE_BUS
#define OW_GET_IN_SHIFT()   (( OW_IN & (1<<OW_PIN)) >> OW_PIN)
#define OW_GET_IN()   ( OW_IN & (1<<OW_PIN))
#define OW_OUT_LOW()  ( OW_OUT &= (~(1 << OW_PIN)) )
#define OW_OUT_HIGH() ( OW_OUT |= (1 << OW_PIN) )
#define OW_DIR_IN()   ( OW_DDR &= (~(1 << OW_PIN )) )
#define OW_DIR_OUT()  ( OW_DDR |= (1 << OW_PIN) )

#else

/* set bus-config with ow_set_bus() */
extern uint8_t OW_PIN;
extern uint8_t OW_PIN_MASK; 
extern volatile uint8_t* OW_IN;
extern volatile uint8_t* OW_OUT;
extern volatile uint8_t* OW_DDR;
#define OW_GET_IN_SHIFT()   (( *OW_IN & (OW_PIN_MASK)) == (uint8_t) OW_PIN_MASK)
#define OW_GET_IN()   ( *OW_IN & OW_PIN_MASK )
#define OW_OUT_LOW()  ( *OW_OUT &= (uint8_t) ~OW_PIN_MASK )
#define OW_OUT_HIGH() ( *OW_OUT |= (uint8_t)  OW_PIN_MASK )
#define OW_DIR_IN()   ( *OW_DDR &= (uint8_t) ~OW_PIN_MASK )
#define OW_DIR_OUT()  ( *OW_DDR |= (uint8_t)  OW_PIN_MASK )

#endif

#ifndef OW_ONE_BUS
extern void ow_set_bus( volatile uint8_t* in,
	volatile uint8_t* out,
	volatile uint8_t* ddr,
	uint8_t pin );
#endif

#ifdef __cplusplus
}
#endif

#endif
