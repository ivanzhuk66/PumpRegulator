Ivan Zhuk, Nevyansk, 30.05.2015.

CAUTION: NOT TESTED ON A REAL DEVICE !!!

Regulator of circulation pumps (TSN, pins PC4, PC5) and the three-way valve (TCA, pin PC3) for hot water heating systems.
It is assumed that the boiler stops heating the water when the supply temperature exceeds the maximum (SUPPLYMAX).

Estimated location of the equipment - see ReadMe.en or Readme.ru


Sensor - indoor - inside the house, outdoor - outside the house.

Poll of temperature sensors is held every 4 minute. One by one every minute.

Enter parameters before operating:
	- Time (SET TIME).
	- Places of sensors by serial numbers (during the first boot) - where what is.
	- Limit values ​​for temperature sensors (SET MIN-MAX).
		Input values:
			INDOORMIN - indoor minimal temperature.
			INDOORMAX - indoor maximum temperature.
			OUTDOORMIN - outdoor minimal temperature.
			OUTDOORMAX - outdoor maximum temperature.
			SUPPLYMIN - the minimum supply flow temperature.
			SUPPLYMAX - the maximum supply flow temperature.
			DIFFMIN - the minimum temperature difference between supply flow and return flow.
			DIFFMAX - the maximum temperature difference between supply flow and return flow.

	- The phone number for sending SMS (SET PHONE).
	- Write data to EEPROM (TO EEPROM).

Brief description:

A. Processing of sensor values.
	pin PD4 - temperature sensor connection; type DS18B20.
	pin PD5 - used to improve the parasitic power supply.

	I. Sensor INDOOR (inside the house) is OK.

	  If:
		- Tindoor < INDOORMIN then ==> TCA - off, TSN0 - ON; TSN1 - ON;
		- INDOORMIN <= Tindoor <(INDOORMIN + INDOORMAX) / 2 then ==> TCA is off, TSN0 is ON TSN1 is off;
		- (INDOORMIN + INDOORMAX) / 2 <Tindoor <INDOORMAX then ==> TCA is off, TSN0 is off, TSN1 is off;
		- INDOORMAX <Tindoor then ==> TCA is ON TSN0 is ON TSN1 is off.
	  Where Tindoor - the temperature inside the house.

	II. Sensor INDOOR (inside the house) is defective.

	  If:
		- Defective one of the sensors - supply flow sensor(DP) or return sensor(DO) then ==> TCA is off,
		  TSN0 - lit TSN1 - enabled;
		- Both the DP and the DO are OK 
		  and:
			- DIFFMAX < (Tsupply - Treturn) then ==> TCA - off, TSN0 - ON TSN1 - ON;
			- (DIFFMIN + DIFFMAX) / 2 <(Tsupply - Treturn) <= DIFFMAX then ==> TCA - off, TSN0 - ON TSN1 - off;
			- DIFFMIN <(Tsupply - Treturn) <= (DIFFMIN + DIFFMAX) / 2 then ==> TCA - off, TSN0 - off, TSN1 - off;
			- (Tsupply - Treturn) <= DIFFMIN then ==> TCA - ON TSN0 - ON TSN1 - off.
	  Where Tsupply - supply flow temperature, Treturn - return flow temperature.

	III. If Toutdoor (temperature outside) fell by more than 15 degrees during hour then -
	     items I. and II. are ignored during next hour and ==> TCA - off, TSN0 - ON TSN1 - ON;

B. CONTROL OF THE PRESENCE OF POWER SUPPLY 220V or 3-phase power.
	pin PD3 - signal presence of a POWER SUPPLY connection.

	While PD3 == 0 the controller works (during work it changes value of the pin PB0(0 or 1) every 1-5 seconds);
	if PD3 == 1 during from 1 to 2 minutes then - the controller sends SMS "01-Power Gone!" using USART (pins - PD0, 	 
	PD1 to which it is necessary to connect a GSM modem or phone) and stops (value of PB0 pin does not change that in 	  
	turn triggers a signal conditioner ALARM ).

C. The signal conditioner ALARM.
	The circuit in logic elements generates a short pulse MV_SRC on a rising edge signal WATCHDOG_PIN.
	MV_SRC amplifying with transistor Q2 to MV_OUT signal which is supplied to two circuits:
		- Driver permits alarm;
		- To reset the timer that controls the micro-controller operation . (Absence of the signal pulse MV_OUT
		  will generate ALARM by flip-flop U6.A U6.B)

D. KEYBOARD
	Connection is carried out using the ADC (pin ADC7) and comparator (pins PD6, PD7).

E. Display LCD (Nokia 1110i or 3310 - set at compile time).
	Pins PB1, PB2, PB3, PB4, PB5.

