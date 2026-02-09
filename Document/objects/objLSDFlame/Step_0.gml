if (!instance_exists(objPlayerDead))
{
	if (scrMovingPlayerExists())
		targetamount = 5 + (abs(objPlayer.myxspeed) + abs(objPlayer.myyspeed));
	else
		targetamount = 5;
}
else
	tragetamount = 5;
if (amount < targetamount)
	amount += 0.025;
else
	amount = targetamount;
if (amount > targetamount)
	amount -= 0.005;
else
	amount = targetamount;

// This is the rainbow smoke which is produced after the gun is shot.
image_blend = merge_color(merge_color(c_gray, c_black, random(1)), make_color_hsv(random(255), random(255), 255), amount);
if (image_index < 8)
	image_index += 0.25 + random(0.25);
else
{
	// When it disappears, it is destroyed in a 'pop' of colour.
	instance_destroy();
	my_id = instance_create(x, y, objLSDPop);
	my_id.speed = speed;
	my_id.direction = direction - 10 + random(20);
	my_id.friction = 0.1;
	my_id.amount = amount;
}
if (round(random(12)) == 2)
{
	my_id = instance_create(x, y, objLSDPop);
	my_id.speed = speed;
	my_id.direction = direction - 10 + random(20);
	my_id.friction = 0.1;
	my_id.amount = amount;
	
	// my_id.friction=0.2
}

