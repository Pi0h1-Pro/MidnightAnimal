/* if abs(swingspeed)>0 exit
if image_angle<-1 {swingspeed=1 exit}
if image_angle>1 {swingspeed=-1 exit }*/
if (solid == 1)
	exit;

if (abs(swingspeed) > 3.5)
{
	if (other.sprite_index == sprSwatStumble)
		exit;
	if (swinger == 1 || swinger == 0)
	{
		if (other.x < x)
		{
			other.hspeed = -1;
			other.angle = 0;
		}
		if (other.x >= x)
		{
			other.hspeed = 1;
			other.angle = 180;
		}
		other.vspeed = 0;
		other.image_index = 0;
		other.image_speed = 0.2;
		other.sprite_index = sprSwatStumble;
		sound_play(sndDoorHit);
	}
	exit;
}
swinger = 2;
if (abs(swingspeed) < 2)
	sound_play(sndDoorOpen);
if (y > other.y && other.x < x)
{
	swingspeed = 8;
	exit;
}
if (y > other.y && other.x > x)
{
	swingspeed = -8;
	exit;
}
if (other.x < x + lengthdir_x(32, image_angle + 270))
	swingspeed = 8;
else
	swingspeed = -8;

/* */
/*  */
