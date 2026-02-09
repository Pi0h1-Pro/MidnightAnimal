if (global.xbox == 1)
{
	if (checkbutton(0, getid(5)))
	{
		if (presstart == 0)
		{
			presstart = 1;
			
			// scrXboxPauseStart()
			event_perform(ev_keypress, vk_enter);
		}
	}
	else
		presstart = 0;
	
	if (checkbutton(0, getid(6)))
	{
		if (pressback == 0)
		{
			pressback = 1;
			scrXboxPauseBack();
		}
	}
	else
		pressback = 0;
	
	
	if (leftthumb_y(0) > 5000)
	{
		if (pressup == 0)
		{
			pressup = 1;
			
			// scrXboxPauseUp()
			if (select > 0)
				select -= 1;
			else
				select = 3;
		}
	}
	else
		pressup = 0;
	
	if (leftthumb_y(0) < -5000)
	{
		if (pressdown == 0)
		{
			pressdown = 1;
			
			// scrXboxPauseDown()
			if (select < 3)
				select += 1;
			else
				select = 0;
		}
	}
	else
		pressdown = 0;
}

