//
//Ivan Zhuk, Nevyansk, 26.02.2015
//

#include <avr/version.h>
#if __AVR_LIBC_VERSION__ < 10606UL
#error "please update to avrlibc 1.6.6 or newer, not tested with older versions"
#endif

#define F_CPU 8000000UL
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/eeprom.h>
#include <util/delay.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>

#include "uart.h"
#include "uart_addon.h"
#include "onewire.h"
#include "ds18x20.h"
#include "lcdconf.h"
#include "adc.h"
#include "debug.h"
#include "crc8.h"
#include "timer.h"
#include "extint.h"
#include "sms.h"
#include "main.h"

// You can print out the contents of the .fuse section in the ELF file
// by using this command line:
// avr-objdump -s -j .fuse <ELF file>
// Default is - Contents of section .fuse: 820000 62dff9
FUSES =
{
//#define LFUSE_DEFAULT (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_CKDIV8)
.low = (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0),
//#define HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_SPIEN)
//.high = (FUSE_CKSEL1 & FUSE_EESAVE & FUSE_SPIEN & FUSE_BOOTSZ0 & FUSE_BOOTSZ1 ),
.high = (FUSE_CKSEL1 & FUSE_SPIEN & FUSE_BOOTSZ0 & FUSE_BOOTSZ1 ),
//#define EFUSE_DEFAULT  (0xFF)
.extended = EFUSE_DEFAULT,
};

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Global variables @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
char ReadyWATCHDOG;
char WATCHDOG_STATE = 0;
unsigned char TLastWatchDog = 0;
int8_t rTempInDoorMin;
int8_t rTempInDoorMax;
int8_t rTempOutDoorMin;
int8_t rTempOutDoorMax;
int8_t rTempSupplyMin;
int8_t rTempSupplyMax;
int8_t rTempDiffSupplyReturnMin;
int8_t rTempDiffSupplyReturnMax;
int8_t nSensors;

int8_t temper[MAXSENSORS];
//= {TEMPER_BAD,TEMPER_BAD,TEMPER_BAD,TEMPER_BAD};
static uint8_t sn_presence[MAXSENSORS] = {FALSE,FALSE,FALSE,FALSE};
static uint8_t sn_noready_counter[MAXSENSORS] = {0,0,0,0};
static uint8_t nwSen_Phase;
static uint8_t btest_new_sensors = FALSE;
static uint8_t noready_sens[MAXSENSORS] = {FALSE,FALSE,FALSE,FALSE};
static int8_t kg;
static uint8_t oldDisplaySens;

static FILE lcd_str = FDEV_SETUP_STREAM(LcdWrite, NULL, _FDEV_SETUP_WRITE);
char wbuffer[WBUFFER_LEN + 1];
static uint8_t gSensorIDs[MAXSENSORS][OW_ROMCODE_SIZE];
uint8_t* rSensorIDs;
static int8_t *TempAct;


int8_t EEMEM TempInDoorMin = 18;
int8_t EEMEM TempInDoorMax = 25;
int8_t EEMEM TempOutDoorMin = -5;
int8_t EEMEM TempOutDoorMax = -35;
int8_t EEMEM TempSupplyMin = 50;
int8_t EEMEM TempSupplyMax = 80;
int8_t EEMEM TempDiffSupplyReturnMin = 10;
int8_t EEMEM TempDiffSupplyReturnMax = 20;
uint8_t EEMEM eSensorIDs[MAXSENSORS][OW_ROMCODE_SIZE] =\
		{
			{0x10,0x44,0x40,0x30,0xc5,0x00,0x00,0x95},
			{0x28,0x22,0x20,0x30,0xc5,0x00,0x00,0x10},
			{0x28,0x11,0x10,0x30,0xc5,0x00,0x00,0x20},
			{0x28,0x33,0x30,0x30,0x15,0x00,0x00,0x19}
		};
uint8_t EEMEM etelNumber[LENNUMPHONE + 1] = "111111111111" ;
//static int SleepTime;

__attribute__((progmem)) static const char
		okStr[] = "OK",
		helloStr1[]="PUMP",
		helloStr2[]="REGULATOR",
		exitStr[]="#-EXIT",
		nextStr[]="*-NEXT",
		snStr[] = "SN",
		indoorStr[] = "INDOOR",
		outdoorStr[] = "OUTDOOR",
		supplyStr[] = "SUPPLY",
		returnStr[] = "RETURN",
		nsupdownStr[] = "Ns-UPSIDE-DOWN",
		checksumStr[] = "CHECKSUM",
		setStr[] = "SET",
		viewStr[] = "VIEW",
		assignStr[] = "ASSIGNs",
		minStr[]="MIN",
		maxStr[]="MAX",
		tempStr[] = "TEMP",
		diffStr[] = "DIFF",
		toeepromStr[] = "TO EEPROM",
		saveStr[] = "SAVE",
		timeStr[] = "TIME",
		minuteStr[] = "MINUTE",
		hourStr[] = "HOUR",
		secondStr[] = "SECOND",
		alarmStr[] = "ALARM",
		sensorStr[] = "Sensor",
		absenceStr[] = "ABSENCE",
		missingStr[] = "MISSING",
		temperStr[] = "T-EDGES",
		Sensorsfound[] = " Sensorsfound",
		DS18S20[]	=	"-DS18S20",
		DS18B20[]	=	"-DS18B20",
		DS1822[]	=	"-DS1822",
		PAR[]	=	"-PAR",
		crcErrStr[]	=	"CRC Err",
		EXT[]	=	"-EXT",
		telStr[] = "PHONE",
		clearStr[] = "Clear",
		errStr[] = "Err",
		startRegulatorStr[] = "00-Regulator Started!",
		startPowerGoneStr[] = "01-Power Gone!",
		notReadyStr[] = "02-NotReady";

static uint8_t MainLoopPhase, LastPhase, MenuPhase;
static uint8_t fl;
static char mausure_temperature_ok = TRUE;
char telNumber[LENNUMPHONE + 1]; // = "+79089192392";
uint8_t temp_for_hour;
uint8_t PrefHeatting;
//uint8_t fl_noready;
extern uint8_t CheckNoReadySNCounter;
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#ifdef MAXIM_SEARCH_ENABLE

uint8_t search_sensors_n()
{

	uint8_t nSenss;
	uint8_t rslt;

#ifdef DEBUG
	uart_puts_P( NEWLINESTR "Scanning Bus for DS18X20" NEWLINESTR );
#endif

#ifdef DS_PWR_PIN
	       DS_PWR_OUT_LOW();
#endif

//	uint8_t i;

	uint8_t k;
	k = 4;	// Try three times

	do {

	   // find ALL devices
	   nSenss = 0;
	   rslt = OWFirst();
	   while (rslt)
	   {
//		   if(OWVerify()){
/*
			for ( i=0; i < OW_ROMCODE_SIZE && nSenss < MAXSENSORS ; i++ )
				gSensorIDs[nSenss][i] = ROM_NO[i];
*/
				memcpy(&gSensorIDs[nSenss],&ROM_NO[0],OW_ROMCODE_SIZE);
				if(++nSenss >= MAXSENSORS ) { k = 1; break;}
//		   }
		   rslt = OWNext();
	   }

		k--;
	} while (k > 1);

#ifdef DS_PWR_PIN
       DS_PWR_OUT_HIGH();
#endif
return nSenss;

}

#else

