/*
 * lcd.c
 *
 *  Created on: Jan 20, 2015
 *      Author: izhuk
 */

#include "lcdconf.h"

unsigned x=0,y=0;

#ifdef N3310_LCD
#include "n3310c.h"
//
#endif // N3310_LCD
//
#ifdef N1110_LCD
#include "lcd8814c.h"

#endif // N1110_LCD

byte LCDCache [Cache_Size];
//int 	xUpdateMin = 0, yUpdateMin = 0,
//			xUpdateMax = LCD_X - 1,yUpdateMax = LCD_Y - 1;
//static int Cursor_X = 0, Cursor_Y = 0;
int8_t 	xUpdateMin = 0, yUpdateMin = 0,
			xUpdateMax = LCD_X - 1,yUpdateMax = LCD_Y - 1;
static int8_t Cursor_X = 0, Cursor_Y = 0;

//static unsigned char wrap = 1;
static uint16_t textcolor = 0xFF, textbgcolor = 0x00;
static uint8_t textsize = 1;

extern char wbuffer[];
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//static unsigned char font[] PROGMEM = {
__attribute__((progmem)) static const char font[] = {
0x00, 0x00, 0x00, 0x00, 0x00,
0x3E, 0x5B, 0x4F, 0x5B, 0x3E,
0x3E, 0x6B, 0x4F, 0x6B, 0x3E,
0x1C, 0x3E, 0x7C, 0x3E, 0x1C,
0x18, 0x3C, 0x7E, 0x3C, 0x18,
0x1C, 0x57, 0x7D, 0x57, 0x1C,
0x1C, 0x5E, 0x7F, 0x5E, 0x1C,
0x00, 0x18, 0x3C, 0x18, 0x00,
0xFF, 0xE7, 0xC3, 0xE7, 0xFF,
0x00, 0x18, 0x24, 0x18, 0x00,
0xFF, 0xE7, 0xDB, 0xE7, 0xFF,
0x30, 0x48, 0x3A, 0x06, 0x0E,
0x26, 0x29, 0x79, 0x29, 0x26,
0x40, 0x7F, 0x05, 0x05, 0x07,
0x40, 0x7F, 0x05, 0x25, 0x3F,
0x5A, 0x3C, 0xE7, 0x3C, 0x5A,
0x7F, 0x3E, 0x1C, 0x1C, 0x08,
0x08, 0x1C, 0x1C, 0x3E, 0x7F,
0x14, 0x22, 0x7F, 0x22, 0x14,
0x5F, 0x5F, 0x00, 0x5F, 0x5F,
0x06, 0x09, 0x7F, 0x01, 0x7F,
0x00, 0x66, 0x89, 0x95, 0x6A,
0x60, 0x60, 0x60, 0x60, 0x60,
0x94, 0xA2, 0xFF, 0xA2, 0x94,
0x08, 0x04, 0x7E, 0x04, 0x08,
0x10, 0x20, 0x7E, 0x20, 0x10,
0x08, 0x08, 0x2A, 0x1C, 0x08,
0x08, 0x1C, 0x2A, 0x08, 0x08,
0x1E, 0x10, 0x10, 0x10, 0x10,
0x0C, 0x1E, 0x0C, 0x1E, 0x0C,
0x30, 0x38, 0x3E, 0x38, 0x30,
0x06, 0x0E, 0x3E, 0x0E, 0x06,
0x00, 0x00, 0x00, 0x00, 0x00,// 20
0x00, 0x00, 0x5f, 0x00, 0x00, // 21 !
0x00, 0x07, 0x00, 0x07, 0x00, // 22 "
0x14, 0x7f, 0x14, 0x7f, 0x14, // 23 #
0x24, 0x2a, 0x7f, 0x2a, 0x12, // 24 $
0x23, 0x13, 0x08, 0x64, 0x62, // 25 %
0x36, 0x49, 0x55, 0x22, 0x50, // 26 &
0x00, 0x05, 0x03, 0x00, 0x00, // 27 '
0x00, 0x1c, 0x22, 0x41, 0x00, // 28 (
0x00, 0x41, 0x22, 0x1c, 0x00, // 29 )
0x14, 0x08, 0x3e, 0x08, 0x14, // 2a *
0x08, 0x08, 0x3e, 0x08, 0x08, // 2b +
0x00, 0x50, 0x30, 0x00, 0x00, // 2c ,
0x08, 0x08, 0x08, 0x08, 0x08, // 2d -
0x00, 0x60, 0x60, 0x00, 0x00, // 2e .
0x20, 0x10, 0x08, 0x04, 0x02, // 2f /
0x3e, 0x51, 0x49, 0x45, 0x3e, // 30 0
0x00, 0x42, 0x7f, 0x40, 0x00, // 31 1
0x42, 0x61, 0x51, 0x49, 0x46, // 32 2
0x21, 0x41, 0x45, 0x4b, 0x31, // 33 3
0x18, 0x14, 0x12, 0x7f, 0x10, // 34 4
0x27, 0x45, 0x45, 0x45, 0x39, // 35 5
0x3c, 0x4a, 0x49, 0x49, 0x30, // 36 6
0x01, 0x71, 0x09, 0x05, 0x03, // 37 7
0x36, 0x49, 0x49, 0x49, 0x36, // 38 8
0x06, 0x49, 0x49, 0x29, 0x1e, // 39 9
0x00, 0x36, 0x36, 0x00, 0x00, // 3a :
0x00, 0x56, 0x36, 0x00, 0x00, // 3b ;
0x08, 0x14, 0x22, 0x41, 0x00, // 3c <
0x14, 0x14, 0x14, 0x14, 0x14, // 3d =
0x00, 0x41, 0x22, 0x14, 0x08, // 3e >
0x02, 0x01, 0x51, 0x09, 0x06, // 3f ?
0x32, 0x49, 0x79, 0x41, 0x3e, // 40 @
0x7e, 0x11, 0x11, 0x11, 0x7e, // 41 A
0x7f, 0x49, 0x49, 0x49, 0x36, // 42 B
0x3e, 0x41, 0x41, 0x41, 0x22, // 43 C
0x7f, 0x41, 0x41, 0x22, 0x1c, // 44 D
0x7f, 0x49, 0x49, 0x49, 0x41, // 45 E
0x7f, 0x09, 0x09, 0x09, 0x01, // 46 F
0x3e, 0x41, 0x49, 0x49, 0x7a, // 47 G
0x7f, 0x08, 0x08, 0x08, 0x7f, // 48 H
0x00, 0x41, 0x7f, 0x41, 0x00, // 49 I
0x20, 0x40, 0x41, 0x3f, 0x01, // 4a J
0x7f, 0x08, 0x14, 0x22, 0x41, // 4b K
0x7f, 0x40, 0x40, 0x40, 0x40, // 4c L
0x7f, 0x02, 0x0c, 0x02, 0x7f, // 4d M
0x7f, 0x04, 0x08, 0x10, 0x7f, // 4e N
0x3e, 0x41, 0x41, 0x41, 0x3e, // 4f O
0x7f, 0x09, 0x09, 0x09, 0x06, // 50 P
0x3e, 0x41, 0x51, 0x21, 0x5e, // 51 Q
0x7f, 0x09, 0x19, 0x29, 0x46, // 52 R
0x46, 0x49, 0x49, 0x49, 0x31, // 53 S
0x01, 0x01, 0x7f, 0x01, 0x01, // 54 T
0x3f, 0x40, 0x40, 0x40, 0x3f, // 55 U
0x1f, 0x20, 0x40, 0x20, 0x1f, // 56 V
0x3f, 0x40, 0x38, 0x40, 0x3f, // 57 W
0x63, 0x14, 0x08, 0x14, 0x63, // 58 X
0x07, 0x08, 0x70, 0x08, 0x07, // 59 Y
0x61, 0x51, 0x49, 0x45, 0x43, // 5a Z
0x00, 0x7f, 0x41, 0x41, 0x00, // 5b [
0x02, 0x04, 0x08, 0x10, 0x20, // 5c ¥
0x00, 0x41, 0x41, 0x7f, 0x00, // 5d ]
0x04, 0x02, 0x01, 0x02, 0x04, // 5e ^
0x40, 0x40, 0x40, 0x40, 0x40, // 5f _
0x00, 0x01, 0x02, 0x04, 0x00, // 60 `
0x20, 0x54, 0x54, 0x54, 0x78, // 61 a
0x7f, 0x48, 0x44, 0x44, 0x38, // 62 b
0x38, 0x44, 0x44, 0x44, 0x20, // 63 c
0x38, 0x44, 0x44, 0x48, 0x7f, // 64 d
0x38, 0x54, 0x54, 0x54, 0x18, // 65 e
0x08, 0x7e, 0x09, 0x01, 0x02, // 66 f
0x0c, 0x52, 0x52, 0x52, 0x3e, // 67 g
0x7f, 0x08, 0x04, 0x04, 0x78, // 68 h
0x00, 0x44, 0x7d, 0x40, 0x00, // 69 i
0x20, 0x40, 0x44, 0x3d, 0x00, // 6a j
0x7f, 0x10, 0x28, 0x44, 0x00, // 6b k
0x00, 0x41, 0x7f, 0x40, 0x00, // 6c l
0x7c, 0x04, 0x18, 0x04, 0x78, // 6d m
0x7c, 0x08, 0x04, 0x04, 0x78, // 6e n
0x38, 0x44, 0x44, 0x44, 0x38, // 6f o
0x7c, 0x14, 0x14, 0x14, 0x08, // 70 p
0x08, 0x14, 0x14, 0x18, 0x7c, // 71 q
0x7c, 0x08, 0x04, 0x04, 0x08, // 72 r
0x48, 0x54, 0x54, 0x54, 0x20, // 73 s
0x04, 0x3f, 0x44, 0x40, 0x20, // 74 t
0x3c, 0x40, 0x40, 0x20, 0x7c, // 75 u
0x1c, 0x20, 0x40, 0x20, 0x1c, // 76 v
0x3c, 0x40, 0x30, 0x40, 0x3c, // 77 w
0x44, 0x28, 0x10, 0x28, 0x44, // 78 x
0x0c, 0x50, 0x50, 0x50, 0x3c, // 79 y
0x44, 0x64, 0x54, 0x4c, 0x44, // 7a z
0x00, 0x08, 0x36, 0x41, 0x00, // 7b {
0x00, 0x00, 0x7f, 0x00, 0x00, // 7c |
0x00, 0x41, 0x36, 0x08, 0x00, // 7d }
0x10, 0x08, 0x08, 0x10, 0x08, // 7e ?
0x78, 0x46, 0x41, 0x46, 0x78, // 7f ?
0x1E, 0xA1, 0xA1, 0x61, 0x12,
0x3A, 0x40, 0x40, 0x20, 0x7A,
0x38, 0x54, 0x54, 0x55, 0x59,
0x21, 0x55, 0x55, 0x79, 0x41,
0x21, 0x54, 0x54, 0x78, 0x41,
0x21, 0x55, 0x54, 0x78, 0x40,
0x20, 0x54, 0x55, 0x79, 0x40,
0x0C, 0x1E, 0x52, 0x72, 0x12,
0x39, 0x55, 0x55, 0x55, 0x59,
0x39, 0x54, 0x54, 0x54, 0x59,
0x39, 0x55, 0x54, 0x54, 0x58,
0x00, 0x00, 0x45, 0x7C, 0x41,
0x00, 0x02, 0x45, 0x7D, 0x42,
0x00, 0x01, 0x45, 0x7C, 0x40,
0xF0, 0x29, 0x24, 0x29, 0xF0,
0xF0, 0x28, 0x25, 0x28, 0xF0,
0x7C, 0x54, 0x55, 0x45, 0x00,
0x20, 0x54, 0x54, 0x7C, 0x54,
0x7C, 0x0A, 0x09, 0x7F, 0x49,
0x32, 0x49, 0x49, 0x49, 0x32,
0x32, 0x48, 0x48, 0x48, 0x32,
0x32, 0x4A, 0x48, 0x48, 0x30,
0x3A, 0x41, 0x41, 0x21, 0x7A,
0x3A, 0x42, 0x40, 0x20, 0x78,
0x00, 0x9D, 0xA0, 0xA0, 0x7D,
0x39, 0x44, 0x44, 0x44, 0x39,
0x3D, 0x40, 0x40, 0x40, 0x3D,
0x3C, 0x24, 0xFF, 0x24, 0x24,
0x48, 0x7E, 0x49, 0x43, 0x66,
0x2B, 0x2F, 0xFC, 0x2F, 0x2B,
0xFF, 0x09, 0x29, 0xF6, 0x20,
0xC0, 0x88, 0x7E, 0x09, 0x03,
0x20, 0x54, 0x54, 0x79, 0x41,
0x00, 0x00, 0x44, 0x7D, 0x41,
0x30, 0x48, 0x48, 0x4A, 0x32,
0x38, 0x40, 0x40, 0x22, 0x7A,
0x00, 0x7A, 0x0A, 0x0A, 0x72,
0x7D, 0x0D, 0x19, 0x31, 0x7D,
0x26, 0x29, 0x29, 0x2F, 0x28,
0x26, 0x29, 0x29, 0x29, 0x26,
0x30, 0x48, 0x4D, 0x40, 0x20,
0x38, 0x08, 0x08, 0x08, 0x08,
0x08, 0x08, 0x08, 0x08, 0x38,
0x2F, 0x10, 0xC8, 0xAC, 0xBA,
0x2F, 0x10, 0x28, 0x34, 0xFA,
0x00, 0x00, 0x7B, 0x00, 0x00,
0x08, 0x14, 0x2A, 0x14, 0x22,
0x22, 0x14, 0x2A, 0x14, 0x08,
0xAA, 0x00, 0x55, 0x00, 0xAA,
0xAA, 0x55, 0xAA, 0x55, 0xAA,
0x00, 0x00, 0x00, 0xFF, 0x00,
0x10, 0x10, 0x10, 0xFF, 0x00,
0x14, 0x14, 0x14, 0xFF, 0x00,
0x10, 0x10, 0xFF, 0x00, 0xFF,
0x10, 0x10, 0xF0, 0x10, 0xF0,
0x14, 0x14, 0x14, 0xFC, 0x00,
0x14, 0x14, 0xF7, 0x00, 0xFF,
0x00, 0x00, 0xFF, 0x00, 0xFF,
0x14, 0x14, 0xF4, 0x04, 0xFC,
0x14, 0x14, 0x17, 0x10, 0x1F,
0x10, 0x10, 0x1F, 0x10, 0x1F,
0x14, 0x14, 0x14, 0x1F, 0x00,
0x10, 0x10, 0x10, 0xF0, 0x00,
0x00, 0x00, 0x00, 0x1F, 0x10,
0x10, 0x10, 0x10, 0x1F, 0x10,
0x10, 0x10, 0x10, 0xF0, 0x10,
0x00, 0x00, 0x00, 0xFF, 0x10,
0x10, 0x10, 0x10, 0x10, 0x10,
0x10, 0x10, 0x10, 0xFF, 0x10,
0x00, 0x00, 0x00, 0xFF, 0x14,
0x00, 0x00, 0xFF, 0x00, 0xFF,
0x00, 0x00, 0x1F, 0x10, 0x17,
0x00, 0x00, 0xFC, 0x04, 0xF4,
0x14, 0x14, 0x17, 0x10, 0x17,
0x14, 0x14, 0xF4, 0x04, 0xF4,
0x00, 0x00, 0xFF, 0x00, 0xF7,
0x14, 0x14, 0x14, 0x14, 0x14,
0x14, 0x14, 0xF7, 0x00, 0xF7,
0x14, 0x14, 0x14, 0x17, 0x14,
0x10, 0x10, 0x1F, 0x10, 0x1F,
0x14, 0x14, 0x14, 0xF4, 0x14,
0x10, 0x10, 0xF0, 0x10, 0xF0,
0x00, 0x00, 0x1F, 0x10, 0x1F,
0x00, 0x00, 0x00, 0x1F, 0x14,
0x00, 0x00, 0x00, 0xFC, 0x14,
0x00, 0x00, 0xF0, 0x10, 0xF0,
0x10, 0x10, 0xFF, 0x10, 0xFF,
0x14, 0x14, 0x14, 0xFF, 0x14,
0x10, 0x10, 0x10, 0x1F, 0x00,
0x00, 0x00, 0x00, 0xF0, 0x10,
0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
0xF0, 0xF0, 0xF0, 0xF0, 0xF0,
0xFF, 0xFF, 0xFF, 0x00, 0x00,
0x00, 0x00, 0x00, 0xFF, 0xFF,
0x0F, 0x0F, 0x0F, 0x0F, 0x0F,
0x38, 0x44, 0x44, 0x38, 0x44,
0x7C, 0x2A, 0x2A, 0x3E, 0x14,
0x7E, 0x02, 0x02, 0x06, 0x06,
0x02, 0x7E, 0x02, 0x7E, 0x02,
0x63, 0x55, 0x49, 0x41, 0x63,
0x38, 0x44, 0x44, 0x3C, 0x04,
0x40, 0x7E, 0x20, 0x1E, 0x20,
0x06, 0x02, 0x7E, 0x02, 0x02,
0x99, 0xA5, 0xE7, 0xA5, 0x99,
0x1C, 0x2A, 0x49, 0x2A, 0x1C,
0x4C, 0x72, 0x01, 0x72, 0x4C,
0x30, 0x4A, 0x4D, 0x4D, 0x30,
0x30, 0x48, 0x78, 0x48, 0x30,
0xBC, 0x62, 0x5A, 0x46, 0x3D,
0x3E, 0x49, 0x49, 0x49, 0x00,
0x7E, 0x01, 0x01, 0x01, 0x7E,
0x2A, 0x2A, 0x2A, 0x2A, 0x2A,
0x44, 0x44, 0x5F, 0x44, 0x44,
0x40, 0x51, 0x4A, 0x44, 0x40,
0x40, 0x44, 0x4A, 0x51, 0x40,
0x00, 0x00, 0xFF, 0x01, 0x03,
0xE0, 0x80, 0xFF, 0x00, 0x00,
0x08, 0x08, 0x6B, 0x6B, 0x08,
0x36, 0x12, 0x36, 0x24, 0x36,
0x06, 0x0F, 0x09, 0x0F, 0x06,
0x00, 0x00, 0x18, 0x18, 0x00,
0x00, 0x00, 0x10, 0x10, 0x00,
0x30, 0x40, 0xFF, 0x01, 0x01,
0x00, 0x1F, 0x01, 0x01, 0x1E,
0x00, 0x19, 0x1D, 0x17, 0x12,
0x00, 0x3C, 0x3C, 0x3C, 0x3C,
0x00, 0x00, 0x00, 0x00, 0x00,
};

