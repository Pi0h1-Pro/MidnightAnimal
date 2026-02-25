if image_index<=3 {
    image_blend=merge_color(c_ltgray,c_gray,image_index*(1/3))
    image_index+=0.125
    image_alpha -= 0.05
} 

if image_index>3 {
    if image_index<7 {
        image_blend=merge_color(c_gray,c_dkgray,(image_index)-3*(1/4))
        image_index+=0.125
        image_alpha -= 0.1
    } else instance_destroy()
}

