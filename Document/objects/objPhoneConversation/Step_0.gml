if (global.xbox == 1)
{
	if (checkbutton(0, getid(5)) || checkbutton(0, getid(11)))
	{
		if (presstart == 0)
		{
			presstart = 1;
			scrXboxConversationStart();
		}
		else
		{
			if (skip < 10)
				skip += 10;
			else
			{
				if (sprite == sprPhone)
					with (objAnsweringMachine)
						active = 0;
				instance_destroy();
			}
		}
	}
	else
	{
		presstart = 0;
		skip = 0;
	}
}

if (reload > 0)
	reload -= 1;
if (line1[current] == "..." && line2[current] == "")
	index = 0;
else
	index += indexspeed;

