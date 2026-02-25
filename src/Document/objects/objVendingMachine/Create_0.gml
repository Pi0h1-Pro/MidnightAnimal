/// @description  @description  Assign properties.
image_speed = 0
energie = 3
life = 30
c = choose(2, 3, 4, 5)
image_index = 0
on = 1
can_vend = true
wait = 45
delivered = false
vend_delay = 640
alarm[0] = vend_delay
alamr[1] = wait

// Object shake.
shake = 0

if on = 1 and sprite_index = sprVendingMachine {
    if c = 2 light = make_colour_rgb(128, 255, 255)// aqua
    if c = 3 light = make_colour_rgb(255, 252, 77)// yellow
    if c = 4 light = make_colour_rgb(64, 255, 64)// lime
    if c = 5 light = make_colour_rgb(255, 128, 255)// pink
   //with light //glr_light_set_rotation(// my_light, other.image_angle)
} 



