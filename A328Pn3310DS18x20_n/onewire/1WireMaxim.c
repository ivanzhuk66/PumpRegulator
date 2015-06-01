//

// definitions
#define FALSE 0
#define TRUE  1

#include "onewire.h"
#ifdef MAXIM_SEARCH_ENABLE

#include <avr/io.h>
#include <util/delay.h>
#include <util/atomic.h>
#include "ds18x20.h"

//	A few useful macros from http://w8bh.net/avr/AvrTherm1.pdf
//================================================================================================
//#define	THERM_PORT	PORTD
//#define	THERM_DDR	DDRD
//#define	THERM_PIN	PIND
//#define	THERM_IO	OW_PIN_SETB

//Next are a few useful macros to set, clear, and read individual IO port bits:
#define	ClearBit(x,y)	x &= ~_BV(y)
// equivalent to cbi(x,y)
#define	SetBit(x,y)	x |= _BV(y)
// equivalent to sbi(x,y)
#define	ReadBit(x,y)	x & _BV(y)
// call with PINx and bit#
#define	THERM_INPUT()	ClearBit(THERM_DDR,THERM_IO)
// make pin an input
#define	THERM_OUTPUT()	SetBit(THERM_DDR,THERM_IO)
// make pin an output
#define	THERM_LOW()	ClearBit(THERM_PORT,THERM_IO)
// take (output) pin low
#define	THERM_HIGH()	SetBit(THERM_PORT,THERM_IO)
// take (output) pin high
#define	THERM_READ()	ReadBit(THERM_PIN,THERM_IO)
// get (input) pin value
//================================================================================================

// method declarations
uint8_t OWReset();
uint8_t  OWFirst();
uint8_t  OWNext();
uint8_t  OWVerify();

void OWWriteByte(unsigned char byte_value);
void OWWriteBit(unsigned char bit_value);
unsigned char OWReadBit();
uint8_t  OWSearch();
unsigned char docrc8(unsigned char value);

// global search state
unsigned char ROM_NO[8];
uint8_t LastDiscrepancy;
uint8_t LastFamilyDiscrepancy;
uint8_t LastDeviceFlag;
unsigned char crc8m;

//--------------------------------------------------------------------------
// Find the 'first' devices on the 1-Wire bus
// Return TRUE  : device found, ROM number in ROM_NO buffer
//        FALSE : no device present
//
uint8_t OWFirst()
{
   // reset the search state
   LastDiscrepancy = 0;
   LastDeviceFlag = FALSE;
   LastFamilyDiscrepancy = 0;

   return OWSearch();
}

void ResetDiscrepancy()
{
   // reset the search state
   LastDiscrepancy = 0;
   LastDeviceFlag = FALSE;
   LastFamilyDiscrepancy = 0;

}
//--------------------------------------------------------------------------
// Find the 'next' devices on the 1-Wire bus
// Return TRUE  : device found, ROM number in ROM_NO buffer
//        FALSE : device not found, end of search
//
uint8_t OWNext()
{
   // leave the search state alone
   return OWSearch();
}

