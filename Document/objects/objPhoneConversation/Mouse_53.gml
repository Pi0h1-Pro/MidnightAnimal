if (global.xbox == 1)
	exit;
if (reload > 0)
	reload = 0;
if (current < messages)
	current += 1;
else
{
	if (sprite == sprPhone)
		objAnsweringMachine.active = 0;
	instance_destroy();
}
reload = 2;

