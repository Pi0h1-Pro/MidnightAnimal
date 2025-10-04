//L2S_define_view() adapted from a source i cant remember, if you are that source PM me.

//argument0=x
//argument1=y
//argument2=horizontal border
//argument3=vertical border
//argument4=max x speed
//argument5=max y speed

var addx,addy;
addx = argument4*-((view_xview[0]+view_wview[0]*0.5)-argument0)/(view_wview[0]*0.5-argument2);
addy = argument5*-((view_yview[0]+view_hview[0]*0.5)-argument1)/(view_hview[0]*0.5-argument3);
if abs(addx)>argument4 {addx=addx/abs(addx)*argument4}
if abs(addy)>argument5 {addy=addy/abs(addy)*argument5}
view_xview[0]+=addx;
view_yview[0]+=addy;
view_xview[0]=min(room_width-view_wview[0],max(0,view_xview[0]));
view_yview[0]=min(room_height-view_hview[0],max(0,view_yview[0]));