#define sbi(port, bit) ((port) |= (_BV(bit)))
#define cbi(port, bit) ((port) &= ~(_BV(bit)))

//byte LCDCache [Cache_Size];
//static int 	xUpdateMin = 0, yUpdateMin = 0,
//			xUpdateMax = LCD_X - 1,yUpdateMax = LCD_Y - 1;
//static int Cursor_X = 0, Cursor_Y = 0;
//unsigned char wrap = 1;
//uint16_t textcolor = 0xFF, textbgcolor = 0x00;
//uint8_t textsize = 1;

//-----------------------------------
void LCD_Clear() {
	for (int index = 0; index < Cache_Size ; index++)
  {
   LCDCache[index] = (0x00);
  }
  LCD_UpdateBox(0, 0, LCD_X - 1, LCD_Y - 1);
  Cursor_X = 0;
  Cursor_Y = 0;
  x = 0;
  y = 0;
}

void LCD_UpdateBox (int xmin, int ymin, int xmax, int ymax) {
	if (xmin < xUpdateMin) xUpdateMin = xmin;
	if (xmax > xUpdateMax) xUpdateMax = xmax;
	if (ymin < yUpdateMin) yUpdateMin = ymin;
	if (ymax > yUpdateMax) yUpdateMax = ymax;
}