static uint8_t search_sensors(void)
{
	uint8_t i;
	uint8_t id[OW_ROMCODE_SIZE];
	uint8_t diff, nSenss;
	uint8_t result;
#ifdef DEBUG
	uart_puts_P( NEWLINESTR "Scanning Bus for DS18X20" NEWLINESTR );
#endif
//For Parasite Power Suply Enhancement
#ifdef DS_PWR_PIN
       DS_PWR_OUT_LOW();
#endif

	nSenss = 0;

	diff = OW_SEARCH_FIRST;

	//ow_reset();

	while ( diff != OW_LAST_DEVICE && nSenss < MAXSENSORS ) {
		result = DS18X20_find_sensor( &diff, &id[0] );
		DO_WATCHDOG();
		if( diff == OW_PRESENCE_ERR ) {
#ifdef DEBUG
			uart_puts_P( "No Sensor found" NEWLINESTR );
#endif
			break;
		}

		if( diff == OW_DATA_ERR ) {
#ifdef DEBUG
			uart_puts_P( "Bus Error" NEWLINESTR );
#endif
			break;
		}
		if (result == DS18X20_OK){
		for ( i=0; i < OW_ROMCODE_SIZE; i++ )
			gSensorIDs[nSenss][i] = id[i];

			nSenss++;
		}
	}

#ifdef DS_PWR_PIN
       DS_PWR_OUT_HIGH();
#endif

	return nSenss;
}

#endif

void LcdPutTemp(int16_t decicelsius)
{
	char s[10];
	DS18X20_format_from_decicelsius( decicelsius, s, 10 );
	LCD_FSTR(FONT_1X,(const char*)PSTR(" "));
	LCD_STR(FONT_1X, s);
	LCD_FSTR(FONT_1X,(const  char*)PSTR("C"));
}
//
#define SNLEN 7

