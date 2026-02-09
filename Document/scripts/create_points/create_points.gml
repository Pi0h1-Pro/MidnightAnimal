/// @description  create_points(text)
/// @param text
function create_points(argument0) {
	if (global.hud == 1)
	{
		points = instance_create(x, y - 24, objPoints);
		points.text = argument0;
		points.direction = random(180);
	}



}