void LCD_drawPixel (int16_t xc, int16_t yc, uint16_t color) {
	if ((xc < 0) || (xc >= LCD_X) || (yc < 0) || (yc >= LCD_Y))
	return;

	if (color)
    LCDCache[xc + (yc/8)*LCD_X] |= _BV(yc%8);
  else
    LCDCache[xc + (yc/8)*LCD_X] &= ~_BV(yc%8);

	LCD_UpdateBox(xc,yc,xc,yc);
}
/*
void LCD_Update() {
	for(int p = 0; p < 9; p++){
		if(yUpdateMin >= ((p+1) *8)) {
			continue;
		}
		if(yUpdateMax < p*8){
				break;
		}
		LCD_send_command(SetYAddr | p);

		int col = xUpdateMin;
		int maxcol = xUpdateMax;

		LCD_send_command(SetXAddr4 | (col - (16 * (col/16))));
//#ifdef	N1110_LCD
		LCD_send_command(SetXAddr3 | (col / 16));
//#endif
		for(; col <= maxcol; col++){
			LCD_send_data(LCDCache[(LCD_X * p) + col]);
		}

	}
	xUpdateMin = LCD_X - 1;
	xUpdateMax = 0;
	yUpdateMin = LCD_Y -1;
	yUpdateMax = 0;
}
*/

