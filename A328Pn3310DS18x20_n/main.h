/*
 * main.h
 *
 *  Created on: Feb 22, 2015
 *      Author: izhuk
 */

#ifndef MAIN_H_
#define MAIN_H_

#define NEWLINESTR "\r\n"

#ifdef WATCHDOG
extern void WDT_setup();
#endif

#ifdef MAXIM_SEARCH_ENABLE
extern int  OWFirst();
extern int  OWNext();
extern int OWReset();
extern uint8_t OWVerify();
extern void ResetDiscrepancy();
extern unsigned char ROM_NO[8];
static uint8_t search_sensors_n();
#else
static uint8_t search_sensors(void);
#endif

extern void InitAdc(uint8_t);
extern void InitAnalogComp(void);
extern uint8_t GetKeyCode(void);
extern void resetKbd(void);

extern uint8_t extstate;
extern uint8_t powergone;
extern time tAsync;
extern char wait_powergone;
extern uint8_t TimeKeyPressed;
extern unsigned x,y;

void DoWatchDog(void);
int8_t  test_SN_sensors(void);
char checkPresenceSN(void);
void copyrSNsTogSNs(void);
void sleepPWS();
void sleepPWRDown();
void getSleep();
void ShutOffADC(void);
void LcdPowerGoneStr(void);
void manageTemperatureEvent(void);
uint8_t manage_new_sensors(char ch);
void DisplayTemperature(void);
int16_t getTemperature(uint8_t* sensorID);
char ValidSensorCode(uint8_t* sensorID);
void sms_noready_sens(uint8_t sensNumber);
void resetSensNumber(uint8_t sensNumber);
void sms_pumpStarted(void);
void sms_powerGone(void);

void ManageOutdoorTempEvent();
void TestNoReadySensors();
int8_t ClearEEPROMSensCodes();

//
//Main Loop Phases
enum { DISPLAY_TEMPERATURE, DISPLAY_MAINMENU, DISPLAY_KBD, ENTER_NEW_SENSOR };
//DISPLAY_MAINMENU Phases
enum {MMENU_SHOW,MSNs_SET,MVIEW_SNs,MASSIGN,MSETTEMP,MSET_TIME,MVIEW_TIME,MVIEWTEMPR,MTELPHONE_SET,CLRIDS_EEPROM,CLRIDS_EEPROM2,MEXIT};
//Assign sensors to places
enum {INDOOR, OUTDOOR, SUPPLY, RETURN, SN_EXIT, ENTER_SN};
//Assign temperature intervals
enum {INDOORTEMPMIN,INDOORTEMPMAX, OUTDOORTEMPMIN,OUTDOORTEMPMAX,\
		SUPPLYTEMPMIN,SUPPLYTEMPMAX,DIFFTEMPMIN,DIFFTEMPMAX,\
		TEMP_EXIT, ENTER_TEMP, TOEEPROM, SAVE_EEPROM};
enum {MSET_HOUR,MSET_MINUTE,MSET_SECOND,ENTER_NUMB,MTIME_EXIT};
enum {REORDER_NWSENS,REORDER_NWSENS2,ASSIGN_NEWSENS,ASSIGN_NEWSENS2,GETKEY_NWSENS,ASSIGN_TOEEPROM,EXIT_NWSENS};
enum {TELPRNSTR, TELENTERNUM, TELTOEEPROM, EXITTELSET};

#define N_INDOOR	0
#define N_OUTDOOR	1
#define N_SUPPLY	2
#define N_RETURN	3

#define WBUFFER_LEN 30

#define MANAGE_TEMPEVENT() manageTemperatureEvent()
#define HALT() abort()
#define BAUD 9600
// 2400 for 1MHz and 2MHz internal RC
// #define BAUD 2400
#define TEMPER_BAD 127
#define PUMP0_PORT	PORTC
#define PUMP0_DDRS	DDRC
#define PUMP0_PINS	PINC
#define PUMP0_PIN0	PC5
#define PUMP0_PIN1	PC4
#define VALVE_PORT 	PORTC
#define VALVE_DDRS	DDRC
#define VALVE_PIN3XVALVE	PC3
//#define WATCHDOG	1 this is real WATCHDOG timer does not realized !!!
// WATCHDOG realized with pin (WATCHDOG_PIN)
#define WATCHDOG_PORT	PORTB
#define WATCHDOG_DDR	DDRB
#define WATCHDOG_PIN	PB0
#define NOREADY_COUNTER_MAX 2
// #define DO_WATCHDOG() if(ReadyWATCHDOG){if(WATCHDOG_STATE){WATCHDOG_PORT |= (1 << WATCHDOG_PIN); WATCHDOG_STATE = 0;
//						} else {WATCHDOG_PORT &= ~(1 << WATCHDOG_PIN); WATCHDOG_STATE = 1;}}
#define DO_WATCHDOG() DoWatchDog() // See sms.c without macro is used DoWatchDog()!!
#define MANAGE_OUTDOOR_TEMPEVENT() ManageOutdoorTempEvent()
//
#define TEST_NOTREADY_SENSORS() TestNoReadySensors()


#define LENNUMPHONE 14
// if Outdoor Temperature is decreased for 10 degrees Celsius - turn on PrefHeatting
#define DIFF_OF_OUTDOOR_TEMPER_DOWN 10
#define PREHEATTING_ADDV	5
#define CHECKNOREADYSNINTERVAL 15

#endif /* MAIN_H_ */
