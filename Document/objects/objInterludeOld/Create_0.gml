// DRAW STARS
i = 0;
repeat (72)
{
	starx[i] = random(room_width);
	stary[i] = random(room_height / 2);
	starsize[i] = random(2) * random(1);
	starintensity[i] = random(1);
	i += 1;
}


dir = 0;
index1 = 0;
index2 = 22;
start_y = 0;
alarm[0] = 960;
i = 0;
repeat (12)
{
	tree[i] = random(4);
	i += 1;
}
myx = 0;

repeat (48)
{
	myy = random(48);
	instance_create(random(room_width), room_height / 2 + random(48), objSeaGlimmer);
}


fade = 0;
c_amount = 0;
camount = 0;

wait = 40;
reload = 16;
i = 0;
repeat (10)
{
	instance_create(0 + i * 128, room_height / 2, objPalmTree);
	i += 1;
}



sea = 1;
seax1 = 0;
seax2 = 48;
i = 0;
repeat (ceil(room_width / 160) + 1)
{
	instance_create(i * 160, room_height / 2 - 64, objSkyline1);
	instance_create(i * 160, room_height / 2 - 64, objSkyline2);
	i += 1;
}

/* current=0

dir=random(360)
factor=0
fade=0
c_amount=0

if global.revisit=0 {
repeat (5) instance_create(random(room_width),0,objHouse)
} else {
repeat (5) instance_create(random(room_width),0,objHouseReturn)
}

i=0
repeat (5) {
palmx[i]=(room_width/4)*i
palmindex[i]=floor(random(6))
i+=1
}

wait=240

//if global.sequence=rmSequence12bDownstairs song=working_directory+"\Static.mp3" else song=working_directory+"\Rust.mp3"

/* */
/*  */
