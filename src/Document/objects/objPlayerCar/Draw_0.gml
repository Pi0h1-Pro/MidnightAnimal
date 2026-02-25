if sprite_index = sprJohnCarStart {
    addx = -0.5 + random(1)
    addy = -0.5 + random(1)
} else {
    addx = 0
    addy = 0
}

draw_sprite_ext(sprite_index,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)

draw_sprite_ext(sprJohnCarDoor, 0, x+lengthdir_x(14,image_angle)+lengthdir_x(22,image_angle+90) + addx, y+lengthdir_y(14,image_angle)+lengthdir_y(22,image_angle+90) + addy, image_xscale, image_yscale, image_angle-doorindex*10, image_blend, image_alpha)
draw_sprite_ext(sprite_index, image_index, x + addx, y + addy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)


