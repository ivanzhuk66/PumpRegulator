/*
 * lcd8814c.h
 *
 *  Created on: Jan 20, 2015
 *      Author: izhuk
 */

#ifndef LCD8814C_H_
#define LCD8814C_H_
 /******************************************************************************
 * On the base of LCD Nokia1110i driver of
 * Skatech Research Lab, 2000-2011.
 *****************************************************************************/

#include <util/delay.h>
#include <avr/pgmspace.h>
#include "lcd8814.h"

#define sbi(port, bit) ((port) |= (_BV(bit)))
#define cbi(port, bit) ((port) &= ~(_BV(bit)))

extern int8_t 	xUpdateMin, yUpdateMin,
			xUpdateMax, yUpdateMax;
extern byte LCDCache [Cache_Size];


void LCD_send_bit(uint8_t data)
{
	if (data)
	{
		sbi(LCD_PORT, LCD_PINSDA);
	}
	else cbi(LCD_PORT, LCD_PINSDA);
	_delay_us(40);
	sbi(LCD_PORT, LCD_PINCLC);
	_delay_us(20);
	cbi(LCD_PORT, LCD_PINCLC);
	_delay_us(40);
}

void LCD_send_byte(uint8_t data, uint8_t dorc)
{
	cbi(LCD_PORT, LCD_PINCSX);

	LCD_send_bit(dorc);

	for (uint8_t m = 0x80; m > 0x00; m >>= 1)
	{
		LCD_send_bit(data & m);
	}

	sbi(LCD_PORT, LCD_PINCSX);
}

/*
void LCD_send_byte(uint8_t c, uint8_t mode)
{
    CS_LCD_RESET;
	_delay_us(10);
    SCLK_LCD_RESET;

    if(mode) SDA_LCD_SET;
	 else	 SDA_LCD_RESET;
    _delay_us(10);
    SCLK_LCD_SET;
		_delay_us(30);
    for(unsigned char i=0;i<8;i++)
    {
    	SCLK_LCD_RESET;

        if(c & 0x80) SDA_LCD_SET;
         else	     SDA_LCD_RESET;

        _delay_us(10);
        SCLK_LCD_SET;
        c <<= 1;
//        _delay_ms(3);
        _delay_us(22);
     }

    CS_LCD_SET;
}
*/
//
void LCD_send_command(uint8_t data)
{
	LCD_send_byte(data, 0x00);
}

void LCD_send_data(uint8_t data)
{
	LCD_send_byte(data, 0x01);
}
/*
void LCD_initialize()
{
	// port configuration
	// signal up LCD_CSX
	LCD_PORT |= _BV(LCD_PINCSX);
	// data direction for signals LCD_CLC, LCD_SDA, LCD_CSX
	LCD_DDRS |= _BV(LCD_PINCLC) | _BV(LCD_PINSDA) | _BV(LCD_PINCSX);


  // internal reset
  LCD_send_command(0xE2);

	// reset delay
	_delay_ms(200);

  // thermal compensation on
  LCD_send_command(0xEB);

  // supply mode
  LCD_send_command(0x2F);

  // horizontal reverse (A1, A9)
  LCD_send_command(0xA1);

#ifdef LCD1100
  // vertical reverse
	LCD_send_command(0xC8);
#endif

  // clear screen
  LCD_send_command(0xA4);

  // positive mode (A6, A7)
  LCD_send_command(0xA6);

  // display on
  LCD_send_command(0xAF);

  // max contract 0
  LCD_send_command(0x90);
}
*/
void LCD_initialize2(){
	LCD_DDRS |= (1<<LCD_PINCLC)|(1<<LCD_PINSDA)|(1<<LCD_PINCSX)|(1<<LCD_PINRST);

	CS_LCD_RESET;
	_delay_ms(5);
	RST_LCD_RESET;

	_delay_ms(10);

	RST_LCD_SET;

	LCD_send_command(0x20); //  Vop
	LCD_send_command(0x90);
	LCD_send_command(0xA4); // all on/normal display
	LCD_send_command(0x2F); // Power control set(charge pump on/off)
	LCD_send_command(0x40); // set start row address = 0
	LCD_send_command(0xB0); //
	LCD_send_command(0x10); //
	LCD_send_command(0x0);  //
	//LCD_send_command(0xC8); // mirror Y axis (about X axis)
#ifdef LCD1100
  // vertical reverse
	LCD_send_command(0xC8);
#endif
	LCD_send_command(0xA1); //
	LCD_send_command(0xAC); // set initial row (R0) of the display
	LCD_send_command(0x07);
	//LCD_send_command(0xF9); //
	LCD_send_command(0xAF); //

	LCD_Clear_Screen(); // clear LCD

	LCD_send_command(0xA7); 	//
	_delay_ms(500);                		// 1/2 Sec delay
	LCD_send_command(0xA6); 	//
	_delay_ms(1000);               		// 1 Sec delay
}
//
void LCD_Clear_Screen(void)
{
	LCD_send_command(0x40); // Y = 0
	LCD_send_command(0xB0);
	LCD_send_command(0x10); // X = 0
	LCD_send_command(0x00);
	//LCD_send_command(0xAE); // disable display;

	for(unsigned int i=0;i<864;i++) LCD_send_data(0x00);

	//LCD_send_command(0x07);
	//LCD_send_command(0xAF); // enable display;
}

//******************************************************************************

void LCD_Update() {
	for(int p = 0; p < 9; p++){
		if(yUpdateMin >= ((p+1) *8)) {
			continue;
		}
		if(yUpdateMax < p*8){
				break;
		}
//		LCD_send_command(0x40);
		LCD_send_command(SetYAddr | p);

		int col = xUpdateMin;
		int maxcol = xUpdateMax;

		//LCD_send_command(SetXAddr3 | (col / 16));
		LCD_send_command(SetXAddr3 | (col >> 4));
		//LCD_send_command(SetXAddr4 | (col - (16 * (col/16))));
		LCD_send_command(SetXAddr4 | (col & 0x000f));
		//LCD_send_command(SetXAddr3 | (col / 16));
//		LCD_send_command(SetXAddr3 | (col >> 4));

		for(; col <= maxcol; col++){
			LCD_send_data(LCDCache[(LCD_X * p) + col]);
		}

	}
	xUpdateMin = LCD_X - 1;
	xUpdateMax = 0;
	yUpdateMin = LCD_Y -1;
	yUpdateMax = 0;
}


#endif /* LCD8814C_H_ */
