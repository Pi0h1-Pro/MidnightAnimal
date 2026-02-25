/// @description  Impact.
speed = 0
dir = direction
move_contact_solid(image_angle, speed * 5)

if hit = 0 {
    hit = 1
    sound_ps(sndWallImpact)
}

mask_index = sprite_index

