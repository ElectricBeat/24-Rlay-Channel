void ADC_EEPROM_STORE()
{
	while((ADCON0=0X01|0X04)==1);
	ADC_INT=(ADRESH<<8)+ADRESL;

	if(ADC_INT < 900)
	{
//		eeprom_write(169,CYCLE_START);
		__delay_us(10);
		eeprom_write(170,STATE-1);
		__delay_us(10);
		eeprom_write(171,ON_TIME_FLAG);
		__delay_us(10);
		eeprom_write(172,ON_TIME_RUN_INT);
		__delay_us(10);

		eeprom_write(173,RSS);
		__delay_us(10);
		eeprom_write(174,RMM);
		__delay_us(10);
		eeprom_write(175,RHH);
		__delay_us(10);

		eeprom_write(176,FSS);
		__delay_us(10);
		eeprom_write(177,FMM);
		__delay_us(10);
		eeprom_write(178,FHH);
		__delay_us(10);

		CYCLE_START = eeprom_read(169);		//CONCIDER
		STATE = eeprom_read(170);		//CONCIDER
		ON_TIME_FLAG = eeprom_read(171);		//CONCIDER
		ON_TIME_RUN_INT = eeprom_read(172);		//CONCIDER

		RSS = eeprom_read(173);		//CONCIDER
		RMM = eeprom_read(174);		//CONCIDER
		RHH = eeprom_read(175);		//CONCIDER

		FSS = eeprom_read(176);		//CONCIDER
		FMM = eeprom_read(177);		//CONCIDER
		FHH = eeprom_read(178);		//CONCIDER

		if(	(RSS != 0) || (RMM != 0) || (RHH != 0) || (FSS != 0) || (FMM != 0) || (FHH != 0) )
		{
			ADC_SAVE_VAL = 1;
			eeprom_write(179,ADC_SAVE_VAL);
		}

		else
		{
			ADC_SAVE_VAL = 0;
			eeprom_write(179,ADC_SAVE_VAL);
		}
	}
}