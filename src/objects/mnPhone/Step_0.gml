/// @description Fade tint, and rotate phone when active.

if active {
    if image_angle < 0 image_angle += 20
    if fade_alpha < 1 fade_alpha += 0.1
    if delay < 10 delay += 1 else delay = 10
    if delay >= 10 {
        if fade < 1 fade += 0.1
    } 
} else {
    if fade > 0 fade -= 0.1
    if fade <= 0 {
        if image_angle > -100 image_angle -= 20
        if fade_alpha > 0 fade_alpha -= 0.1 else instance_destroy()
        delay = 0
    }
}

/// Update angles for clock hands. 
//As seen on SlasherXGAMES
//http://www.youtube.com/user/SlasherXGAMES

/*
change current_hour, current_minute, and current_second to custom values in you don't want to show system time
e.g.
if using hour, minute and second variables for time values
then
hourAngle = -((hour + (minute/60)) * 30);
minuteAngle = -(minute * 6);
secondAngle = -(second * 6);
*/
hourAngle = -((current_hour + (current_minute/60)) * 30);
minuteAngle = -(current_minute * 6);
secondAngle = -(current_second * 6);


/* */
/*  */
