dir = 0;

// Draw stars.
i = 0;
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}

