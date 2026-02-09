if (global.xbox == 1)
	exit;
if (skip < 10)
	skip += 10;
else
{
	if (sprite == sprPhone)
		with (objAnsweringMachine)
			active = 0;
	instance_destroy();
}

