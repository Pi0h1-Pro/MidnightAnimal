if (on == 0 || fade == 1 || wait > 0)
	exit;
wait = 3;
if (select > 0)
	select -= 1;
else
	select = 2;
if (select == 1 && test == 1)
	select = 0;
sound_play(sndNav);

