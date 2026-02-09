/// @description  Move down in options.
if (select < 2)
	select += 1;
else
	select = 0;
with (objPlayer)
{
	if (image_index > 0)
		image_index -= 0.15;
	else
		image_index = 0;
}