void LCD_drawChar(int16_t xs, int16_t ys, unsigned char c, uint16_t color, uint16_t bg, uint8_t size) {

  if((xs >= LCD_X) ||(ys >= LCD_Y) || ((xs + 5 * size - 1) < 0) || ((ys + 8 * size - 1) < 0))
    return;

  for (int8_t i=0; i<6; i++ ) {
    uint8_t line;
    if (i == 5)
      line = 0x0;
    else
      line = pgm_read_byte(font+(c*5)+i);
    for (int8_t j = 0; j<8; j++) {
      if (line & 0x1) {
        if (size == 1) // default size
          LCD_drawPixel(xs+i, ys+j, color);
        else { // big size
          LCD_fillRect(xs+(i*size), ys+(j*size), size, size, color);
        }
      } else if (bg != color) {
        if (size == 1) // default size
          LCD_drawPixel(xs+i, ys+j, bg);
        else { // big size
          LCD_fillRect(xs+i*size, ys+j*size, size, size, bg);
        }
      }
      line >>= 1;
    }
  }
}

//;;;;;;;;
void LCD_set_position2(uint8_t xpos, uint8_t ypos)
{
	  x = xpos;
	  y = ypos;
      Cursor_X = xpos * FONT_WIDTH * textsize;
      Cursor_Y = ypos * FONT_HEIGHT * textsize;
}

