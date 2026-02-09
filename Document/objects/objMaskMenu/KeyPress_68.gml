sound_play(sndNav);

if (on == 0)
	exit;

current += 1;
if (current > 25)
	current = 0;
exit;

while (global.masks[current] == 0)
{
	current += 1;
	if (current > 25)
		current = 0;
}

