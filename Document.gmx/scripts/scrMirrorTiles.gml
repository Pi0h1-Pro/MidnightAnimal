//replace 16 with tile width or height respectively
var tile,xx,yy;
tile[1] = 0;  //Emergency break
for (xx=0; xx<room_width; xx+=16) 
for (yy=0; yy<room_height; yy+=16)
{
        tile = 0
        do //This would handle overlapping tiles; remove this loop if it freezes though.
        {
            tile = tile_layer_find(1000000,xx,yy);
            if tile    
            {
                if tile_get_xscale(tile) < 0
                {
                    tile[1] =   1;
                    break;
                }
                tile_set_position(tile,2*room_width-tile_get_x(tile),tile_get_y(tile)); //Shift tiles out of the "canvas"
                tile_set_scale(tile,-1,1)
            }
        }
        until tile==-1;
}
if !tile[1]
{
    tile_layer_shift(1000000,-room_width,0); //Shift tiles back onto the "canvas"
    exit;
}
//Negative xscaling messes with the values and thus the formulas, so I added this revised code.
for(xx=room_width; xx>0; xx-=16)
for(yy=0; yy<room_height; yy+=16)
{
    tile = 0;
    do
    {
    tile = tile_layer_find(1000000,xx,yy);
    if tile
    {
        tile_set_position(tile,-tile_get_x(tile),tile_get_y(tile));
        tile_set_scale(tile,1,1);
    }
    }
    until tile==-1;
}
tile_layer_shift(1000000,room_width,0)
