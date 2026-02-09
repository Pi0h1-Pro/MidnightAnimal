/// @description  Create raycast.
dir = point_direction(x, y, global.mousex, global.mousey);
raycast(x, y, dir, _SOLID);

// Spawn particles
repeat (16)
{
	instance_create(hitX, hitY, objLaserParticle);
}

my_id = instance_create(hitX, hitY, objSmokePlume);
my_id.image_angle = dir;
my_id.direction = dir;

blast = instance_create(hitX, hitY, objBlastImpact);
blast.image_xscale = 0.2;
blast.image_yscale = 0.2;

// Laser width
width = 15;

