if (x < 0)
	hspeed = abs(hspeed);
if (x > room_width)
	hspeed = -abs(hspeed);
if (y < 0)
	vspeed = abs(vspeed);
if (y > room_height)
	vspeed = -abs(vspeed);

scrMoveSolidOn();
if (!scrPlaceFree(x + hspeed * 3, y + vspeed * 3))
{
	if (!scrPlaceFree(x + hspeed * 3, y))
		hspeed = -hspeed;
	if (!scrPlaceFree(x, y + vspeed * 3))
		vspeed = -vspeed;
}
if (path_index > 0)
{
	image_speed = 0.2;
	if (path_position == 1)
		path_end();
}
else
{
	if (killed == 0)
		image_speed = speed * 0.1;
	path_speed = 0;
}
scrMoveSolidOff();
if (!instance_exists(objPlayer))
{
	alert = 0;
	speed = 0;
	exit;
}

scrERandomMeleeStep();

if (scrEnemyIsAttacking(sprite_index))
	image_speed = 0.5;
else
	image_speed = (speed + path_speed) * 0.1;

