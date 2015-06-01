/*
 * n3310.h
 */

#ifndef N3310_H_
#define N3310_H_

/*
* http://www.microsyl.com/index.php/2010/03/24/nokia-lcd-library/
* http://fandigunawan.wordpress.com/2008/06/18/lcd-nokia-3310-pcd8544-driver-in-winavravr-gcc/
* http://radiokot.ru/articles/29/
* http://we.easyelectronics.ru/profile/XANDER/
* for WinAVR, GCC for AVR platform
*/

#define LCD_PORT PORTB
#define LCD_DDR DDRB

#define LCD_DC_PIN PB1
#define LCD_CE_PIN PB2
#define SPI_MOSI_PIN PB3
#define LCD_RST_PIN PB4
#define SPI_CLK_PIN PB5

#define LCD_X_RES 84
#define LCD_Y_RES 48

#define EMPTY_SPACE_BARS 2
#define BAR_X 30
#define BAR_Y 47
#define FALSE 0
#define TRUE 1

#define OK 0
#define OUT_OF_BORDER 1
#define OK_WITH_WRAP 2

typedef enum
{
LCD_CMD = 0,
LCD_DATA = 1
} LcdCmdData;
typedef enum
{
PIXEL_OFF = 0,
PIXEL_ON = 1,
PIXEL_XOR = 2
} LcdPixelMode;
typedef enum
{
FONT_1X = 1,
FONT_2X = 2
} LcdFontSize;

#define LCD_X 84
#define LCD_Y 48
#define Cache_Size 84 * 7

#define SetYAddr 0x40
#define SetXAddr 0x80

#define swap(a, b) { int16_t t = a; a = b; b = t; }

void LCD_send_byte ( uint8_t data, LcdCmdData cd );
void LCD_send_command(uint8_t data);
void LCD_send_data(uint8_t data);
void LCD_initialize();
void LcdContrast ( byte contrast );


#endif /* N3310_H_ */
