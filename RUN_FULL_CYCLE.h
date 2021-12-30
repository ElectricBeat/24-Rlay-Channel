void RUN_FULL_CYCLE()
{
//	Lcd_Command(0xC0);
//	Lcd_String("READY TO START");
//
//	Lcd_Command(0x01);

//	if(ENT_SW==1)
//	{
//		Lcd_Command(0x80);
//		Lcd_String("R:");
//		Lcd_Command(0xC0);
//		Lcd_String("ON T:  :  :  ");

		CYCLE_START = 1;
//		eeprom_write(169,CYCLE_START);
//	}
//	else
//	{
//		CYCLE_START=0;
//		eeprom_write(169,CYCLE_START);
//	}

//	CYCLE_START = eeprom_read(169);

//		Lcd_Command(0x8c);
//		Lcd_Data(CYCLE_START+48);

	while(CYCLE_START==1)
	{
		Lcd_Command(0x80);
		Lcd_String("R:");
		Lcd_Command(0xC0);
		Lcd_String("ON T:00:00:00");
		ADC_EEPROM_STORE();						//	CHECK ADC VALUE

		STATE++;
		eeprom_write(170,STATE-1);

		Lcd_Command(0x82);
		divider(STATE);

Lcd_Command(0xce);
divider(STATE);

		if(staus[STATE]==1)
		{
			Lcd_Command(0x86);
			Lcd_String("Enable ");

			Lcd_Command(0xC0);
			Lcd_String("ON T");

			RHH = HH_N[STATE];
			FHH = HH_F[STATE];
			RMM = MM_N[STATE];
			FMM = MM_F[STATE];

			RSS = SS_N[STATE];
			FSS = SS_F[STATE];

			ADC_EEPROM_STORE();						//	CHECK ADC VALUE

			if(ON_TIME_FLAG == 0)
			{
				ON_TIME_RUN_INT = 1;

				eeprom_write(171,ON_TIME_FLAG);
				eeprom_write(172,ON_TIME_RUN_INT);	//	CONCIDER

				ADC_EEPROM_STORE();						//	CHECK ADC VALUE
	 		}

			if(ADC_SAVE_VAL == 1)
			{
				RSS = eeprom_read(173);		//CONCIDER
				RMM = eeprom_read(174);		//CONCIDER
				RHH = eeprom_read(175);		//CONCIDER

				FSS = eeprom_read(176);		//CONCIDER
				FMM = eeprom_read(177);		//CONCIDER
				FHH = eeprom_read(178);		//CONCIDER

				ADC_SAVE_VAL = 0;
			}

			while(ON_TIME_RUN_INT==1)
			{
				ADC_EEPROM_STORE();						//	CHECK ADC VALUE

				Lcd_Command(0xc5);
				divider(RHH);
				Lcd_Command(0xc8);
				divider(RMM);
				Lcd_Command(0xcB);
				divider(RSS);

				RSS--;

				eeprom_write(173,RSS);

				if(RSS <= 0)
				{
					RSS = 0;
				}
				EMERGCY_START_STOP();

				if((RSS==0) && (RMM==0) && (RHH==0))
				{
					RMM=0;
					RHH=0;
					RSS=0;

					Lcd_Command(0xC0);
					Lcd_String("OF T");

					ON_TIME_RUN_INT = 0;
					ON_TIME_FLAG = 1;

					eeprom_write(171,ON_TIME_FLAG);
					eeprom_write(172,ON_TIME_RUN_INT);
					break;
				}

				if(RSS==0)
				{
					RMM--;

					eeprom_write(174,RMM);

					RSS=59;

					if(RMM <= 0)
					{
						RMM=0;
					}
				}
				if(RMM==0)
				{
					RHH--;

					eeprom_write(175,RHH);

					RMM=59;

					if(RHH <= 0)
					{
						RHH=0;
						RMM=0;
					}
				}
//				__delay_ms(10);

				if(STATE == 1)
				{
					PORTB = 0x08;
				}

				if((STATE > 1) && (STATE <= 16))
				{
//		Lcd_Command(0x8c);
//		divider(STATE);
					PORTB = PORT[STATE];
		Lcd_Command(0x8c);
		divider(STATE);

				}
				else if((STATE > 16) && (STATE <= 24))
				{
					PORTC = PORT[STATE];
				}
			}

			if(ON_TIME_FLAG == 1)
			{
				ON_TIME_RUN_INT = 0;
				ON_TIME_FLAG = 0;

				eeprom_write(171,ON_TIME_FLAG);
				eeprom_write(172,ON_TIME_RUN_INT);

				ADC_EEPROM_STORE();						//	CHECK ADC VALUE
			}

			while(ON_TIME_RUN_INT==0)
			{
				ADC_EEPROM_STORE();						//	CHECK ADC VALUE

				Lcd_Command(0xc5);
				divider(FHH);
				Lcd_Command(0xc8);
				divider(FMM);
				Lcd_Command(0xcB);
				divider(FSS);

				FSS--;

				eeprom_write(176,FSS);

				if(FSS <= 0)
				{
					FSS = 0;
				}
				EMERGCY_START_STOP();
				if((FSS==0) && (FMM==0) && (FHH==0))
				{
					FMM=0;
					FHH=0;
					FSS=0;

					Lcd_Command(0xC0);
					Lcd_String("ON T");

					ON_TIME_RUN_INT = 1;
					ON_TIME_FLAG = 0;

					eeprom_write(171,ON_TIME_FLAG);
					eeprom_write(172,ON_TIME_RUN_INT);

					break;
				}

				if(FSS==0)
				{
					FMM--;

					eeprom_write(177,FMM);

					FSS=59;

					if(FMM <= 0)
					{
						FMM=0;
					}
				}
				if(FMM==0)
				{
					FHH--;

					eeprom_write(178,FHH);

					FMM=59;

					if(FHH <= 0)
					{
						FHH=0;
						FMM=0;
					}
				}
//				__delay_ms(10);
				PORTB = 0X00;
				PORTC = 0X00;
			}

			if(ON_TIME_FLAG == 0)
			{
				ON_TIME_RUN_INT = 1;
				ON_TIME_FLAG = 1;

				eeprom_write(171,ON_TIME_FLAG);
				eeprom_write(172,ON_TIME_RUN_INT);

				ADC_EEPROM_STORE();						//	CHECK ADC VALUE
			}

		}

		else
		{
			Lcd_Command(0x86);
			Lcd_String("Disable");
		}

		if(STATE == TOTAL_NO_OF_RELAY)
		{
			STATE = 0;
//			CYCLE_START=0;

			Lcd_Command(0x01);

			Lcd_Command(0xC0);
			Lcd_String("COMPLETED");
			__delay_ms(1000);
			Lcd_Command(0x01);

//			eeprom_write(169,CYCLE_START);
		}

		ADC_EEPROM_STORE();						//	CHECK ADC VALUE
	}
}