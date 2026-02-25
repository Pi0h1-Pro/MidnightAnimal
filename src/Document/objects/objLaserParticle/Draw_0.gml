// Draw particles.
draw_set_color(image_blend);
draw_set_alpha(image_alpha);
pDist = point_distance(x,y,xprevious,yprevious)*2.25;
pDir = point_direction(x,y,xprevious,yprevious);
draw_line_width(x,y,x+lengthdir_x(pDist,pDir),y+lengthdir_y(pDist,pDir),2);
draw_set_alpha(1);

