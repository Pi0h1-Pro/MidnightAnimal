/*var i;
i=0;

if (fp[0]=true)
{
switch (spr_dir) {
    case "_r": i=0 break;
    case "_r_u": i=1 break;
    case "_u": i=2 break;
    case "_l_u": i=3 break;
    case "_l": i=4 break;
    case "_l_d": i=5 break;
    case "_d": i=6 break;
    case "_r_d": i=7 break;
    }

if fp[1]="left" then fp[1]="right"; else fp[1]="left";

//Create footprint

    n=instance_create(x,y,objFootprint);
    execute_string("n.sprite_index=sprFootprints_"+fp[1]);
    n.image_single=i;
    
    
//Set timer and flag
fp[0]=false;
alarm[0]=6-(move-3);

}

