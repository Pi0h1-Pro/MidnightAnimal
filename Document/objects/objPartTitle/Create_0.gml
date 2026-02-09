surf = surface_create(room_width, room_height);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
surface_reset_target();
title = global.parttitle[1];
i = 0;
repeat (string_length(title))
{
	rise[i] = -10 - i;
	i += 1;
}
dir = 0;
blend = 0;
prefixblend = 0;
prefix = global.parttitle[0];
sunalpha = 0;
sunshine = 0;
amount = 0;
fade = 0;
wait = 0;
alarm[0] = 480;

/*
letter=-1
//text[0]="PART ONE"
//text[1]="PHONECALLS"
texts=1

i=0
repeat (15)
{
amount[i]=0
i+=1
}
amount[0]=10
dir=random(10000)
current=0
factor=1



i=0
repeat (30) {
size[i]=1+random(2)
myx[i]=random(room_width)
myy[i]=random(room_height)
mydir[i]=random(360)
myspeed[i]=1+random(2)
diradd[i]=-4+random(8)
i+=1
}

fade=0
c_amount=0
//

/* */
/*  */
