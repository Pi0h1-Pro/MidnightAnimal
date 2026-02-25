/// @description  Dodge.
if other.speed < 2 exit
if scrIsDodging(sprite_index) {
    if image_index > 3 image_index = 3 exit
}
sprite_index = sprEDodgerDodge
image_index = 0
speed = 0
path_end()