int main( void )
{
	char ch;
	uint8_t i, k, ks, nSNpos, ActSN, n ;
	int8_t mtemp_minute;
	int8_t mtemp_hour;
	uint8_t ActSN_next, aSN_num;
	char wStr[5];
	int ki;
	byte gSensNumb[SNLEN + 1];

	//	lcd_str = FDEV_SETUP_STREAM(LcdWrite, NULL, _FDEV_SETUP_WRITE);
		stdout = &lcd_str;

	INT1_DDR &= ~(1 << INT1_PIN);	// INT1_PIN as input
    INT1_PORT |= (1 << INT1_PIN);    // turn On the Pull-up
      	// INT1_PIN is now an input with pull-up enabled

    ReadyWATCHDOG = FALSE;
    x = 0; y = 0;
    //fl_noready = TRUE;
    CheckNoReadySNCounter = 0;

    LCD_INIT();
    // If Power Phase is gone - STOP!
	if(INT1_PIN & (1 << INT1_PIN_PIN)){
		LcdPowerGoneStr();
		HALT();
	}

	MainLoopPhase = DISPLAY_MAINMENU;
	LastPhase = MainLoopPhase;
	MenuPhase = MMENU_SHOW;

	if((rSensorIDs = (uint8_t *)malloc(MAXSENSORS * OW_ROMCODE_SIZE+1)) != NULL) {
		eeprom_read_block((void *)rSensorIDs , (const void*)eSensorIDs ,MAXSENSORS * OW_ROMCODE_SIZE);
	} else HALT();

	for ( i = 0; i < MAXSENSORS; i++ ) {
			sn_presence[i] = FALSE;
			temper[i] = TEMPER_BAD;
	}

	rTempInDoorMin = (int8_t) eeprom_read_byte((uint8_t*) &TempInDoorMin);
	rTempInDoorMax = (int8_t) eeprom_read_byte((uint8_t*) &TempInDoorMax);
		rTempOutDoorMin = (int8_t) eeprom_read_byte((uint8_t*) &TempOutDoorMin);
		rTempOutDoorMax = (int8_t) eeprom_read_byte((uint8_t*) &TempOutDoorMax);
		rTempSupplyMin = (int8_t) eeprom_read_byte((uint8_t*) &TempSupplyMin);
		rTempSupplyMax = (int8_t) eeprom_read_byte((uint8_t*) &TempSupplyMax);
		rTempDiffSupplyReturnMin = (int8_t) eeprom_read_byte((uint8_t*) &TempDiffSupplyReturnMin);
		rTempDiffSupplyReturnMax = (int8_t) eeprom_read_byte((uint8_t*) &TempDiffSupplyReturnMax);
//	eeprom_read_block((void *)rSensorIDs , (const void*)eSensorIDs ,MAXSENSORS * OW_ROMCODE_SIZE);
	eeprom_read_block((void *)telNumber , (const void*)etelNumber ,LENNUMPHONE);

//	set_sleep_mode(SLEEP_MODE_PWR_DOWN);

	nSNpos = 0;
	n = 0;
	k = 0;
	fl = 0;
	ks = 0;
	ActSN = INDOOR;
	ActSN_next = OUTDOOR;
	aSN_num = 0;
	mtemp_minute = TEMPER_BAD;
	mtemp_hour = TEMPER_BAD;

	// Power Reduction
	PRR |= (1<<PRTWI) | (1<<PRTIM1) | (1<<PRTIM0);

// Set output pins to manage PUMP0 and Tree-State-Valve
	PUMP0_DDRS |= (1<<PUMP0_PIN0)|(1<<PUMP0_PIN1);
	VALVE_DDRS |= (1<<VALVE_PIN3XVALVE);

#ifdef WATCHDOG
	WDT_setup();
	wdt_reset();
#else
	WDT_off();
#endif

//For Parasite Power Suply Enhancement
#ifdef DS_PWR_PIN
        DS_PWR_DIR_OUT();
        DS_PWR_OUT_HIGH();
#endif
  
   
//	n3310
        LCD_CLEAR();
        LCD_GOTO_XY(5,1);
        printf_P(PSTR("%S"),helloStr1);
        LCD_GOTO_XY(3,2);
        printf_P(PSTR("%S"),helloStr2);
        LCD_UPDATE();
//
/*
	uart_init((UART_BAUD_SELECT((BAUD),F_CPU)));

	//%%%%%%%%%%%%%%%%% For GSM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

		gsm_text_sms();				// Initial SMS text-mode message
		sms_pumpStarted();


	#include "global.h"
	#include <stdint.h>
	#include <stdlib.h>
	#include <avr/io.h>
	#include <util/delay.h>
	#include "uart.h"
	#include "lcd.h"
	#include "gsm.h"

	int main(void){
		int i;
		SMS sms;

		// Initial Serial port
		uartInit();
		uartSetBaudRate(9600);

		// Initial LCD
		lcdInit();

		// Initial GSM Module
		gsm_init(uartSendByte, uartGetByte);		// Initial gsm library
		gsm_text_sms();				// Initial SMS text-mode message



		while(1){
			i = gsm_check_new_sms( &sms );
			if( i != 0 ){
				gsm_del_sms( i );
				// We have new SMS
				lcd_clear(); lcd_print(sms.body);
				lcd_gotoXY(0, 1); lcd_print(sms.number);
				// Send reply
				gsm_send_sms( sms.number, "Your SMS Recieved!", 2 );
			}

			_delay_ms(1000);
		}

		return 0;
	}


	 */
	//********************************************************

#ifndef OW_ONE_BUS
	ow_set_bus(&THERM_PIN,&THERM_PORT,&THERM_DDR,THERM_IO);
#endif
	
	sei();
	if(!checkPresenceSN()){
		k = 3; // 3 times repeating
#ifndef MAXIM_SEARCH_ENABLE
		nSensors = search_sensors();

		while (nSensors != MAXSENSORS){
			_delay_ms(3);
			nSensors = search_sensors();
			if(!k--) break;
		}

#else
		nSensors = search_sensors_n();

		while (nSensors != MAXSENSORS){
			_delay_ms(3);
			nSensors = search_sensors_n();
			if(!k--) break;
		}

		btest_new_sensors = TRUE;
#endif
	} else {
		copyrSNsTogSNs();
		nSensors = MAXSENSORS;
	}
	//

	uart_init((UART_BAUD_SELECT((BAUD),F_CPU)));

		//%%%%%%%%%%%%%%%%% For GSM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
			gsm_text_sms();				// Initial SMS text-mode message
			sms_pumpStarted();
*/
		/*
		#include "global.h"
		#include <stdint.h>
		#include <stdlib.h>
		#include <avr/io.h>
		#include <util/delay.h>
		#include "uart.h"
		#include "lcd.h"
		#include "gsm.h"

		int main(void){
			int i;
			SMS sms;

			// Initial Serial port
			uartInit();
			uartSetBaudRate(9600);

			// Initial LCD
			lcdInit();

			// Initial GSM Module
			gsm_init(uartSendByte, uartGetByte);		// Initial gsm library
			gsm_text_sms();				// Initial SMS text-mode message



			while(1){
				i = gsm_check_new_sms( &sms );
				if( i != 0 ){
					gsm_del_sms( i );
					// We have new SMS
					lcd_clear(); lcd_print(sms.body);
					lcd_gotoXY(0, 1); lcd_print(sms.number);
					// Send reply
					gsm_send_sms( sms.number, "Your SMS Recieved!", 2 );
				}

				_delay_ms(1000);
			}

			return 0;
		}


		 */
		//********************************************************
//
	InitAdc(ADC_CHANNEL);
	InitAnalogComp();
	init_clock();

	LCD_CLEAR();
	//LCD_FIRSTLINE();
	//LCD_GOTO_XY(0,0);
	LCD_PUTINT(nSensors);
	//printf_P(PSTR("%i%s",nSensors,Sensorsfound);
	LCD_FSTR(FONT_1X,(const char*)Sensorsfound);
	LCD_UPDATE();
#ifdef SN_SENSOR_SIZE
	LCD_FIRSTLINE();
#endif
	//_delay_ms(1000);

	if(nSensors == MAXSENSORS ){
		if((ki = test_SN_sensors()) == 99){

	for ( i = 0; i < nSensors; i++ ) {
		LCD_NEXTSTR();
		LCD_PUTINT((int)i+1);
		if ( gSensorIDs[i][0] == DS18S20_FAMILY_CODE ) {
			LCD_FSTR(FONT_1X,DS18S20);
			//printf_P(PSTR("%s",DS18S20);
		} else if ( gSensorIDs[i][0] == DS1822_FAMILY_CODE ) {
			LCD_FSTR(FONT_1X,DS1822);
			//printf_P(PSTR("%s",DS1822);
		}
		else {
			LCD_FSTR(FONT_1X,(const char*)DS18B20);
			//printf_P(PSTR("%s",DS18B20);
		}

		if ( DS18X20_get_power_status( &gSensorIDs[i][0] ) == DS18X20_POWER_PARASITE ) {
			LCD_FSTR(FONT_1X,(const char*)PAR);
			//printf_P(PSTR("%s",PAR);
		} else {
			LCD_FSTR(FONT_1X,(const char*)EXT);
			//printf_P(PSTR("%s",EXT);
		}
	}	// for ( i = 0; i < nSensors; i++ )
	     LCD_UPDATE();
//)))))))))))))))))))))))))))))))))))))))))))))))))))
   } else { 	// if(test_SN_sensors())
	   printf_P(PSTR("\n    %S"),alarmStr);
	   printf_P(PSTR("\n   %S:%01i"),sensorStr,ki);
	   printf_P(PSTR("\n   %S"),missingStr);
	   LCD_UPDATE();
   }	// else { if(test_SN_sensors())
  }	else { // if(nSensors == MAXSENSORS )
	   printf_P(PSTR("\n    %S"),alarmStr);
	   printf_P(PSTR("\n   %Ss"),sensorStr);
	   printf_P(PSTR("\n   %S"),absenceStr);
	   LCD_UPDATE();
  }	// else { if(nSensors == MAXSENSORS )

	_delay_ms(1000);

#ifdef WATCHDOG
	wdt_reset();
	_delay_ms(50);
#endif

	LCD_CLEAR();

	WATCHDOG_DDR |=(1 << WATCHDOG_PIN);	// As output
	TimeKeyPressed = 0;
	extstate = 0;
	powergone = 0;
	ExtInt0Enable();
	ExtInt1Enable();
//	===============================================================================================
	kg = 0;
	if(!btest_new_sensors){
		free(rSensorIDs);
		MANAGE_TEMPEVENT();
		ReadyWATCHDOG = TRUE;
	} else {
		MainLoopPhase = ENTER_NEW_SENSOR;
		nwSen_Phase = REORDER_NWSENS;
	}
	PrefHeatting = FALSE;
	temp_for_hour = temper[N_OUTDOOR];

//
	for(;;) {   // main loop ***************************************
		//DO_WATCHDOG();
//##################################################################
		if(!wait_powergone && powergone){
			wait_powergone = 1;
		}
//
		if(wait_powergone){
			if(powergone){
				if(wait_powergone >= TIMEOUT_POWERGON + 1){
					if(INT1_PIN & (1 << INT1_PIN_PIN)){
						LcdPowerGoneStr();
						sms_powerGone();
						HALT();
					} else {
						cli();
						powergone = 0;
						wait_powergone = 0;
						sei();
					}
				}
			}
		}
//###################################################################

#ifdef WATCHDOG
	wdt_reset();
#endif

	ch = (char)GetKeyCode();

	if(ch == '*' && !fl) {
		LastPhase = MainLoopPhase;
		MainLoopPhase = DISPLAY_MAINMENU;
		if(LastPhase != MainLoopPhase)
			LCD_CLEAR();
	}

		switch(MainLoopPhase) {

		case ENTER_NEW_SENSOR:

			if(manage_new_sensors(ch)){
				MANAGE_TEMPEVENT();
				PrefHeatting = FALSE;
				temp_for_hour = temper[N_OUTDOOR];
				kg = 0;
				LastPhase = MainLoopPhase;
				MainLoopPhase = DISPLAY_MAINMENU;
				MenuPhase = MMENU_SHOW;
				ReadyWATCHDOG = TRUE;
				free(rSensorIDs);
			}
			continue;
		break;

		case DISPLAY_TEMPERATURE:
			DisplayTemperature();
		break;

		case DISPLAY_MAINMENU:

			switch(ch){
			case '0':
				if(MenuPhase == MMENU_SHOW ){
					MenuPhase = CLRIDS_EEPROM;
				}
				case '1':
				if(MenuPhase == MMENU_SHOW )
					MenuPhase = MTELPHONE_SET;
				break;
				case '2':
					if(MenuPhase == MMENU_SHOW )
						MenuPhase = MVIEW_SNs;
					break;
				case '3':
					if(MenuPhase == MMENU_SHOW )
						MenuPhase = MSET_TIME;
					break;
				case '4':
					if(MenuPhase == MMENU_SHOW )
						MenuPhase = MSETTEMP;
					break;
				case '5':
					if(MenuPhase == MMENU_SHOW ){
						MenuPhase = MSETTEMP;
						ActSN = TOEEPROM;
						fl = 1;
					}
					break;
				case '6':
					if(MenuPhase == MMENU_SHOW )
						MenuPhase = MVIEW_TIME;
					break;
				case '7':
					if(MenuPhase == MMENU_SHOW )
						MenuPhase = MASSIGN;
					break;
				case '8':
					if(MenuPhase == MMENU_SHOW )
						MenuPhase = MVIEWTEMPR;
					break;
				case '9':
				if(MenuPhase == MMENU_SHOW )
					MenuPhase = MSNs_SET;
				break;

				case '#':
					LCD_CLEAR();
				    LCD_UPDATE();
					if(fl){
						MenuPhase = MMENU_SHOW;
						fl = 0;
					} else {MainLoopPhase = DISPLAY_TEMPERATURE; mausure_temperature_ok = TRUE; continue;}
					break;
				}

			switch(MenuPhase){
			case MMENU_SHOW:
				if(fl){ LCD_CLEAR(); fl = 0;}
				LCD_FIRSTLINE();

				printf_P(PSTR("%i.%S %S\n"),1,setStr,telStr);
				printf_P(PSTR("%i.%S %Ss\n"),2,viewStr,snStr);
				printf_P(PSTR("%i.%S %S\n"),3,setStr,timeStr);
				printf_P(PSTR("%i.%S %S-%S\n"),4,setStr,minStr,maxStr);
				printf_P(PSTR("%i.%S\n"),5,toeepromStr);
#ifdef N1110_LCD
				printf_P(PSTR("%i.%S %S\n"),6,viewStr,timeStr);
				printf_P(PSTR("%i.%S %S\n"),7,viewStr,assignStr);
				printf_P(PSTR("%i.%S %S"),8,viewStr,temperStr);
//				printf_P(PSTR("%i.%S %Ss\n"),9,setStr,snStr);
#else
				printf_P(PSTR("%i.%S %S"),6,viewStr,timeStr);
#endif
				break;
			case CLRIDS_EEPROM:
				LCD_CLEAR();
				printf_P(PSTR("%S %Ss?\n"),clearStr, snStr);
				MenuPhase = CLRIDS_EEPROM2;
				break;
			case CLRIDS_EEPROM2:
				if(ch == '*') {
					if(ClearEEPROMSensCodes())
						 printf_P(PSTR("\n%SD %S!"),clearStr,okStr);
					else printf_P(PSTR("\n%SD %S!"),clearStr,errStr);
					fl = 1;
					MenuPhase = MMENU_SHOW;
				}
				_delay_ms(1000);
				break;
			case  MTELPHONE_SET:
				if(fl == 0){
					ActSN = TELPRNSTR;
					fl = 1;
				}
				switch(ActSN) {
					case TELPRNSTR:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S:\n"),setStr, telStr);
						ActSN = TELENTERNUM;
						n = 0;
						break;
					case TELENTERNUM:
						if(ch >= 0x30 && ch <= 0x39) {
							if(n < LENNUMPHONE){
								printf("%c",ch);
								telNumber[n] = ch;
								n++;
								}
						 	 }
						if(ch == '*')
							{
							 telNumber[n] = '\0';
							 printf_P(PSTR("\n%S%S?"),saveStr, toeepromStr);
							 printf_P(PSTR("\n%s"),telNumber);
							 ActSN = TELTOEEPROM;
							}
						break;
					case TELTOEEPROM:

						if(ch == '*') {
							//eeprom_update_block((void *)telNumber , (void*)etelNumber ,strlen(telNumber));
							eeprom_write_block((void *)telNumber , (void*)etelNumber ,strlen(telNumber)+1);
							printf_P(PSTR("\n%SD %S!"),saveStr,okStr);
							ActSN = EXITTELSET;;
						}
						break;
					case EXITTELSET:
						break;
				}

				break;

			case MSNs_SET:
				if(fl == 0){
					ActSN = INDOOR;
					fl = 1;
				}

				switch(ActSN) {

					case INDOOR:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S %S:\n"),indoorStr,snStr);
						ch = 'z';
						n = 0;
						nSNpos = 0;
						ActSN_next = OUTDOOR;
						aSN_num = 0;
						ActSN = ENTER_SN;
						break;
					case OUTDOOR:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S %S:\n"),outdoorStr,snStr);
						ch = 'z';
						n = 0;
						nSNpos = 0;
						ActSN_next = SUPPLY;
						aSN_num = 1;
						ActSN = ENTER_SN;
						break;
					case SUPPLY:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S %S:\n"),supplyStr,snStr);
						ch = 'z';
						n = 0;
						nSNpos = 0;
						ActSN_next = RETURN;
						aSN_num = 2;
						ActSN = ENTER_SN;
						break;
					case RETURN:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S %S:\n"),returnStr,snStr);
						ch = 'z';
						n = 0;
						nSNpos = 0;
						ActSN_next = INDOOR;
						aSN_num = 3;
						ActSN = ENTER_SN;
						break;

					case ENTER_SN:
						 if(ch >= 0x30 && ch <= 0x39) {
							if(nSNpos < SNLEN){
								printf("%c",ch);
								wStr[n] = ch;
							  if (n < 2) n++;
							  else {
								wStr[n+1] = 0;
								ki = atoi(wStr);
								if(ki <= 255){
									gSensNumb[nSNpos] = (uint8_t) ki;
									ReturnXPos(3);
									printf("%02X ",gSensNumb[nSNpos]);
							        ReturnXPos(1);
									nSNpos += 1;
								   if(nSNpos == SNLEN){
								      gSensNumb[nSNpos] = 0;
								      for(k=0;k<SNLEN;k++)
										 gSensorIDs[aSN_num][k] = gSensNumb[k];
								      ch = crc8(&gSensNumb[0],SNLEN);
								      gSensorIDs[aSN_num][k] = ch;
								      printf_P(PSTR("\n %S:%02X"),checksumStr,ch);
								      ActSN = SN_EXIT;
								   }
								} else { ReturnXPos(3); printf_P(PSTR("   ")); ReturnXPos(3);}
								n = 0;
							  }
						    } else 	ActSN = SN_EXIT;

						}

							if(ch == '*')
								ActSN = ActSN_next;

							break;
						case SN_EXIT:
							if(ch == '*')
								ActSN = ActSN_next;
							break;
					}	// switch(ActSN)

				break;

			case MVIEW_SNs:
				if(fl == 0){
					fl = 1;
					LCD_CLEAR();

				//LCD_FIRSTLINE();
/*
				if(ch == '*'){
					if(nSensors > LCD_NUMBLINES-2){
						if((ks + LCD_NUMBLINES-2) <= (nSensors - LCD_NUMBLINES+2))
							ks += LCD_NUMBLINES-2;
					else
						ks = nSensors - LCD_NUMBLINES+2;
					}
				  LCD_CLEAR();
				}
*/
				printf_P(PSTR("%S"),nsupdownStr);

//				for(k = ks;(k < ks+LCD_NUMBLINES-2) && (k < nSensors);k++){
				for(k = 0;k < MAXSENSORS;k++){
//					n = y;
#ifdef SN_SENSOR_SIZE
						printf("%02X%02X%02X%02X%02X%02X%02X",
#else
						// if(sn_presence[k])
						printf("\n%02X%02X%02X%02X%02X%02X%02X",
#endif
							gSensorIDs[k][0],\
							gSensorIDs[k][1],gSensorIDs[k][2],\
							gSensorIDs[k][3],gSensorIDs[k][4],\
							gSensorIDs[k][5],gSensorIDs[k][6]);

				}

				printf_P(PSTR("    %S"),exitStr);


				} else _delay_ms(1000);

				break;

			case MASSIGN:
				if(fl == 0){
					LCD_CLEAR();
				//LCD_FIRSTLINE();
				printf_P(PSTR("%S%i - %S"), snStr,1,indoorStr);
				printf_P(PSTR("\n%S%i - %S"),snStr,2,outdoorStr);
				printf_P(PSTR("\n%S%i - %S"),snStr,3,supplyStr);
				printf_P(PSTR("\n%S%i - %S"),snStr,4,returnStr);
				printf_P(PSTR("\n   %S"),exitStr);
				fl = 1;
				}
				break;
			case MVIEWTEMPR:
				if(fl == 0){
				LCD_CLEAR();
				//LCD_FIRSTLINE();

				printf_P(PSTR("%S%S:%i"),indoorStr,minStr,(int8_t)rTempInDoorMin);
				printf_P(PSTR("\n%S%S:%i"),indoorStr,maxStr,(int8_t)rTempInDoorMax);
				printf_P(PSTR("\n%S%S:%i"),outdoorStr,minStr,(int8_t)rTempOutDoorMin);
#ifdef N3310_LCD
				if((int8_t)rTempOutDoorMin < -9)
					printf_P(PSTR("%S%S:%i"),outdoorStr,maxStr,(int8_t)rTempOutDoorMax);
				else
					printf_P(PSTR("\n%S%S:%i"),outdoorStr,maxStr,(int8_t)rTempOutDoorMax);
				if((int8_t)rTempOutDoorMax < -9)
					printf_P(PSTR("%S%S:%i"),supplyStr,minStr,(int8_t)rTempSupplyMin);
				else
					printf_P(PSTR("\n%S%S:%i"),supplyStr,minStr,(int8_t)rTempSupplyMin);
#else
				printf_P(PSTR("\n%S%S:%i"),outdoorStr,maxStr,(int8_t)rTempOutDoorMax);
				printf_P(PSTR("\n%S%S:%i"),supplyStr,minStr,(int8_t)rTempSupplyMin);
#endif
				printf_P(PSTR("\n%S%S:%i"),supplyStr,maxStr,(int8_t)rTempSupplyMax);
#ifdef N1110_LCD
				printf_P(PSTR("\n%S%S:%i"),diffStr,minStr,(int8_t)rTempDiffSupplyReturnMin);
				printf_P(PSTR("\n%S%S:%i"),diffStr,maxStr,(int8_t)rTempDiffSupplyReturnMax);
#endif

				fl = 1;
				} else _delay_ms(1000);
				break;
			case MSETTEMP:
				if(fl == 0){
					ActSN = INDOORTEMPMIN;
					fl = 1;
				}

				switch(ActSN){
					case INDOORTEMPMIN:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,indoorStr);
						printf_P(PSTR(" %S:"),minStr);
						ch = 'z';
						n = 0;
						k = 1;
						ActSN_next = INDOORTEMPMAX;
						ActSN = ENTER_TEMP;
						TempAct = &rTempInDoorMin;
						break;
					case INDOORTEMPMAX:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,indoorStr);
						printf_P(PSTR(" %S:"),maxStr);
						ch = 'z';
						ActSN_next = OUTDOORTEMPMIN;
						ActSN = ENTER_TEMP;
						TempAct = &rTempInDoorMax;
						n = 0;
						k = 1;
						break;
					case OUTDOORTEMPMIN:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,outdoorStr);
						printf_P(PSTR(" %S:"),minStr);
						ch = 'z';
						ActSN_next = OUTDOORTEMPMAX;
						ActSN = ENTER_TEMP;
						n = 0;
						k = 1;
						TempAct = &rTempOutDoorMin;
						break;
					case OUTDOORTEMPMAX:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,outdoorStr);
						printf_P(PSTR(" %S:"),maxStr);
						ch = 'z';
						ActSN_next = SUPPLYTEMPMIN;
						ActSN = ENTER_TEMP;
						n = 0;
						k = 1;
						TempAct = &rTempOutDoorMax;
						break;
					case SUPPLYTEMPMIN:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,supplyStr);
						printf_P(PSTR(" %S:"),minStr);
						ch = 'z';
						ActSN_next = SUPPLYTEMPMAX;
						ActSN = ENTER_TEMP;
						n = 0;
						k = 1;
						TempAct = &rTempSupplyMin;
						break;
					case SUPPLYTEMPMAX:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,supplyStr);
						printf_P(PSTR(" %S:"),maxStr);
						ch = 'z';
						ActSN_next = DIFFTEMPMIN;
						ActSN = ENTER_TEMP;
						TempAct = &rTempSupplyMax;
						n = 0;
						k = 1;
						break;
					case DIFFTEMPMIN:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,diffStr);
						printf_P(PSTR(" %S:"),minStr);
						ch = 'z';
						ActSN_next = DIFFTEMPMAX;
						ActSN = ENTER_TEMP;
						n = 0;
						k = 1;
						TempAct = &rTempDiffSupplyReturnMin;
						break;
					case DIFFTEMPMAX:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S\n"),exitStr,nextStr);
						printf_P(PSTR(" %S%S\n"),tempStr,diffStr);
						printf_P(PSTR(" %S:"),maxStr);
						ch = 'z';
						ActSN_next = TOEEPROM;
						ActSN = ENTER_TEMP;
						n = 0;
						k = 1;
						TempAct = &rTempDiffSupplyReturnMax;
						break;
					case TOEEPROM:
						LCD_CLEAR();
						//LCD_FIRSTLINE();
						printf_P(PSTR("%S %S?\n"),saveStr, toeepromStr);
						ActSN_next = INDOORTEMPMIN;
						ActSN = SAVE_EEPROM;
						break;
					case SAVE_EEPROM:
						if(ch == '*') {
							eeprom_update_byte((uint8_t*) &TempInDoorMin,rTempInDoorMin);
							eeprom_update_byte((uint8_t*) &TempInDoorMax,rTempInDoorMax);
							eeprom_update_byte((uint8_t*) &TempOutDoorMin,rTempOutDoorMin);
							eeprom_update_byte((uint8_t*) &TempOutDoorMax,rTempOutDoorMax);
							eeprom_update_byte((uint8_t*) &TempSupplyMin,rTempSupplyMin);
							eeprom_update_byte((uint8_t*) &TempSupplyMax,rTempSupplyMax);
							eeprom_update_byte((uint8_t*) &TempDiffSupplyReturnMin,rTempDiffSupplyReturnMin);
							eeprom_update_byte((uint8_t*) &TempDiffSupplyReturnMax,rTempDiffSupplyReturnMax);
							eeprom_update_block((void *)gSensorIDs , (void*)eSensorIDs ,MAXSENSORS * OW_ROMCODE_SIZE);
							printf_P(PSTR("\n%SD %S!"),saveStr,okStr);
							ActSN = TEMP_EXIT;
						} else _delay_ms(1000);
						break;
					case TEMP_EXIT:
						if(ch == '*') ActSN = ActSN_next;

						break;
					case ENTER_TEMP:
						 if(ch >= 0x30 && ch <= 0x39) {

							 if(n < k){
								 if(n == 0 && ch == '9'){
								 	 	 { wStr[n] = '-'; k = 2; printf("-");}
								 } else { wStr[n] = ch; printf("%c",ch);}
								 n++;
							 } else {
								 wStr[n] = ch;
								 wStr[n+1] = '\0';
								 printf("%c",ch);
								 ki = atoi(wStr);
								 *TempAct = ki;
								 n = 0;
								 printf_P(PSTR("\nValue is:%i"),ki);
								 ActSN = TEMP_EXIT;
							 }
						 }
						 if(ch == '*') ActSN = ActSN_next;
						break;
				}	// switch(ActSN)
				//ch = 'z';
				break;
			case MVIEW_TIME:
				if(fl == 0) {LCD_CLEAR(); fl = 1;}

