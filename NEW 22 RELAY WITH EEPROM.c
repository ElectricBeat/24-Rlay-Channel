/**********************************PIC16F877A HEADER FILE**************************************/
#include<pic.h>
#include<htc.h>
#define _XTAL_FREQ 20e6
__CONFIG(0X3F3A);
/**********************************************************************************************/

/***************************************TOTAL NO.OF RELAYS*************************************/
#define TOTAL_NO_OF_RELAY 2		//	TOTAL NO.OF RELAYS...THAT IS NEGLIGIBLE
/**********************************************************************************************/

/***************************************SWITCH DECLARATION*************************************/
#define INC_SW RA1					//	INCERMENT SWITCH
#define CUR_SW RA2					//	CURSOR SWITCH
#define ENT_SW RA3					//	ENTER SWITCH
#define MENU_SW RA4					//	STATUS SWITCH
#define EM_ST_SP_SW RA5				//	STATUS SWITCH
/**********************************************************************************************/

/***************************************RELAY SETTING DECLARATION******************************/
int R_COUNT,STATE,TIME_STORE_ARRAY,EM_ST_SP_COUNT;					//	RELAY,STATE INTEGER
int Cur_1=2,Cur_2,Cur_3;											//	1ST ROW,2ND ROW,3DH ROW CURSOR SET INTEGER
int ED_COUNT;														//	RELAY ENABLE/DISABLE INTEGER
unsigned int i[14],k[14];											//	ON/OFF TIME STORAGE ARRAY
bit F_FLAG,S_FLAG,T_FLAG,CYCLE_START,ON_TIME_FLAG,ON_TIME_RUN_INT;	//	CONTROLING PURPOSE FLAG
//char r[23] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22};	//	NO OF RELAYS(22)
char staus[23];														//	STATUS OF RELAY(22)
//int ch;															//	STATUS SHOW INTEGER
/**********************************************************************************************/

/***************************************TIME DECLARATION INTEGER*******************************/
unsigned int h2,h1,m2,m1,s2,s1;								//	HOURS,MINUTES,SECONDS TEMPORARY STORE INTEGER
char HH_N[23],MM_N[23],SS_N[23],HH_F[23],MM_F[23],SS_F[23];	//	HOURS,MINUTES,SECONDS PERMANENT STORE INTEGER(22 RELAY TIME)
int RHH,RMM,RSS,FHH,FMM,FSS;								//	ON TIME/OFF TIME RUNING TEMPORARY INTEGER

//int CYCLE_START,ON_TIME_RUN_INT,OFF_TIME_RUN_INT;			//	TIME RUNNING CYCLE INTEGER
char PORT[23] = {0x00,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,0x80,0x90,0xA0,0xB0,0xC0,0xD0,0xE0,0xF0,0x08,0x09,0x0A,0x0B,0x0C,0x0D};//,0x0E,0x0F};	//	RELAY PIN ACTIVATIVE
/**********************************************************************************************/

/***************************************EEPROM DECLARATION*************************************/
int ADC_INT,ADC_SAVE_VAL;									//	ADC INTEGER
//int HH_N_ARRAY,MM_N_ARRAY,SS_N_ARRAY,HH_F_ARRAY,MM_F_ARRAY,SS_F_ARRAY;	//	EEPROM TIME STORE INTEGER
int EEPROM_ADR;//R_STAUS_INT								//	ADDRESS INTEGER
/**********************************************************************************************/

/*************************************SETTING DECLARATION**************************************/
int SETTING_SW=0;
/**********************************************************************************************/
#include"LCD.h"

#include"RELAY_SELECTION.h"
#include"ON_TIMER_SELECTION.h"
#include"OFF_TIMER_SELECTION.h"
#include"STATUS_READ.h"
#include"ADC_EEPROM_STORE.h"
#include"EMERGCY_START_STOP.h"
#include"RUN_FULL_CYCLE.h"

/**************************************TIME RUN CYCLE FUNCTION*********************************/
/**********************************************************************************************/
/**********************************EEPROM STORE FUNCTION***************************************/
/**********************************************************************************************/

