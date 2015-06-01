/*
 * lcdconf.h
 *
 *  Created on: Jan 20, 2015
 *      Author: izhuk
 */

#ifndef LCDCONF_H_
#define LCDCONF_H_
#define F_CPU 8000000UL
#include <avr/io.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <avr/pgmspace.h>

#define sbi(port, bit) ((port) |= (_BV(bit)))
#define cbi(port, bit) ((port) &= ~(_BV(bit)))

typedef unsigned char byte;

//#define N3310_LCD	1
#define N1110_LCD	1
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#ifdef N3310_LCD
#include "n3310.h"
//
#define SN_SENSOR_SIZE 14

#define LCD_NUMBLINES 6
#define LCD_LINE_NUMBER 6
#define LCD_COLUMN_NUMBER 14
#define FONT_WIDTH	6
#define FONT_HEIGHT	8

#define LCD_INIT() LCD_initialize()
#define LCD_CLEAR() LCD_Clear()
#define LCD_GOTO_XY(x,y) LCD_set_position2(x, y)
//#define LCD_FSTR(f,fstr) LCD_draw_Fstring2((const char *) fstr)

//#define LCD_FSTR(f,fstr) strncpy_P(wbuffer,(PGM_P)fstr,sizeof(wbuffer)); wbuffer[sizeof(wbuffer) - 1]='\0'; LCD_draw_string2(wbuffer)
#define LCD_FSTR(f,fstr) LCD_draw_string3(fstr)
#define LCD_STR(f,str) LCD_draw_string2(str)
#define LCD_UPDATE() LCD_Update()
#define LCD_PUTCHAR(f,ch) LCD_write2(ch)

#define LCD_NEXTSTR() LcdNextStr()
#define LCD_FIRSTLINE() LcdFirstLine()
#define LCD_PUTINT(i) LcdPutInt(i)
#define LCD_PUTTEMP(i) LcdPutTemp(i)
//
#endif	// N3310_LCD
//
#ifdef N1110_LCD
#include "lcd8814.h"

#define LCD_NUMBLINES 8
#define LCD_LINE_NUMBER 8
#define LCD_COLUMN_NUMBER 16
/*
#define LCD_INIT() LCD_initialize()
#define LCD_CLEAR() LCD_clear_screen()
//#define LCD_GOTO_XY(x,y) LCD_set_position((uint8_t)x,(uint8_t)y)
#define LCD_GOTO_XY(x,y) LCD_set_posFont1x((uint8_t)(x & 0xFF),(uint8_t)(y & 0xFF))
#define LCD_FSTR(f,fstr) LCD_draw_Fstring((const char *) fstr)
#define LCD_STR(f,str) LCD_draw_string((const char *) str)
#define LCD_UPDATE() NoneFunc()
#define LCD_PUTCHAR(f,ch) LCD_draw_char(ch)

#define LCD_NEXTSTR() LcdNextStr()
#define LCD_FIRSTLINE() LcdFirstLine()
#define LCD_PUTINT(i) LcdPutInt(i)
#define LCD_PUTTEMP(i) LcdPutTemp(i)
*/
#define FONT_WIDTH	6
#define FONT_HEIGHT	8

//#define LCD_INIT() LCD_initialize()
#define LCD_INIT() LCD_initialize2()
#define LCD_CLEAR() LCD_Clear()
#define LCD_GOTO_XY(x,y) LCD_set_position2(x, y)
//#define LCD_FSTR(f,fstr) LCD_draw_Fstring2((const char *) fstr)

//#define LCD_FSTR(f,fstr) strncpy_P(wbuffer,(PGM_P)fstr,LCD_X); wbuffer[LCD_X]='\0'; LCD_draw_string2(wbuffer)
#define LCD_FSTR(f,fstr) LCD_draw_string3(fstr)
#define LCD_STR(f,str) LCD_draw_string2(str)
#define LCD_UPDATE() LCD_Update()
#define LCD_PUTCHAR(f,ch) LCD_write2(ch)

#define LCD_NEXTSTR() LcdNextStr()
#define LCD_FIRSTLINE() LcdFirstLine()
#define LCD_PUTINT(i) LcdPutInt(i)
#define LCD_PUTTEMP(i) LcdPutTemp(i)

#endif	// N1110_LCD

#define LCD_SETTEXTSIZE(s) LCD_setTextSize(s)

void LCD_Clear();
void LCD_drawPixel (int16_t x, int16_t y, uint16_t color);
void LCD_UpdateBox (int xmin, int ymin, int xmax, int ymax);
void LCD_Update();
void LCD_drawChar(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size);
//size_t LCD_write2(uint8_t c);
void LCD_drawLine(int16_t x0, int16_t y0,int16_t x1, int16_t y1, uint16_t color);
void LCD_fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void LCD_drawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
void LCD_setTextColor(uint16_t c);
void LCD_setTextColor2(uint16_t c, uint16_t b);
void LCD_drawBitmap(int16_t x, int16_t y, const uint8_t *bitmap, int16_t w, int16_t h, uint16_t color);
void LCD_setTextSize(uint8_t s);
void LCD_setCursor(int16_t x, int16_t y);
void LCD_drawRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void LCD_drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void LCD_drawCircleHelper( int16_t x0, int16_t y0, int16_t r, uint8_t cornername, uint16_t color);
void LCD_fillCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void LCD_fillCircleHelper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername, int16_t delta, uint16_t color);
void LCD_fillScreen(uint16_t color);
void LCD_drawRoundRect(int16_t x, int16_t y, int16_t w, int16_t h, int16_t r, uint16_t color);
void LCD_fillRoundRect(int16_t x, int16_t y, int16_t w, int16_t h, int16_t r, uint16_t color);
void LCD_set_position2(uint8_t xpos, uint8_t ypos);
uint8_t LCD_write2(uint8_t c);
void LCD_draw_Fstring2(const char* text);
void LCD_draw_string2(char* text);
void LCD_draw_string3(const char* text);

uint8_t DS18X20_format_from_decicelsius( int16_t decicelsius,
	char s[], uint8_t n);

void NoneFunc(void);
void LcdPutInt(int i);
void LcdNextStr(void);
void LcdFirstLine(void);
void LcdPutTemp(int16_t decicelsius);
void ReturnXPos(uint8_t ps);
int LcdWrite ( char c, FILE *stream );

#endif /* LCDCONF_H_ */
