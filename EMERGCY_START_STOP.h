void EMERGCY_START_STOP()
{
	while(EM_ST_SP_SW==1)
	{
		EM_ST_SP_COUNT++;

		while(EM_ST_SP_SW==1);

		while(EM_ST_SP_COUNT==1)
		{
			PORTB = 0X00;
			PORTC = 0X00;

			while(EM_ST_SP_SW==1)
			{
				EM_ST_SP_COUNT = 0;

				while(EM_ST_SP_SW==1);
			}
		}
	}
}