void main()
{
	TRISA=0X3F;
	PORTA=0X00;

	ADCON0=0X01;
	ADCON1=0Xce;

	TRISB=0X00;
	PORTB=0X00;

	TRISC=0X00;
	PORTC=0X00;

	TRISD=0X00;
	PORTD=0X00;

	TRISE=0X00;
	PORTE=0X00;

	Lcd_Intialization();

	for(int a=0;a<15;a++)
	{
		i[a]=0;
		k[a]=0;
	}

	Lcd_Command(0x80);
	Lcd_String("KAP AUTOMATION");
	__delay_ms(1000);
	Lcd_Command(0x80);
	Lcd_String("                ");
/**********************************************************************************************/

/*******************************ENTER SWITCHING OPERACTION*************************************/

	while(CUR_SW==1)
	{
		for(int test = 0;test < 256;test++)
		{
			eeprom_write(test,0);
		}

		SETTING_SW = 1;
		while(CUR_SW==1);
	}

	do
	{
		if(Cur_1==2)
		{
			F_FLAG = 1;
			S_FLAG = 0;
			T_FLAG = 0;
		}
		if(Cur_2==5)
		{
			F_FLAG = 0;
			S_FLAG = 1;
			T_FLAG = 0;
		}
		if(Cur_3==5)
		{
			F_FLAG = 0;
			S_FLAG = 0;
			T_FLAG = 1;
		}

		if(F_FLAG==1)
		{
			RELAY_SELECTION();
		}
		
		if(S_FLAG==1)
		{
			ON_TIMER_SELECTION();
		}

		if(T_FLAG==1)
		{
			OFF_TIMER_SELECTION();
		}

		while(ENT_SW==1)
		{
			SETTING_SW=0;
			while(ENT_SW==1);
		}
	}
	while(SETTING_SW==1);

/**********************************************************************************************/

/************************************EEPROM READ OPERACTION************************************/
	if(eeprom_read(0)==255)
	{
		for(int test = 0;test < 256;test++)
		{
			eeprom_write(test,0);
		}
	}


	for(EEPROM_ADR = 1;EEPROM_ADR <= 24;EEPROM_ADR++)
	{
		staus[EEPROM_ADR] = eeprom_read(EEPROM_ADR);
	}

	TIME_STORE_ARRAY = 0;
	for(EEPROM_ADR = 25;EEPROM_ADR <= 48;EEPROM_ADR++)
	{
		TIME_STORE_ARRAY++;
		HH_N[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	}

	TIME_STORE_ARRAY = 0;
	for(EEPROM_ADR = 49;EEPROM_ADR <= 72;EEPROM_ADR++)
	{
		TIME_STORE_ARRAY++;
		MM_N[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	}

	TIME_STORE_ARRAY = 0;
	for(EEPROM_ADR = 73;EEPROM_ADR <= 96;EEPROM_ADR++)
	{
		TIME_STORE_ARRAY++;
		SS_N[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	}

	TIME_STORE_ARRAY = 0;
	for(EEPROM_ADR = 97;EEPROM_ADR <= 120;EEPROM_ADR++)
	{
		TIME_STORE_ARRAY++;
		HH_F[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	}

	TIME_STORE_ARRAY = 0;
	for(EEPROM_ADR = 121;EEPROM_ADR <= 144;EEPROM_ADR++)
	{
		TIME_STORE_ARRAY++;
		MM_F[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	}

	TIME_STORE_ARRAY = 0;
	for(EEPROM_ADR = 145;EEPROM_ADR <= 168;EEPROM_ADR++)
	{
		TIME_STORE_ARRAY++;
		SS_F[TIME_STORE_ARRAY] = eeprom_read(EEPROM_ADR);
	}
	TIME_STORE_ARRAY = 0;

	CYCLE_START = eeprom_read(169);
	STATE = eeprom_read(170);

	ON_TIME_FLAG = eeprom_read(171);
	ON_TIME_RUN_INT = eeprom_read(172);		//CONCIDER

/*	RSS = eeprom_read(173);
	RMM = eeprom_read(174);
	RHH = eeprom_read(175);

	FSS = eeprom_read(176);
	FMM = eeprom_read(177);
	FHH = eeprom_read(178);*/

/**********************************************************************************************/

/************************************STAT REAS OPERATION***************************************/
	do
	{
		STATUS_READ();

	}
	while(MENU_SW==1);

/**********************************************************************************************/
//	STATE = 0;

	Lcd_Command(0x01);

//	Lcd_Command(0x80);
//	Lcd_String("TO START   1.ST");
//
//	Lcd_Command(0xC0);
//	Lcd_String("2.EN 3.CR 4.INC");

	while(1)
	{

//		Lcd_Command(0x8e);
//		Lcd_Data(CYCLE_START+48);

		RUN_FULL_CYCLE();

		ADC_EEPROM_STORE();	

		EMERGCY_START_STOP();
	}
}