//--------------------------------------------------------------------------
// Perform the 1-Wire Search Algorithm on the 1-Wire bus using the existing
// search state.
// Return TRUE  : device found, ROM number in ROM_NO buffer
//        FALSE : device not found, end of search
//
uint8_t OWSearch()
{
   uint8_t id_bit_number;
   uint8_t last_zero, rom_byte_number, search_result;
   uint8_t id_bit, cmp_id_bit;
   unsigned char rom_byte_mask, search_direction;

   // initialize for search
   id_bit_number = 1;
   last_zero = 0;
   rom_byte_number = 0;
   rom_byte_mask = 1;
   search_result = 0;
   crc8m = 0;

   // if the last call was not the last one
   if (!LastDeviceFlag)
   {
      // 1-Wire reset
      if (!OWReset())
      {
         // reset the search
         LastDiscrepancy = 0;
         LastDeviceFlag = FALSE;
         LastFamilyDiscrepancy = 0;
         return FALSE;
      }

      // issue the search command 
      OWWriteByte(0xF0);  

      // loop to do the search
      do
      {
         // read a bit and its complement
         id_bit = OWReadBit();
         cmp_id_bit = OWReadBit();

         // check for no devices on 1-wire
         if ((id_bit == 1) && (cmp_id_bit == 1))
            break;
         else
         {
            // all devices coupled have 0 or 1
            if (id_bit != cmp_id_bit)
               search_direction = id_bit;  // bit write value for search
            else
            {
               // if this discrepancy if before the Last Discrepancy
               // on a previous next then pick the same as last time
               if (id_bit_number < LastDiscrepancy)
                  search_direction = ((ROM_NO[rom_byte_number] & rom_byte_mask) > 0);
               else
                  // if equal to last pick 1, if not then pick 0
                  search_direction = (id_bit_number == LastDiscrepancy);

               // if 0 was picked then record its position in LastZero
               if (search_direction == 0)
               {
                  last_zero = id_bit_number;

                  // check for Last discrepancy in family
                  if (last_zero < 9)
                     LastFamilyDiscrepancy = last_zero;
               }
            }

            // set or clear the bit in the ROM byte rom_byte_number
            // with mask rom_byte_mask
            if (search_direction == 1)
              ROM_NO[rom_byte_number] |= rom_byte_mask;
            else
              ROM_NO[rom_byte_number] &= ~rom_byte_mask;

            // serial number search direction write bit
            OWWriteBit(search_direction);

            // increment the byte counter id_bit_number
            // and shift the mask rom_byte_mask
            id_bit_number++;
            rom_byte_mask <<= 1;

            // if the mask is 0 then go to new SerialNum byte rom_byte_number and reset mask
            if (rom_byte_mask == 0)
            {
                docrc8(ROM_NO[rom_byte_number]);  // accumulate the CRC
                rom_byte_number++;
                rom_byte_mask = 1;
            }
         }
      }
      while(rom_byte_number < 8);  // loop until through all ROM bytes 0-7

      // if the search was successful then
      if (!((id_bit_number < 65) || (crc8m != 0)))
      {
         // search successful so set LastDiscrepancy,LastDeviceFlag,search_result
         LastDiscrepancy = last_zero;

         // check for last device
         if (LastDiscrepancy == 0)
            LastDeviceFlag = TRUE;
         
         search_result = TRUE;
      }
   }

   // if no device found then reset counters so next 'search' will be like a first
   if (!search_result || !ROM_NO[0])
   {
      LastDiscrepancy = 0;
      LastDeviceFlag = FALSE;
      LastFamilyDiscrepancy = 0;
      search_result = FALSE;
   }

   return search_result;
}

//--------------------------------------------------------------------------
// Verify the device with the ROM number in ROM_NO buffer is present.
// Return TRUE  : device verified present
//        FALSE : device not present
//
uint8_t OWVerify()
{
   unsigned char rom_backup[8];
   uint8_t i,rslt,ld_backup,ldf_backup,lfd_backup;

   // keep a backup copy of the current state
   for (i = 0; i < 8; i++)
      rom_backup[i] = ROM_NO[i];
   ld_backup = LastDiscrepancy;
   ldf_backup = LastDeviceFlag;
   lfd_backup = LastFamilyDiscrepancy;

   // set search to find the same device
   LastDiscrepancy = 64;
   LastDeviceFlag = FALSE;

   if (OWSearch())
   {
      // check if same device found
      rslt = TRUE;
      for (i = 0; i < 8; i++)
      {
         if (rom_backup[i] != ROM_NO[i])
         {
            rslt = FALSE;
            break;
         }
      }
   }
   else
     rslt = FALSE;

   // restore the search state 
   for (i = 0; i < 8; i++)
      ROM_NO[i] = rom_backup[i];
   LastDiscrepancy = ld_backup;
   LastDeviceFlag = ldf_backup;
   LastFamilyDiscrepancy = lfd_backup;

   // return the result of the verify
   return rslt;
}

//--------------------------------------------------------------------------
// 1-Wire Functions to be implemented for a particular platform
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Reset the 1-Wire bus and return the presence of any device
// Return TRUE  : device present
//        FALSE : no device present
//
uint8_t OWReset()
{

        uint8_t r;
        uint8_t retries = 125;

        NOINTERRUPT();
		OW_DIR_IN();
        DOINTERRUPT();
        // wait until the wire is high... just in case
        do {
                if (--retries == 0) return 0;
					_delay_us(2);
                //delayMicroseconds(2);
		} while ( !OW_GET_IN());

        NOINTERRUPT();
		OW_OUT_LOW();
		OW_DIR_OUT();
        DOINTERRUPT();
		_delay_us(480);
        NOINTERRUPT();
		OW_DIR_IN();
		_delay_us(70);
		r = !OW_GET_IN();
        DOINTERRUPT();
		_delay_us(410);
        return r;
//
}

