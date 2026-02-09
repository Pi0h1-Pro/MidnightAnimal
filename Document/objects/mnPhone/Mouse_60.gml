/// @description  Move up in options.
if (select > 0)
	select -= 1;
else
	select = 2;
with (objPlayer)
{
	if (image_index < 4)
		image_index += 0.15;
	else
		image_index = 4;
}

