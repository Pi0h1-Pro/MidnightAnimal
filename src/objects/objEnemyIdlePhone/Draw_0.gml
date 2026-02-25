/// @description  Draw enemy.
scrDrawEnemyIdle(sprELegs)

draw_set_colour(c_fuchsia);
//draw_text(x,y,direction);

if !instance_exists(objPlayer) exit;

if !isDebug exit;

draw_set_colour(c_fuchsia)
draw_triangle(x,y,x2,y2,x3,y3,true);
draw_circle_colour(x,y,smellrange,c_fuchsia,c_fuchsia,true);

draw_line_colour(x,y,objPlayer.x,objPlayer.y,c_yellow,c_yellow);

draw_set_colour(c_white);