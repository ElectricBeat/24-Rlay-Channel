void RELAY_SELECTION()
{
	if(INC_SW==1)
	{
		R_COUNT++;
		TIME_STORE_ARRAY = R_COUNT;

		Lcd_Command(0x82);
		divider(R_COUNT);

		if(R_COUNT > TOTAL_NO_OF_RELAY)
		{
			R_COUNT = 0;
		}
		while(INC_SW==1);
	}

	if(CUR_SW==1)
	{
		Cur_1 = Cur_1+4;
		
		if(Cur_1>6)			
		{
			Cur_2 = 5;
		}
		while(CUR_SW==1);
	}

	if(Cur_1==6)
	{
		while(Cur_1==6)
		{
			if(INC_SW==1)
			{
				ED_COUNT++;
		
				if(ED_COUNT==1)
				{
					Lcd_Command(0x86);
					Lcd_String("Disable");
					staus[R_COUNT] = 0;
				}
				if(ED_COUNT==2)
				{
					Lcd_Command(0x86);
					Lcd_String("Enable ");
					staus[R_COUNT] = 1;

					eeprom_write(R_COUNT,staus[R_COUNT]);
				}

				if(ED_COUNT > 2)
				{
					ED_COUNT = 0;
				}
				while(INC_SW==1);
			}
			if(CUR_SW==1)
			{
				Cur_1 = Cur_1+6;
		
				if(Cur_1>6)
					{
					Cur_2 = 5;

					Lcd_Command(0xC0);
					Lcd_String("ON T:  :  :  ");
				}
				while(CUR_SW==1);
			}
		}
	}
}