#ifdef N1110_LCD
				LCD_SETTEXTSIZE(2);
#endif
				LCD_FIRSTLINE();
#ifdef N1110_LCD
				printf_P(PSTR("\n%02d:%02d:%02d"),tAsync.hour,tAsync.minute,tAsync.second);
				LCD_SETTEXTSIZE(1);
#else
				printf_P(PSTR("\n  %02d:%02d:%02d"),tAsync.hour,tAsync.minute,tAsync.second);
#endif
				break;
			case MSET_TIME:
				if(fl == 0){
					LCD_CLEAR();
					ActSN = MSET_HOUR;
					ActSN_next = MSET_MINUTE;
					fl = 1;
				}	// if(fl == 0)

				switch(ActSN){
				case MSET_HOUR:
					printf_P(PSTR("\n%S:"),hourStr);
					k = 1;
					n = 0;
					ks = 23;
					TempAct = (int8_t*)&(tAsync.hour);
					ActSN_next = MSET_MINUTE;
					ActSN = ENTER_NUMB;
					break;
				case MSET_MINUTE:
					printf_P(PSTR("\n%S:"),minuteStr);
					k = 1;
					n = 0;
					ks = 60;
					TempAct = (int8_t*)&(tAsync.minute);
					ActSN_next = MSET_SECOND;
					ActSN = ENTER_NUMB;
					break;
				case MSET_SECOND:
					printf_P(PSTR("\n%S:"),secondStr);
					k = 1;
					n = 0;
					ks = 60;
					TempAct = (int8_t*)&(tAsync.second);
					ActSN_next = MTIME_EXIT;
					ActSN = ENTER_NUMB;
					break;

				case ENTER_NUMB:
				 	 if(ch >= 0x30 && ch <= 0x39) {

					 	 if(n < k){
						 	 wStr[n] = ch;
						 	 printf("%c",ch);
						 	 n++;
					 	 } else {
						 	 wStr[n] = ch;
						 	 wStr[n+1] = '\0';
						 	 printf("%c",ch);
						 	 ki = atoi(wStr);
							 n = 0;
							 if(ki >= 0 && ki <= (int) ks){
								*TempAct = ki;
								ActSN = ActSN_next;;
							 } else {
								ReturnXPos(2); 
								printf_P(PSTR("  "));
								ReturnXPos(2);
							 }
					 	 }
				 	 }
				 	 if(ch == '*') ActSN = ActSN_next;
				 	 break;
				case MTIME_EXIT:
					if(ch == '*') {MenuPhase = MVIEW_TIME; fl = 0;}
					break;
				}	// switch(ActSN)
				ch = 'z';
				break;
			case MEXIT:
				LCD_CLEAR();
				LastPhase = MainLoopPhase;
				MainLoopPhase = DISPLAY_TEMPERATURE;
				MenuPhase = MMENU_SHOW;
				continue;

				break;

			}	// switch(MenuPhase)

		break;
		}	// switch(MainLoopPhase)
		LCD_UPDATE();

	if(MainLoopPhase != ENTER_NEW_SENSOR){
		DO_WATCHDOG();

		for(k = 0;k < MAXSENSORS;k++)
			if(noready_sens[k]) {
				sms_noready_sens(k);
			}

		if(MainLoopPhase == DISPLAY_MAINMENU)
			if(TimeKeyPressed > KEYPRESSED_TIMOUT){
				LastPhase = MainLoopPhase;
				MainLoopPhase = DISPLAY_TEMPERATURE;
				fl = 0;
				cli();
				TimeKeyPressed = 0;
				sei();
				LCD_CLEAR();
			}

		if(extstate != 0){
			LastPhase = MainLoopPhase;
			MainLoopPhase = DISPLAY_MAINMENU;
			fl = 0;
			cli();
			TimeKeyPressed = 0;
			extstate = 0;
			sei();
			LCD_CLEAR();
		}
	//
			if(tAsync.minute != mtemp_minute){
				MANAGE_TEMPEVENT();
				mtemp_minute = tAsync.minute;
				mausure_temperature_ok = TRUE;
			}
/*
			if(tAsync.minute % 10 == 0){
				if(fl_noready){
					TEST_NOTREADY_SENSORS();
					fl_noready = FALSE;
				}
			} else fl_noready = TRUE;
*/
			if(CheckNoReadySNCounter > CHECKNOREADYSNINTERVAL){
				TEST_NOTREADY_SENSORS();
				cli();
				CheckNoReadySNCounter = 0;
				sei();
			}
	//
			if(tAsync.hour != mtemp_hour){
				MANAGE_OUTDOOR_TEMPEVENT();
				mtemp_hour = tAsync.hour;
			}
		}
	}
}
//
/*
void sleepPWS(){
	 extstate = 0;
	 set_sleep_mode(SLEEP_MODE_PWR_SAVE);   // sleep mode is set here
	 getSleep();
}
//
void sleepPWRDown(){
	extstate = 0;
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);   // sleep mode is set here
	getSleep();
}
//
void getSleep(){

	ShutOffADC();
    cli();
    sleep_enable();    // enables the sleep bit in the mcucr register
                             // so sleep is possible. just a safety pin

    SleepTime = TIME_TO_SLEEP;
    extstate = 0;
    ExtInt0Enable();
   do {
	 sei();
	 sleep_bod_disable();
	 sleep_cpu();            // here the device is actually put to sleep!!
                             // THE PROGRAM CONTINUES FROM HERE AFTER
//WAKING UP
       asm volatile(
      "   nop                    \n"
      "   nop                    \n"
      "   nop                    \n"
      "   nop                    \n"
      "   nop                    \n"
    ::);
       _delay_ms(50);
       if(extstate > 0)
    	   break;
      SleepTime --;
   } while (SleepTime > 0);

   sleep_disable();         // first thing after waking from sleep:
                             // disable sleep...
   ExtInt0Disable();
   InitAdc(ADC_CHANNEL);
   InitAnalogComp();

}
*/
//
/*
 *  ShutOffADC      shut down the ADC and prepare for power reduction
 */