uint8_t LCD_write2(uint8_t c) {
	int txsize,tysize;
    LCD_drawChar(Cursor_X, Cursor_Y, c, textcolor, textbgcolor, textsize);

    txsize = FONT_WIDTH * textsize;
    tysize = FONT_HEIGHT * textsize;

	if(x + 1 < LCD_COLUMN_NUMBER) x += 1;
	else {	x=0;
		if (y < LCD_LINE_NUMBER - 1) y += 1;
			else LCD_CLEAR();
	}
	Cursor_X = x * txsize;
	Cursor_Y = y * tysize;
/*
    Cursor_X += txsize;
      if(Cursor_X > LCD_X - txsize){
    	  	  Cursor_X = 0;
    	  	  Cursor_Y += tysize;
      }
      if(Cursor_Y > LCD_Y - tysize)
    	  Cursor_Y = 0;
*/
  return 0;
}
/*
void LCD_draw_Fstring2(const char* text)
{
	for (unsigned char i = 0; pgm_read_byte(&text[i]); i++)
	{
		LCD_write2(pgm_read_byte(&text[i]));
	}
}
*/
void LCD_draw_string2(char* text)
{
	for (unsigned char i = 0; text[i]; i++)
	{
		LCD_write2(text[i]);
	}
}

void LCD_draw_string3(const char* text)
{
	strncpy_P(wbuffer,(PGM_P)text,LCD_COLUMN_NUMBER);
	wbuffer[LCD_COLUMN_NUMBER]='\0';
	LCD_draw_string2(wbuffer);
}
//;;;;;;;;


