/// @description Control fade.
if x > __view_get( e__VW.XView, 0 ) - 80 and y > __view_get( e__VW.YView, 0 ) - 80 and x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 80 and y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 80 on = 1 else on = 0

if fadeOut and image_alpha > 0.3 {
    image_alpha -= 0.1
    if image_alpha <= 0.3 {
        fadeOut = false
        stopped = false
        image_alpha = 0.3
    }
} else if fadeIn and image_alpha < 1 {
    image_alpha += 0.1
    if image_alpha >= 1 {
        fadeIn = false
        stopped = false
        image_alpha = 1
    }
}

