/// @description  Status effects.
with (other)
{
	if (shocked == 0)
	{
		affected = true;
		shocked = 1;
		create_damage_general(random(3), global.c_shock, "SHOCKED!", 1, x + choose(-random(24), random(24)), y - 5);
	}
}

