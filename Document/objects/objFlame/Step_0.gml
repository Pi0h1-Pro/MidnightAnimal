if (instance_exists(target))
{
	image_angle = point_direction(x, y, target.x, target.y);
}

image_xscale += 0.05;
image_yscale += 0.02;

if (floor(random(240)) == 2)
{
	fire = instance_create(x, y, objTinyFire);
	fire.image_xscale = 0.2 + random(1);
	fire.image_yscale = fire.image_xscale;
}

if (round(random(3)) == 2)
{
	my_id = instance_create(x - 8 + random(16), y - 8 + random(16), objFlameSmoke);
	my_id.direction = random(360);
	my_id.speed = 0.5 + random(1);
}

/*
if round(random(6))=2 {
    my_id=instance_create(x,y,objFireBallFlame)
    my_id.direction=direction-10+random(20)
    my_id.speed=6
}

/* */
/*  */
