edge = 30
number = 5

repeat(number) {
    my_id = instance_create(__view_get( e__VW.XView, 0 ) - edge + random(__view_get( e__VW.WView, 0 ) + edge * 2), __view_get( e__VW.YView, 0 ) - edge + random(__view_get( e__VW.HView, 0 ) + edge * 2), objRainDrop)
}
if irandom(90) = 5 {
    sound_ps(sndThunder)
    objEffector.whitealpha = 1
}

