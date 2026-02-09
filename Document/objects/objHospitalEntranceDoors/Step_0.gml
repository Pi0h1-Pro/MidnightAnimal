open = 0;
if (instance_exists(objPlayer))
{
	if (point_distance(x + 32, y, objPlayer.x, objPlayer.y) < 64)
		open = 1;
	target = instance_nearest(x, y, objEnemy);
	if (target > 0)
	{
		if (point_distance(x + 32, y, target.x, target.y) < 64)
			open = 1;
	}
	if (open == 1)
	{
		if (image_index < 9)
			image_index += 0.5;
	}
	else
	{
		if (image_index > 0)
			image_index -= 0.5;
	}
}

/* if instance_exists(objPlayer) {
if point_distance(x,y+32,objPlayer.x,objPlayer.y)<80 {
if place_meeting(x,y,objPlayer) exit
if image_index<9 image_index+=0.5
if place_meeting(x,y,objPlayer) image_index-=0.5
} else {
if image_index>0 image_index-=0.5
}
}

/* */
/*  */
