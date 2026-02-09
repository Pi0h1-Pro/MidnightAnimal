reload = 0;
wait = 360;
dir = 0;
i = 0;
alarm[0] = 1 + random(100);
alarm[1] = 100 + random(400);
alarm[2] = 900;
fade = 0;
c_amount = 0;
camount = 0;

// Draw stars.
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}

sunalpha = 0;
sunshine = 0;
float = 0;
horizon = 0;

//- 32,192
/*
repeat(ceil(room_width / 160) + 1) {
    instance_create(i * 160, 160, objCity)
    i += 1
}
*/
instance_create(x, y, objCloud);
instance_create(x, y, objFlock);

/* */
/*  */
