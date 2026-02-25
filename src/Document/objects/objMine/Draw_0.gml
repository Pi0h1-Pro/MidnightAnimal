/// @description  Draw explosive indicator.
draw_self()

if countdown = 1 {
    draw_set_colour(global.rubedo)
    draw_circle(x, y, 80, false)
    draw_set_colour(c_white)
    draw_circle_width(x, y, wait, 4, 32)
}