//--------------------------------------------------------------------------
// Send 8 bits of data to the 1-Wire bus
//
void OWWriteByte(unsigned char v)
{
   // platform specific
   
//
// Write a byte. The writing code uses the active drivers to raise the
// pin high, if you need power after the write (e.g. DS18S20 in
// parasite power mode) then set 'power' to 1, otherwise the pin will
// go tri-state at the end of the write to avoid heating in a short or
// other mishap.
//
	uint8_t power;
    uint8_t bitMask;
	
	power = 1;


    for (bitMask = 0x01; bitMask; bitMask <<= 1) {
        OWWriteBit( (bitMask & v)?1:0);
    }
    if ( !power) {
        NOINTERRUPT();
		OW_DIR_IN();
		OW_OUT_LOW();	//Tri-state (Hi-Z)
        DOINTERRUPT();
    }

}

//--------------------------------------------------------------------------
// Send 1 bit of data to teh 1-Wire bus
//
void OWWriteBit(unsigned char v)
{
   // platform specific

        NOINTERRUPT();

		OW_OUT_LOW();
		OW_DIR_OUT();

	if (v & 1) {
		_delay_us(10);
		OW_OUT_HIGH();
        DOINTERRUPT();
		_delay_us(55);
	} else {
		_delay_us(65);
		OW_OUT_HIGH();
        DOINTERRUPT();
		_delay_us(5);
	}

//

}

//--------------------------------------------------------------------------
// Read 1 bit of data from the 1-Wire bus 
// Return 1 : bit read is 1
//        0 : bit read is 0
//
unsigned char OWReadBit()
{
//	unsigned char pin_state;
   // platform specific

 uint8_t r;
        NOINTERRUPT();
        OW_OUT_LOW();
		OW_DIR_OUT();
		_delay_us(2);
		OW_DIR_IN();  // let pin float, pull up will raise
		_delay_us(10);
		r = OW_GET_IN_SHIFT();
		DOINTERRUPT();
		_delay_us(53);
        return r;
//

}
//
void OWMatchRom(unsigned char * romValue)
{
    unsigned char bytesLeft = 8;

    // Send the MATCH ROM command.
    OWWriteByte(DS18X20_MATCH_ROM);

    // Do once for each byte.
    while (bytesLeft > 0)
    {
        // Transmit 1 byte of the ID to match.
    	OWWriteByte(*romValue++);
        bytesLeft--;
    }
}


// TEST BUILD
static unsigned char dscrc_table[] = {
        0, 94,188,226, 97, 63,221,131,194,156,126, 32,163,253, 31, 65,
      157,195, 33,127,252,162, 64, 30, 95,  1,227,189, 62, 96,130,220,
       35,125,159,193, 66, 28,254,160,225,191, 93,  3,128,222, 60, 98,
      190,224,  2, 92,223,129, 99, 61,124, 34,192,158, 29, 67,161,255,
       70, 24,250,164, 39,121,155,197,132,218, 56,102,229,187, 89,  7,
      219,133,103, 57,186,228,  6, 88, 25, 71,165,251,120, 38,196,154,
      101, 59,217,135,  4, 90,184,230,167,249, 27, 69,198,152,122, 36,
      248,166, 68, 26,153,199, 37,123, 58,100,134,216, 91,  5,231,185,
      140,210, 48,110,237,179, 81, 15, 78, 16,242,172, 47,113,147,205,
       17, 79,173,243,112, 46,204,146,211,141,111, 49,178,236, 14, 80,
      175,241, 19, 77,206,144,114, 44,109, 51,209,143, 12, 82,176,238,
       50,108,142,208, 83, 13,239,177,240,174, 76, 18,145,207, 45,115,
      202,148,118, 40,171,245, 23, 73,  8, 86,180,234,105, 55,213,139,
       87,  9,235,181, 54,104,138,212,149,203, 41,119,244,170, 72, 22,
      233,183, 85, 11,136,214, 52,106, 43,117,151,201, 74, 20,246,168,
      116, 42,200,150, 21, 75,169,247,182,232, 10, 84,215,137,107, 53};

//--------------------------------------------------------------------------
// Calculate the CRC8 of the byte value provided with the current 
// global 'crc8' value. 
// Returns current global crc8 value
//
unsigned char docrc8(unsigned char value)
{
   crc8m = dscrc_table[crc8m ^ value];
   return crc8m;
}
#endif