void  ShutOffADC(void)
{
    ACSR = (1<<ACD);                        // disable A/D comparator
    ADCSRA = (0<<ADEN);                     // disable A/D converter
    DIDR0 = 0x3f;                           // disable all A/D inputs (ADC0-ADC5)
    DIDR1 = 0x03;                           // disable AIN0 and AIN1
}
//
#ifndef DEBUG

int8_t test_SN_sensors(){
	int8_t i, k;
	int8_t retcode;
	for ( k = 0; k < MAXSENSORS; k++ ) {
	 retcode = 1;
	 for ( i = 0; i < MAXSENSORS; i++ ) {
		if(!memcmp(&gSensorIDs[k],(uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE),OW_ROMCODE_SIZE)){
			retcode = 0; break;
		}
	 }	// for ( i = 0; i < MAXSENSORS; i++ )
	 if(retcode) return k;
//	 else sn_presence[k] = TRUE;
    } //for ( k = 0; k < MAXSENSORS; k++ )
	return 99;
}
//
char checkPresenceSN(){
	char retcode;
	uint8_t i,k;

	k = 0;
	retcode = 1;
	for ( i = 0; i < MAXSENSORS; i++ ) {
		if(ValidSensorCode((uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE))){
			if((temper[i] = getTemperature((uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE))) == TEMPER_BAD)
				retcode = 0;
			else sn_presence[i] = TRUE;
			_delay_ms(3);
		} else k++;
	}
	if(k > 0) return 0;
	return retcode;
}
//
void copyrSNsTogSNs(void){
	uint8_t i;
	for ( i = 0; i < MAXSENSORS; i++ ) {
		memcpy(&gSensorIDs[i],(uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE),OW_ROMCODE_SIZE);
	}	// for ( i = 0; i < MAXSENSORS; i++ )
}
#endif
//
//
void LcdPowerGoneStr(void){
	LCD_CLEAR();
	LCD_GOTO_XY(0,2);
	printf_P(PSTR("%S"),startPowerGoneStr);
	LCD_UPDATE();
_delay_ms(5000);
}
//
void DisplayTemperature(void){
	uint8_t i,k;
	if(mausure_temperature_ok){
		k = 0;
		for(i=0;i<MAXSENSORS;i++) if(temper[i] != TEMPER_BAD) k++;

		if(oldDisplaySens > k) LCD_CLEAR();
		else LCD_FIRSTLINE();
		oldDisplaySens = k;

		printf_P(PSTR("  %02d:%02d:%02d\n"),tAsync.hour,tAsync.minute,tAsync.second);
		if(sn_presence[0]){
			if(temper[0] < TEMPER_BAD)
				printf_P(PSTR("\n %S: %i"),indoorStr,temper[0]);
		}
		if(sn_presence[1]){
			if(temper[1] < TEMPER_BAD)
				printf_P(PSTR("\n %S: %i"),outdoorStr,temper[1]);
		}
		if(sn_presence[2]){
			if(temper[2] < TEMPER_BAD)
				printf_P(PSTR("\n %S: %i"),supplyStr,temper[2]);
		}
		if(sn_presence[3]){
			if(temper[3] < TEMPER_BAD)
				printf_P(PSTR("\n %S: %i"),returnStr,temper[3]);
		}

		mausure_temperature_ok = FALSE;
	} else _delay_ms(2000);
}

