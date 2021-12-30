void ON_TIMER_SELECTION()
{
//	i[5]=0;i[6]=0,i[8]=0,i[9]=0,i[11]=0,i[12]=0;

	Lcd_Command(0xc0+Cur_2);
	Lcd_Data(i[Cur_2]+48);

	if(CUR_SW==1)
	{
		Cur_2++;
		if(Cur_2==7)
		{
			Cur_2 = 8;
		}
		if(Cur_2==10)
		{
			Cur_2 = 11;
		}
		if(Cur_2>=13)
		{
			Cur_3 = 5;

			Lcd_Command(0xC0);
			Lcd_String("OF T:  :  :  ");
		}
		while(CUR_SW==1);
	}

	if(INC_SW==1)
	{
		i[Cur_2]++;
		if(i[Cur_2]>9)
		{
			i[Cur_2] = 0;
		}
		while(INC_SW==1);
	}

	h2 = i[5]*10;
	h1 = i[6]*1;
	HH_N[TIME_STORE_ARRAY] = h2+h1;

	EEPROM_ADR = TIME_STORE_ARRAY+24;
	eeprom_write(EEPROM_ADR,HH_N[TIME_STORE_ARRAY]);

	m2 = i[8]*10;
	m1 = i[9]*1;
	MM_N[TIME_STORE_ARRAY] = m2+m1;

	EEPROM_ADR = TIME_STORE_ARRAY+48;
	eeprom_write(EEPROM_ADR,MM_N[TIME_STORE_ARRAY]);

	s2 = i[11]*10;
	s1 = i[12]*1;
	SS_N[TIME_STORE_ARRAY] = s2+s1;

	EEPROM_ADR = TIME_STORE_ARRAY+72;
	eeprom_write(EEPROM_ADR,SS_N[TIME_STORE_ARRAY]);
}