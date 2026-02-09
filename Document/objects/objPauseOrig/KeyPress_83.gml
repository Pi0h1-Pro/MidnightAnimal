if (on == 0 || fade == 1 || wait > 0)
	exit;
wait = 3;
if (select < 2)
	select += 1;
else
	select = 0;
if (select == 1 && test == 1)
	select = 2;
sound_play(sndNav);

