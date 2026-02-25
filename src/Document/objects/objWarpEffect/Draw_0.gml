//uncomment this for simple laser sight
/*draw_set_blend_mode(bm_subtract)
draw_line_width_colour(objPlayer.x,objPlayer.y,global.mousex,global.mousey,3,c1,c_black)
draw_set_blend_mode(bm_normal)*/

draw_set_blend_mode(bm_add)
for (i=0;i<beams;i+=1)
{
    //beams are automatically drawn thinner if there is more than one of them.
   draw_path_gradient(0,0,path[i],seglength,width*(1-i/beams),c1,c2,(1-abs(weighting))*.5,weighting)
}
draw_reset()

/* */
/*  */