void LCD_drawLine(int16_t x0, int16_t y0,int16_t x1, int16_t y1, uint16_t color) {
  int16_t steep = abs(y1 - y0) > abs(x1 - x0);
  if (steep) {
    swap(x0, y0);
    swap(x1, y1);
  }

  if (x0 > x1) {
    swap(x0, x1);
    swap(y0, y1);
  }

  int16_t dx, dy;
  dx = x1 - x0;
  dy = abs(y1 - y0);

  int16_t err = dx / 2;
  int16_t ystep;

  if (y0 < y1) {
    ystep = 1;
  } else {
    ystep = -1;
  }

  for (; x0<=x1; x0++) {
    if (steep) {
      LCD_drawPixel(y0, x0, color);
    } else {
      LCD_drawPixel(x0, y0, color);
    }
    err -= dy;
    if (err < 0) {
      y0 += ystep;
      err += dx;
    }
  }
}

void LCD_fillRect(int16_t xq, int16_t yq, int16_t w, int16_t h, uint16_t color) {
  for (int16_t i=xq; i<xq+w; i++) {
    LCD_drawFastVLine(i, yq, h, color);
  }
}

void LCD_drawFastVLine(int16_t xq, int16_t yq, int16_t h, uint16_t color) {
  LCD_drawLine(xq, yq, xq, yq+h-1, color);
}

