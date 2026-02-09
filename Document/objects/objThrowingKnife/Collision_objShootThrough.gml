if (other.object_index == objWallSoftH || other.object_index == objWallSoftV)
{
	if (speed > 0)
	{
		x -= hspeed;
		y -= vspeed;
		speed = 0;
		move_contact_all(direction, 12);
		sound_ps(sndHitWall);
	}
}