//
int16_t getTemperature(uint8_t* sensorID)
{
	int16_t temp;
	char s[10],k;
	k = 3; // Repeat 3 times

	do {
	if ( DS18X20_start_meas( DS18X20_POWER_PARASITE, sensorID ) == DS18X20_OK ) {
		_delay_ms( DS18B20_TCONV_12BIT );
		DO_WATCHDOG();
		if ( DS18X20_read_decicelsius( sensorID, &temp) == DS18X20_OK ) {
			if( DS18X20_OK == DS18X20_format_from_decicelsius( temp, s, 10 ))
				return atoi(s);
		}
	}
	} while (k--);
	return TEMPER_BAD;
}
//
	void manageTemperatureEvent(void){
		uint8_t i;
		uint8_t inTA;
		uint8_t sh;

		inTA = (rTempInDoorMin + rTempInDoorMax)/2;

		if(kg < MAXSENSORS - 1) kg++;
		else kg = 0;

			if(sn_presence[kg]){
				temper[kg] = getTemperature(&gSensorIDs[kg][0]);
				if (temper[kg] == TEMPER_BAD){
					if (sn_noready_counter[kg] < NOREADY_COUNTER_MAX )
						sn_noready_counter[kg]+=1;
					else {
							sn_presence[kg] = FALSE;
							noready_sens[kg] = TRUE;
							sn_noready_counter[kg] = 0;
						 }
				}
			}

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	sh = 5;
	if(PrefHeatting){
	// Outdoor temperature is drop down 10 degrees Celcius for an hour
		if (temper[N_INDOOR] <= rTempInDoorMax + PREHEATTING_ADDV ||
				temper[N_INDOOR] == TEMPER_BAD) sh = 4;

	}

		if(temper[N_INDOOR] != TEMPER_BAD){
			if (temper[N_INDOOR] <= rTempInDoorMin) sh = 0;
			else if (temper[N_INDOOR] <= inTA) sh = 1;
			else if (temper[N_INDOOR] <= rTempInDoorMax) sh = 2;
			else if (sh != 4) sh = 3;
		} else if(temper[N_SUPPLY] == TEMPER_BAD || temper[N_RETURN] == TEMPER_BAD) sh = 0;

		if (sh == 5){
			if(temper[N_SUPPLY] != TEMPER_BAD && temper[N_RETURN] != TEMPER_BAD) {
				inTA = (rTempDiffSupplyReturnMin + rTempDiffSupplyReturnMax)/2;
				i = temper[N_SUPPLY] - temper[N_RETURN];
				if( i > rTempDiffSupplyReturnMax) sh = 0;
				else if( i > inTA ) sh = 1;
				else if(i > rTempDiffSupplyReturnMin) sh = 2;
				else sh = 3;
			}	//if(temper[N_SUPPLY] != TEMPER_BAD && temper[N_RETURN] != TEMPER_BAD) {
		} // if (sh == 5)

		switch (sh){
		case	0:
		case	4:
			cbi(VALVE_PORT, VALVE_PIN3XVALVE);
			sbi(PUMP0_PORT, PUMP0_PIN0);
			sbi(PUMP0_PORT, PUMP0_PIN1);
			break;
		case	1:
			sbi(PUMP0_PORT, PUMP0_PIN0);
			cbi(VALVE_PORT, VALVE_PIN3XVALVE);
			cbi(PUMP0_PORT, PUMP0_PIN1);
			break;
		case	2:
			cbi(PUMP0_PORT, PUMP0_PIN0);
			cbi(VALVE_PORT, VALVE_PIN3XVALVE);
			cbi(PUMP0_PORT, PUMP0_PIN1);
			break;
		case	3:
			sbi(PUMP0_PORT, PUMP0_PIN0);
			sbi(VALVE_PORT, VALVE_PIN3XVALVE);
			cbi(PUMP0_PORT, PUMP0_PIN1);
			break;
		}
}


