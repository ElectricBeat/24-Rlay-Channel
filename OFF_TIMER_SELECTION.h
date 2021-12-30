void OFF_TIMER_SELECTION()
{
	Lcd_Command(0xc0+Cur_3);
	Lcd_Data(k[Cur_3]+48);

	if(CUR_SW==1)
	{
		Cur_3++;
		if(Cur_3==7)
		{
			Cur_3 = 8;
		}
		if(Cur_3==10)
		{
			Cur_3 =11;
		}
		if(Cur_3>=13)
		{
			Cur_1 = 2;
		}
		while(CUR_SW==1);
	}

	if(INC_SW==1)
	{
		k[Cur_3]++;
		if(k[Cur_3]>9)
		{
			k[Cur_3] = 0;
		}
		while(INC_SW==1);
	}

	h2 = k[5]*10;
	h1 = k[6]*1;
	HH_F[TIME_STORE_ARRAY] = h2+h1;

	EEPROM_ADR = TIME_STORE_ARRAY+96;
	eeprom_write(EEPROM_ADR,HH_F[TIME_STORE_ARRAY]);

	m2 = k[8]*10;
	m1 = k[9]*1;
	MM_F[TIME_STORE_ARRAY] = m2+m1;

	EEPROM_ADR = TIME_STORE_ARRAY+120;
	eeprom_write(EEPROM_ADR,MM_F[TIME_STORE_ARRAY]);

	s2 = k[11]*10;
	s1 = k[12]*1;
	SS_F[TIME_STORE_ARRAY] = s2+s1;

	EEPROM_ADR = TIME_STORE_ARRAY+144;
	eeprom_write(EEPROM_ADR,SS_F[TIME_STORE_ARRAY]);
}