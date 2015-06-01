/*
 * n3310.c
 *
 *
 *
 */
extern int8_t 	xUpdateMin, yUpdateMin,
			xUpdateMax, yUpdateMax;
extern byte LCDCache [Cache_Size];

#include <avr/io.h>
#include <util/delay.h>
#include "n3310.h"

void LCD_initialize()
{
// Pull-up
LCD_PORT |= _BV ( LCD_RST_PIN );

LCD_DDR |= _BV( LCD_RST_PIN ) | _BV( LCD_DC_PIN ) | _BV( LCD_CE_PIN ) | _BV( SPI_MOSI_PIN ) | _BV( SPI_CLK_PIN );

//Delay();
_delay_ms(200);
// Дергаем reset
LCD_PORT &= ~( _BV( LCD_RST_PIN ) );
//Delay();
_delay_ms(200);
LCD_PORT |= _BV ( LCD_RST_PIN );
// Активируем SPI:

SPCR = 0x50;

LCD_PORT |= _BV( LCD_CE_PIN );

LCD_send_byte( 0x21, LCD_CMD );

LCD_send_byte( 0xC8, LCD_CMD );

LCD_send_byte( 0x06, LCD_CMD );

LCD_send_byte( 0x13, LCD_CMD );

LCD_send_byte( 0x20, LCD_CMD );

LCD_send_byte( 0x0C, LCD_CMD );

LCD_Clear();
LCD_Update();
}

void LCD_send_byte ( byte data, LcdCmdData cd )
{

LCD_PORT &= ~( _BV( LCD_CE_PIN ) );
if ( cd == LCD_DATA )
{
LCD_PORT |= _BV( LCD_DC_PIN );
}
else
{
LCD_PORT &= ~( _BV( LCD_DC_PIN ) );
}

SPDR = data;

while ( (SPSR & 0x80) != 0x80 );

LCD_PORT |= _BV( LCD_CE_PIN );
}

void LcdContrast ( byte contrast )
{
	LCD_send_byte( 0x21, LCD_CMD ); // Расширенный набор команд
	LCD_send_byte( 0x80 | contrast, LCD_CMD ); // Установка уровня контрастности
	LCD_send_byte( 0x20, LCD_CMD ); // Стандартный набор команд, горизонтальная адресация
}

void LCD_send_command(uint8_t data)
{
	LCD_send_byte(data, LCD_CMD);
}

void LCD_send_data(uint8_t data)
{
	LCD_send_byte(data, LCD_DATA);
}

void LCD_Update() {
	for(int p = 0; p < 7; p++){
		if(yUpdateMin >= ((p+1) *8)) {
			continue;
		}
		if(yUpdateMax < p*8){
				break;
		}
		LCD_send_command(SetYAddr | p);

		int col = xUpdateMin;
		int maxcol = xUpdateMax;

		LCD_send_command(SetXAddr | (col & 0xfff));
		for(; col <= maxcol; col++){
			LCD_send_data(LCDCache[(LCD_X * p) + col]);
		}

	}
	xUpdateMin = LCD_X - 1;
	xUpdateMax = 0;
	yUpdateMin = LCD_Y -1;
	yUpdateMax = 0;
}

//**************
/*
void LCD_Update (void)
{
	int i;
	int LoWaterMark; // нижняя граница
	int HiWaterMark; // верхняя граница
//LcdCacheIdx = x * 6 + y * 84;
LoWaterMark = yUpdateMin * LCD_X_RES + xUpdateMin;
HiWaterMark = yUpdateMax * LCD_X_RES + xUpdateMax;
// Алгоритм для оригинального дисплея
// Устанавливаем начальный адрес в соответствии к LoWaterMark
LCD_send_byte( 0x80 | ( LoWaterMark % LCD_X_RES ), LCD_CMD );
LCD_send_byte( 0x40 | ( LoWaterMark / LCD_X_RES ), LCD_CMD );
// Обновляем необходимую часть буфера дисплея
	for ( i = LoWaterMark; i <= HiWaterMark; i++ )
	{
// Для оригинального дисплея не нужно следить за адресом в буфере,
// можно просто последовательно выводить данные
		LCD_send_byte( LCDCache[i], LCD_DATA );
	}
	xUpdateMin = LCD_X - 1;
	xUpdateMax = 0;
	yUpdateMin = LCD_Y -1;
	yUpdateMax = 0;
}
*/