//
// Return TRUE if exit from PHASE
//

uint8_t manage_new_sensors(char ch){
	uint8_t sensID, l, val;
	int8_t retcode, i, fl4, fl3;

	switch(nwSen_Phase){
	case REORDER_NWSENS:
		kg = 0;
		nwSen_Phase = REORDER_NWSENS2;
	break;

	case REORDER_NWSENS2:
	 if(ValidSensorCode((uint8_t*) &gSensorIDs[kg])){
	  fl4 = 1;
	  retcode = 1;
	  for ( i = 0; i < MAXSENSORS; i++ ) {
		if(!memcmp(&gSensorIDs[kg],(uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE),OW_ROMCODE_SIZE)){
			retcode = 0;
			if (kg == i) break;
			if(!memcmp(&gSensorIDs[kg],&gSensorIDs[i],OW_ROMCODE_SIZE)) fl3 = TRUE;
			else fl3 = FALSE;
			for (l = 0; l < OW_ROMCODE_SIZE; l++){
				sensID = gSensorIDs[i][l];
				gSensorIDs[i][l] = gSensorIDs[kg][l];
				val = sn_presence[i];
				sn_presence[i] = sn_presence[kg];

				if(fl3){
					gSensorIDs[kg][l] = 0;
					sn_presence[kg] = 0;
				} else {
					gSensorIDs[kg][l] = sensID;
					sn_presence[kg] = val;
				}
			}
			fl4 = 0;
		}	// if(memcmp(&gSensorIDs[i],&rSensorIDs[i],OW_ROMCODE_SIZE))
	  }	// for ( i = 0; i < MAXSENSORS; i++ )
	  if(retcode != 0) nwSen_Phase = ASSIGN_NEWSENS;
	  else {
		 if(fl4){
			 if (kg < MAXSENSORS - 1) kg++;
			 else if(retcode == 0) return 1;
		 }
	  }
	 } else return 1;
	break;
	case ASSIGN_NEWSENS:
		 // new sensor found
			 LCD_CLEAR();
			 //printf_P(PSTR("%s"),&gSensorIDs[kg]);
			 //printf_P(PSTR("\n%S %S"),setStr,assignStr);
             printf("%02X%02X%02X%02X%02X%02X%02X",
                      gSensorIDs[kg][0],\
                      gSensorIDs[kg][1],gSensorIDs[kg][2],\
                      gSensorIDs[kg][3],gSensorIDs[kg][4],\
                      gSensorIDs[kg][5],gSensorIDs[kg][6]);
#ifdef SN_SENSOR_SIZE
             printf_P(PSTR("%S %S"),setStr,assignStr);
#else
             printf_P(PSTR("\n%S %S"),setStr,assignStr);
#endif
			 if(!sn_presence[0]) printf_P(PSTR("\n%i-%S"),0,indoorStr);
			 if(!sn_presence[1]) printf_P(PSTR("\n%i-%S"),1,outdoorStr);
			 if(!sn_presence[2]) printf_P(PSTR("\n%i-%S"),2,supplyStr);
			 if(!sn_presence[3]) printf_P(PSTR("\n%i-%S"),3,returnStr);
			 LCD_UPDATE();
			 nwSen_Phase = ASSIGN_NEWSENS2;
		break;
	case ASSIGN_NEWSENS2:
		 	 switch(ch){
		 	 case '0':
		 	 case '1':
		 	 case '2':
		 	 case '3':
		 		 	l = ch - '0';
			 		if(!sn_presence[l]){
			 			memcpy((uint8_t*)(rSensorIDs + l * OW_ROMCODE_SIZE),&gSensorIDs[kg][0],OW_ROMCODE_SIZE);
			 			sn_presence[l] = TRUE;
			 		}
		 		 nwSen_Phase = ASSIGN_TOEEPROM;
			 	 break;

		 	 }
	break;
	case ASSIGN_TOEEPROM:
		eeprom_update_block((void *)rSensorIDs , (void*)eSensorIDs ,MAXSENSORS * OW_ROMCODE_SIZE);
	 	 if (kg < MAXSENSORS - 1)
	 		 nwSen_Phase = REORDER_NWSENS2;
		else return 1;
		break;
	} // switch(nwSen_Phase){
	return 0;

}
//
void DoWatchDog(void) {
	if (TLastWatchDog == tAsync.second) return;
	if(ReadyWATCHDOG){
		if(WATCHDOG_STATE){
			WATCHDOG_PORT |= (1 << WATCHDOG_PIN); WATCHDOG_STATE = 0;
		} else {
			WATCHDOG_PORT &= ~(1 << WATCHDOG_PIN); WATCHDOG_STATE = 1;}
		TLastWatchDog = tAsync.second;
		}
}
//
char ValidSensorCode(uint8_t* sensorID){
	uint8_t l;
	for (l = 0; l < OW_ROMCODE_SIZE; l++){
		if(sensorID[l] == 0xff || sensorID[l] == 0x00) continue;
		else return 1;
	}
	return 0;
}
//
void sms_noready_sens(uint8_t sensNumber){
	size_t size;
	SMS *psms;
	size = sizeof(SMS)+1;
	if((psms = (SMS*)malloc(size)) != NULL){
		strncpy(psms->number, telNumber, SMSlenNumber);
		//strncpy_P(wbuffer, notReadyStr, LCD_COLUMN_NUMBER);
		//strncat(psms->body, wbuffer, SMSlenBody - strlen(psms->body));
		strncpy_P(psms->body, notReadyStr, SMSlenBody);
		strncpy_P(wbuffer, snStr, WBUFFER_LEN );
		strncat(psms->body, wbuffer, SMSlenBody - strlen(psms->body));
		sprintf_P(wbuffer,PSTR("%d: "),sensNumber);
		strncat(psms->body, wbuffer, SMSlenBody - strlen(psms->body));
		sprintf_P(wbuffer,PSTR(" at %02d:%02d:%02d"),tAsync.hour,tAsync.minute,tAsync.second);
		strncat(psms->body, wbuffer, SMSlenBody - strlen(psms->body));
		DO_WATCHDOG();
		gsm_send_sms( psms->number, psms->body, 1 );
		free(psms);
	}
	noready_sens[sensNumber] = FALSE;
	resetSensNumber(sensNumber);

}
//
void resetSensNumber(uint8_t sensNumber){
	int8_t i;
	for(i = 0;i < OW_ROMCODE_SIZE; i++)
		gSensorIDs[sensNumber][i] = 0x00;
}

