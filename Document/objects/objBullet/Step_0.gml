/// @description  Set specific properties.

// If the bullet leaves the boundaries of the room, destroy it.
if (x > room_width + 50 || x < -50 || y < -50 || y > room_height + 50)
	instance_destroy();

// Destroy bullet by alpha.
if (image_alpha > 0)
	image_alpha -= 0.05;
else
	instance_destroy();

// Warp the bullet's direction if it's a plasma round.
if (sprite_index == sprPlasmaRound)
{
	direction += -7 + random(14);
	image_angle = direction;
}

if (sprite_index == sprBulletRicochet)
{
	if (bounces >= 18)
		scrBulletImpact();
	else
	{
		if (place_meeting(x + hspeed, y, objWall) || place_meeting(x + hspeed, y, objConcreteBlock))
			direction = -direction + 180;
		if (place_meeting(x, y + vspeed, objWall) || place_meeting(x, y + vspeed, objConcreteBlock))
			direction = -direction;
		image_angle = direction;
		bounces += 1;
	}
}

