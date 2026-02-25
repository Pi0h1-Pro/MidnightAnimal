if startspeed=0 startspeed=speed

if speed {
    image_blend=merge_color(c_ltgray,c_white,speed*(1/startspeed))
    image_angle+=rotspeed
}