void sms_pumpStarted(){
	size_t size;
	SMS *psms;
	size = sizeof(SMS)+1;
	if((psms = (SMS*)malloc(size)) != NULL){
		strncpy(psms->number, telNumber, SMSlenNumber);
		strncpy_P(psms->body, startRegulatorStr, SMSlenBody);
//		sprintf_P(wbuffer,PSTR(" at %02d:%02d:%02d"),tAsync.hour,tAsync.minute,tAsync.second);
//		strncat(sms.body, wbuffer, sizeof(sms.body) - strlen(sms.body));
		gsm_send_sms( psms->number, psms->body, 2 );
		free(psms);
	}
}
// if((gSensorIDs = (uint8_t *)malloc(MAXSENSORS * OW_ROMCODE_SIZE+1) != NULL) MAXSENSORS][OW_ROMCODE_SIZE
void sms_powerGone(){
	size_t size;
	SMS *psms;
	size = sizeof(SMS)+1;
	if((psms = (SMS*)malloc(size)) != NULL){
		strncpy(psms->number, telNumber, SMSlenNumber);
		strncpy_P(psms->body, startPowerGoneStr, SMSlenBody);
		sprintf_P(wbuffer,PSTR(" at %02d:%02d:%02d"),tAsync.hour,tAsync.minute,tAsync.second);
		strncat(psms->body, wbuffer, sizeof(psms->body) - strlen(psms->body));
		gsm_send_sms( psms->number, psms->body, 2 );
		free(psms);
	}
}
//
//MANAGE_OUTDOOR_TEMPEVENT();
void ManageOutdoorTempEvent(){
	if (temper[N_OUTDOOR] != TEMPER_BAD ){
		if (temp_for_hour == TEMPER_BAD) temp_for_hour = temper[N_OUTDOOR];
		if (temper[N_OUTDOOR] - temp_for_hour >= DIFF_OF_OUTDOOR_TEMPER_DOWN){
			PrefHeatting = TRUE;
			temp_for_hour = temper[N_OUTDOOR];
		}
		else PrefHeatting = FALSE;
	}
}
//
//TEST_NOTREADY_SENSORS();
void TestNoReadySensors(){
	uint8_t i;

	if((rSensorIDs = (uint8_t *)malloc(MAXSENSORS * OW_ROMCODE_SIZE+1)) != NULL) {
			eeprom_read_block((void *)rSensorIDs , (const void*)eSensorIDs ,MAXSENSORS * OW_ROMCODE_SIZE);

		for ( i = 0; i < MAXSENSORS; i++ ) {
			if (!sn_presence[i])
				if(ValidSensorCode((uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE))){
					if((temper[i] = getTemperature((uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE))) != TEMPER_BAD){
						memcpy(&gSensorIDs[i],(uint8_t*)(rSensorIDs + i * OW_ROMCODE_SIZE),OW_ROMCODE_SIZE);
						sn_presence[i] = TRUE;
					}
				}
			_delay_ms(3);
		}
		free(rSensorIDs);
	}
}
//
int8_t ClearEEPROMSensCodes(){

	if((rSensorIDs = (uint8_t *)malloc(MAXSENSORS * OW_ROMCODE_SIZE+1)) != NULL) {
		*rSensorIDs = 0x00;
		memcpy(rSensorIDs+1, rSensorIDs,MAXSENSORS * OW_ROMCODE_SIZE);
		eeprom_write_block((const void *)rSensorIDs , (void*)eSensorIDs , MAXSENSORS * OW_ROMCODE_SIZE);
		free(rSensorIDs);
		return TRUE;
	}
	return FALSE;
}
//
