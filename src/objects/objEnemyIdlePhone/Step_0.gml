if !instance_exists(objPlayer) exit;

if (reload > 0) {
	reload -= 1;
} else {
var viewdir = direction;
	x1 = x; y1 = y;
	x2 = x+lengthdir_x(sight,viewdir + (fieldofview/2)); y2 = y+lengthdir_y(sight,viewdir + (fieldofview/2));
	x3 = x+lengthdir_x(sight,viewdir - (fieldofview/2)); y3 = y+lengthdir_y(sight,viewdir - (fieldofview/2));

	isOpponentInSameRoom	= (!collision_line(x,y,objPlayer.x,objPlayer.y,objBlockVision,false,false));
	isOpponentinFieldOfView = point_in_triangle(objPlayer.x,objPlayer.y,x1,y1,x2,y2,x3,y3);
	isOpponentinSmellRange	= point_in_circle(objPlayer.x,objPlayer.y,x,y,smellrange);
	isAlerted				= isOpponentInSameRoom && (isOpponentinFieldOfView || isOpponentinSmellRange);
	
	if (isAlerted) {
		create_enemy(enemyStatic, sprEWalkHandgun, 1, 10)
	}
    reload = 15;
}