instance_destroy();
exit;
if (room == rmPhoneHomEntrance)
	scrPlaySong(working_directory + "\\Bridal.mp3");
global.barehanded = 1;
current = 0;
dir = 0;
addx = -700;
alpha = 1;
scale = 1;

surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

__view_set( e__VW.XView, 0, objPlayerCar.x - __view_get( e__VW.WView, 0 ) / 2 );
if (objPlayerCar.image_angle == 180)
	__view_set( e__VW.HView, 0, objPlayerCar.y + __view_get( e__VW.HView, 0 ) * 0.8 );
else
	__view_set( e__VW.YView, 0, objPlayerCar.y - __view_get( e__VW.HView, 0 ) * 0.8 );

// Draw lines.
i = 0;
repeat (8)
{
	line[i] = 0;
	i += 1;
}
on = 1;

masks = sprite_get_number(sprite_index);
maskx = 0;
masky = room_height + 40;
dir = 0;
wait = 0;
maskspeed = 8;
name[0] = "John";
name[1] = "Rasmus";
name[2] = "Tony";
name[3] = "Aubrey";
name[4] = "Alison";
name[5] = "Graham";
name[6] = "Nicole";
name[7] = "George";
name[8] = "Parker";
name[9] = "Alexandra";
name[10] = "Rami";
name[11] = "Willem";
name[12] = "Peter";
name[13] = "Zack";
name[14] = "Oscar";
name[15] = "Frank";
name[16] = "Connor";
name[17] = "Charlie";
name[18] = "Louie";
name[19] = "Max";
name[20] = "Nigel";
name[21] = "Earl";
name[22] = "Jones";
name[23] = "Carl";
name[24] = "Jake";
name[25] = "Richter";
description[0] = "Every bullet eases the pain";
description[1] = "Neon nightmare";
description[2] = "Killing punches, No weapons";
description[3] = "More guns";
description[4] = "Doorkickers";
description[5] = "Walk fast";
description[6] = "A woman scorned";
description[7] = "Eagle eye";
description[8] = "Blood in your eyes";
description[9] = "Cool, hip, fun, interesting";
description[10] = "Flare gun";
description[11] = "Rip and steal";
description[12] = "Quiet gunshots";
description[13] = "Outer heaven";
description[14] = "Darkness";
description[15] = "Welcome to the jungle";
description[16] = "Kung fury";
description[17] = "More melee weapons";
description[18] = "Hard to spot";
description[19] = "The shadows rushed me";
description[20] = "Reversed controls";
description[21] = "Survive two bullets";
description[22] = "Savage feeding";
description[23] = "Start with drill";
description[24] = "Killing throws";
description[25] = "Start with silenced uzi";

blacky = 32;
global.maskon = 0;
current = global.maskindex;
global.maskindex = 0;
i = 0;

// Renders unavailable mask names and descriptions "unavailable".
repeat (26)
{
	if (global.masks[i] == 0)
	{
		name[i] = "Unavailable";
		description[i] = "Unavailable";
	}
	i += 1;
}

global.selectmask = 0;
save = 1;

global.maskload = 1;
alarm[0] = 1;

