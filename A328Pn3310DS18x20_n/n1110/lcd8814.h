/*
 * lcd8814.h
 *
 *  Created on: Jan 20, 2015
 *      Author: izhuk
 */

#ifndef LCD8814_H_
#define LCD8814_H_
/******************************************************************************
 * On the base of LCD Nokia1110i driver of
 * Skatech Research Lab, 2000-2011.
 *****************************************************************************/

#include <avr/io.h>

// comment this line when LCD model is Nokia1110i
//#define LCD1100

// connection details of LCD
#define LCD_PORT PORTB
#define LCD_DDRS DDRB
#define LCD_PINS PINB
#define LCD_PINCLC PB5
#define LCD_PINSDA PB3
#define LCD_PINCSX PB2

void LCD_send_bit(uint8_t data);
void LCD_send_byte(uint8_t data, uint8_t dorc);
void LCD_send_command(uint8_t data);
void LCD_send_data(uint8_t data);
void LCD_initialize();
void LCD_initialize2();
void LCD_Update();
void LCD_Clear_Screen(void);

// comment this line when LCD model is Nokia1110i
#define LCD1100

// connection details of LCD
#define LCD_PORT PORTB
#define LCD_DDRS DDRB
#define LCD_PINS PINB
#define LCD_PINCLC PB5
#define LCD_PINSDA PB3
#define LCD_PINCSX PB2
#define LCD_PINRST PB4

#define LCD_X 96
#define LCD_Y 65
#define Cache_Size 96 * 9
//#define Cache_Size 96 * 10

#define SetYAddr 0xB0
#define SetXAddr4 0x00
#define SetXAddr3 0x10

#define swap(a, b) { int16_t t = a; a = b; b = t; }

#define SCLK_LCD_SET    LCD_PORT |= (1<<LCD_PINCLC)
#define SDA_LCD_SET     LCD_PORT |= (1<<LCD_PINSDA)
#define CS_LCD_SET      LCD_PORT |= (1<<LCD_PINCSX)
#define RST_LCD_SET     LCD_PORT |= (1<<LCD_PINRST)

#define SCLK_LCD_RESET  LCD_PORT &= ~(1<<LCD_PINCLC)
#define SDA_LCD_RESET   LCD_PORT &= ~(1<<LCD_PINSDA)
#define CS_LCD_RESET    LCD_PORT &= ~(1<<LCD_PINCSX)
#define RST_LCD_RESET   LCD_PORT &= ~(1<<LCD_PINRST)

#define LCD_PORT PORTB
#define LCD_DDR DDRB
#define LCD_DC_PIN PB1
#define LCD_CE_PIN PB2
#define SPI_MOSI_PIN PB3
#define LCD_RST_PIN PB4
#define SPI_CLK_PIN PB5
#define LCD_CMD 0
#define LCD_DATA 1

#endif /* LCD8814_H_ */
