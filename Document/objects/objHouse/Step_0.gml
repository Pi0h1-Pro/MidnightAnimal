// index=7.5-(x-174)*(1/8)
// if index>15 index=15
// if index<0 index=0

// if x<-120 instance_destroy()

//
if (x < -800)
{
	instance_destroy();
	instance_create(room_width + 100, y, objHouse);
}

/*
index=9-(x*(1/(room_width/9)))
image_index=round(index)
if image_index<0 image_index=0
if image_index>9 image_index=9

/* */
/*  */