void LCD_drawFastHLine(int16_t xq, int16_t yq, int16_t w, uint16_t color) {
  LCD_drawLine(xq, yq, xq+w-1, yq, color);
}
/*
size_t LCD_write(uint8_t c) {
 if (c == '\n') {
    Cursor_Y += 8;
    Cursor_X = 0;
    if(Cursor_Y > LCD_Y - 1)
       y = 0;
  } else if (c == '\r') {
    // skip em
  } else {
    LCD_drawChar(Cursor_X, Cursor_Y, c, textcolor, textbgcolor, textsize);
    Cursor_X += 6;
    if (wrap && (Cursor_X > (LCD_X - 6))) {
      Cursor_Y += 8;
      Cursor_X = 0;
    }
  }
      if(Cursor_X > LCD_X - 1)
      {Cursor_X = 0; Cursor_Y += 8;}
      if(Cursor_Y > LCD_Y - 1)
       Cursor_Y = 0;

  return 1;
}

void LCD_setTextColor(uint16_t c) {
  textcolor = c;
  textbgcolor = c;
}

 void LCD_setTextColor2(uint16_t c, uint16_t b) {
   textcolor = c;
   textbgcolor = b;
 }

 void LCD_drawBitmap(int16_t x, int16_t y, const uint8_t *bitmap, int16_t w, int16_t h, uint16_t color) {
  for (int16_t j=0; j<h; j++) {
    for (int16_t i=0; i<w; i++ ) {
      if (pgm_read_byte(bitmap + i + (j/8)*w) & _BV(j%8)) {
	LCD_drawPixel(x+i, y+j, color);
      }
    }
  }
}
*/
void LCD_setTextSize(uint8_t s) {
  textsize = (s > 0) ? s : 1;
}
/*
void LCD_setCursor(int16_t x, int16_t y) {
  Cursor_X = x;
  Cursor_Y = y;
}

void LCD_drawRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color) {
  LCD_drawFastHLine(x, y, w, color);
  LCD_drawFastHLine(x, y+h-1, w, color);
  LCD_drawFastVLine(x, y, h, color);
  LCD_drawFastVLine(x+w-1, y, h, color);
}

void LCD_drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color) {
  int16_t f = 1 - r;
  int16_t ddF_x = 1;
  int16_t ddF_y = -2 * r;
  int16_t x = 0;
  int16_t y = r;

  LCD_drawPixel(x0, y0+r, color);
  LCD_drawPixel(x0, y0-r, color);
  LCD_drawPixel(x0+r, y0, color);
  LCD_drawPixel(x0-r, y0, color);

  while (x<y) {
    if (f >= 0) {
      y--;
      ddF_y += 2;
      f += ddF_y;
    }
    x++;
    ddF_x += 2;
    f += ddF_x;

    LCD_drawPixel(x0 + x, y0 + y, color);
    LCD_drawPixel(x0 - x, y0 + y, color);
    LCD_drawPixel(x0 + x, y0 - y, color);
    LCD_drawPixel(x0 - x, y0 - y, color);
    LCD_drawPixel(x0 + y, y0 + x, color);
    LCD_drawPixel(x0 - y, y0 + x, color);
    LCD_drawPixel(x0 + y, y0 - x, color);
    LCD_drawPixel(x0 - y, y0 - x, color);

  }
}

void LCD_drawCircleHelper( int16_t x0, int16_t y0,
               int16_t r, uint8_t cornername, uint16_t color) {
  int16_t f = 1 - r;
  int16_t ddF_x = 1;
  int16_t ddF_y = -2 * r;
  int16_t x = 0;
  int16_t y = r;

  while (x<y) {
    if (f >= 0) {
      y--;
      ddF_y += 2;
      f += ddF_y;
    }
    x++;
    ddF_x += 2;
    f += ddF_x;
    if (cornername & 0x4) {
      LCD_drawPixel(x0 + x, y0 + y, color);
      LCD_drawPixel(x0 + y, y0 + x, color);
    }
    if (cornername & 0x2) {
      LCD_drawPixel(x0 + x, y0 - y, color);
      LCD_drawPixel(x0 + y, y0 - x, color);
    }
    if (cornername & 0x8) {
      LCD_drawPixel(x0 - y, y0 + x, color);
      LCD_drawPixel(x0 - x, y0 + y, color);
    }
    if (cornername & 0x1) {
      LCD_drawPixel(x0 - y, y0 - x, color);
      LCD_drawPixel(x0 - x, y0 - y, color);
    }
  }
}

void LCD_fillCircle(int16_t x0, int16_t y0, int16_t r,
uint16_t color) {
  LCD_drawFastVLine(x0, y0-r, 2*r+1, color);
  LCD_fillCircleHelper(x0, y0, r, 3, 0, color);
}

void LCD_fillCircleHelper(int16_t x0, int16_t y0, int16_t r,
uint8_t cornername, int16_t delta, uint16_t color) {

  int16_t f = 1 - r;
  int16_t ddF_x = 1;
  int16_t ddF_y = -2 * r;
  int16_t x = 0;
  int16_t y = r;

  while (x<y) {
    if (f >= 0) {
      y--;
      ddF_y += 2;
      f += ddF_y;
    }
    x++;
    ddF_x += 2;
    f += ddF_x;

    if (cornername & 0x1) {
      LCD_drawFastVLine(x0+x, y0-y, 2*y+1+delta, color);
      LCD_drawFastVLine(x0+y, y0-x, 2*x+1+delta, color);
    }
    if (cornername & 0x2) {
      LCD_drawFastVLine(x0-x, y0-y, 2*y+1+delta, color);
      LCD_drawFastVLine(x0-y, y0-x, 2*x+1+delta, color);
    }
  }
}

void LCD_fillScreen(uint16_t color) {
  LCD_fillRect(0, 0, LCD_X, LCD_Y, color);
}

void LCD_drawRoundRect(int16_t x, int16_t y, int16_t w,
  int16_t h, int16_t r, uint16_t color) {
  // smarter version
  LCD_drawFastHLine(x+r , y , w-2*r, color); // Top
  LCD_drawFastHLine(x+r , y+h-1, w-2*r, color); // Bottom
  LCD_drawFastVLine( x , y+r , h-2*r, color); // Left
  LCD_drawFastVLine( x+w-1, y+r , h-2*r, color); // Right
  // draw four corners
  LCD_drawCircleHelper(x+r , y+r , r, 1, color);
  LCD_drawCircleHelper(x+w-r-1, y+r , r, 2, color);
  LCD_drawCircleHelper(x+w-r-1, y+h-r-1, r, 4, color);
  LCD_drawCircleHelper(x+r , y+h-r-1, r, 8, color);
}

void LCD_fillRoundRect(int16_t x, int16_t y, int16_t w,
int16_t h, int16_t r, uint16_t color) {
  // smarter version
  LCD_fillRect(x+r, y, w-2*r, h, color);

  // draw four corners
  LCD_fillCircleHelper(x+w-r-1, y+r, r, 1, h-2*r-1, color);
  LCD_fillCircleHelper(x+r , y+r, r, 2, h-2*r-1, color);
}

void LCD_drawTriangle(int16_t x0, int16_t y0,
int16_t x1, int16_t y1,
int16_t x2, int16_t y2, uint16_t color) {
  LCD_drawLine(x0, y0, x1, y1, color);
  LCD_drawLine(x1, y1, x2, y2, color);
  LCD_drawLine(x2, y2, x0, y0, color);
}

void LCD_fillTriangle ( int16_t x0, int16_t y0,
int16_t x1, int16_t y1,
int16_t x2, int16_t y2, uint16_t color) {

  int16_t a, b, y, last;

  // Sort coordinates by Y order (y2 >= y1 >= y0)
  if (y0 > y1) {
    swap(y0, y1); swap(x0, x1);
  }
  if (y1 > y2) {
    swap(y2, y1); swap(x2, x1);
  }
  if (y0 > y1) {
    swap(y0, y1); swap(x0, x1);
  }

  if(y0 == y2) { // Handle awkward all-on-same-line case as its own thing
    a = b = x0;
    if(x1 < a) a = x1;
    else if(x1 > b) b = x1;
    if(x2 < a) a = x2;
    else if(x2 > b) b = x2;
    LCD_drawFastHLine(a, y0, b-a+1, color);
    return;
  }

  int16_t
    dx01 = x1 - x0,
    dy01 = y1 - y0,
    dx02 = x2 - x0,
    dy02 = y2 - y0,
    dx12 = x2 - x1,
    dy12 = y2 - y1,
    sa = 0,
    sb = 0;

  // For upper part of triangle, find scanline crossings for segments
  // 0-1 and 0-2. If y1=y2 (flat-bottomed triangle), the scanline y1
  // is included here (and second loop will be skipped, avoiding a /0
  // error there), otherwise scanline y1 is skipped here and handled
  // in the second loop...which also avoids a /0 error here if y0=y1
  // (flat-topped triangle).
  if(y1 == y2) last = y1; // Include y1 scanline
  else last = y1-1; // Skip it

  for(y=y0; y<=last; y++) {
    a = x0 + sa / dy01;
    b = x0 + sb / dy02;
    sa += dx01;
    sb += dx02;
// longhand:
//a = x0 + (x1 - x0) * (y - y0) / (y1 - y0);
//b = x0 + (x2 - x0) * (y - y0) / (y2 - y0);

    if(a > b) swap(a,b);
    LCD_drawFastHLine(a, y, b-a+1, color);
  }

  // For lower part of triangle, find scanline crossings for segments
  // 0-2 and 1-2. This loop is skipped if y1=y2.
  sa = dx12 * (y - y1);
  sb = dx02 * (y - y0);
  for(; y<=y2; y++) {
    a = x1 + sa / dy12;
    b = x0 + sb / dy02;
    sa += dx12;
    sb += dx02;
// longhand:
//a = x1 + (x2 - x1) * (y - y1) / (y2 - y1);
//b = x0 + (x2 - x0) * (y - y0) / (y2 - y0);

    if(a > b) swap(a,b);
    LCD_drawFastHLine(a, y, b-a+1, color);
  }
}

*/

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void NoneFunc()
{
//	_delay_ms(50);
}
//
void LcdPutInt(int i)
{
//	uint8_t ln, k;
	char printbuff[17];
//	ln = strlen(itoa(i, printbuff, 10));
	itoa(i, printbuff, 10);
	LCD_STR(FONT_1X,printbuff);
/*
	if(x + ln < LCD_COLUMN_NUMBER) x +=ln;
	else { k = LCD_COLUMN_NUMBER - x;
		if (y < LCD_LINE_NUMBER - 1) y += 1;
			else {y = 0; LCD_CLEAR();}
			x = ln - k;
	}
*/
}
/*
void LcdPutDouble(double d)
{
	char printbuff[LCD_LINE_SIZE];
	dtostrf(d, 10, 3, printbuff);
	LCD_STR(FONT_1X,(unsigned char*) printbuff);
}
*/
void LcdNextStr(void)
{
	if (y < LCD_LINE_NUMBER - 1) {
		y += 1;
		LCD_GOTO_XY(0,y);
	} else LCD_CLEAR();
//	LCD_GOTO_XY(x,y);
}

