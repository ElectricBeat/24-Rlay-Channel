void STATUS_READ()
{
	Lcd_Command(0x80);
	Lcd_String("R:");
	Lcd_Command(0xC0);
	Lcd_String("ON T:  :  :  ");

	while(MENU_SW==1)
	{
		STATE++;

		TIME_STORE_ARRAY = STATE;

		Lcd_Command(0x82);
		divider(STATE);

		if(staus[STATE]==1)
		{
			Lcd_Command(0x86);
			Lcd_String("Enable ");

			Lcd_Command(0xC0);
			Lcd_String("ON T");

			Lcd_Command(0xc5);
			divider(HH_N[STATE]);
			Lcd_Command(0xc8);
			divider(MM_N[STATE]);
			Lcd_Command(0xcB);
			divider(SS_N[STATE]);

			__delay_ms(1000);

			Lcd_Command(0xC0);
			Lcd_String("OF T");

			Lcd_Command(0xc5);
			divider(HH_F[STATE]);
			Lcd_Command(0xc8);
			divider(MM_F[STATE]);
			Lcd_Command(0xcB);
			divider(SS_F[STATE]);	

			__delay_ms(1000);		
		}

		else
		{
			Lcd_Command(0x86);
			Lcd_String("Disable");

			Lcd_Command(0xC0);
			Lcd_String("ON T");

			Lcd_Command(0xc5);
			divider(HH_N[STATE]);
			Lcd_Command(0xc8);
			divider(MM_N[STATE]);
			Lcd_Command(0xcB);
			divider(SS_N[STATE]);

			__delay_ms(1000);

			Lcd_Command(0xC0);
			Lcd_String("OF T");

			Lcd_Command(0xc5);
			divider(HH_F[STATE]);
			Lcd_Command(0xc8);
			divider(MM_F[STATE]);
			Lcd_Command(0xcB);
			divider(SS_F[STATE]);

			__delay_ms(1000);
		}		

		if(STATE >= TOTAL_NO_OF_RELAY)
		{
			STATE = 0;
		}
//		while(MENU_SW==1);
	}
}