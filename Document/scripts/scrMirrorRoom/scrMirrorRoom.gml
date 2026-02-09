/// @description  Invert levels (flip the room vertically). To mirror horizontally, change y to x.
/// @param flip the room vertically
function scrMirrorRoom() {
	a = room_height / 2;

	with (all)
	{
		y = a + (a - y);
		image_yscale *= -1;
	
		// image_angle += 180
	}



}