void LcdFirstLine(void)
{
/*
	x=0;
	y=0;
	LCD_GOTO_XY(x,y);
*/
	LCD_GOTO_XY(0,0);
	
}

void ReturnXPos(uint8_t ps){
	if (x >= ps) x -= ps;
	else {
		if ( y > 0 ) y -= 1;
		  x = LCD_COLUMN_NUMBER - (ps - x);
	}
	LCD_GOTO_XY(x,y);
}
//
//FILE lcd_str = FDEV_SETUP_STREAM(LcdWrite, NULL, _FDEV_SETUP_WRITE);
int LcdWrite ( char c, FILE *stream ){
	if (c == 0x0A)
		LCD_NEXTSTR();
	else if (c >= 0x20){
		LCD_PUTCHAR(FONT_1X,c);
/*
		if(x + 1 < LCD_COLUMN_NUMBER) x += 1;
		else {	x=0;
			if (y < LCD_LINE_NUMBER - 1) y += 1;
				else {y = 0; LCD_CLEAR();}
		}
*/
	}

	return 0;
}
//
/*
void myPrintf(const char* format, ...)
{
    va_list argptr;
    va_start(argptr, format);
    vfprintf(stdout, format, argptr);
    va_end(argptr);
}

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
 
void var(char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	if(!strcmp(format, "%d"))
	{
		int x = va_arg (ap, int);
		printf ("You passed decimal object with value %d\n", x);
	}
 
	if(!strcmp(format, "%s"))
	{
		char *p = va_arg (ap, char *);
		printf ("You passed c-string \"%s\"\n", p);
	}
	va_end (ap);
}
 
int main(void)
{
	var("%d", 255);
	var("%s", "test string");
	return 0;
}
*/
