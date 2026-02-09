/// @description  Create impact if the wall hasn't been destroyed.
if (index < 10)
{
	with (other)
	{
		if (life > 0)
			life -= 2;
	}
}

