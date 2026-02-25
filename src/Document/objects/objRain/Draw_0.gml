/// @description  Set draw properties.

x = 0//room_width / 2
y = 0//room_height / 2

if irandom(900) = 5{
    if !audio_is_playing(sndThunder) audio_play_sound(sndThunder,5,0)
}
  
if rain_started {
    var rain_hs = lengthdir_x(rain_speed, rain_direction);
    var rain_vs = lengthdir_y(rain_speed, rain_direction);
    var px,py;
    
    if !rain_collision_accurate {
        for(i = 0; i < rain_drops * 2; i += 2;) {
            rain[i] += rain_hs
            rain[i+1] += rain_vs
            px = rain[i]
            py = rain[i+1]
            if rain[i+1] > room_height { 
                rain[i] = random_range(x - rain_range, x + rain_range)
                rain[i+1] = y - random(50) 
            }
        }       
    }
    else{
    
        // Prepare direction check array.
        var dx, dy;
        var q = 1+ rain_collision_accurate_skip;
        var n = 0;
        for (i=0; i<=rain_speed; i+=q){
            dx[n] = lengthdir_x(i, rain_direction)
            dy[n] = lengthdir_y(i, rain_direction)
            n++
        }
        
        for (i = 0; i < rain_drops * 2; i += 2) {
        
            px = rain[i]
            py = rain[i+1]
            
            if rain[i+1] > room_height { 
                rain[i] = random_range(x - rain_range, x + rain_range)
                rain[i+1] = y - random(50) 
            }
        }
    }
    
     
    var old_color = draw_get_color();
    draw_set_color(make_color_hsv(130,42,150)) 
    draw_primitive_begin_texture(pr_trianglelist, tex) 
    var n = 0;
    for(i = 0 ;i < rain_drops * 2; i += 2) {
        draw_vertex_texture(rain[i]-rain_size, rain[i+1]+5*rain_size, 0,1) 
        draw_vertex_texture(rain[i]+rain_size, rain[i+1]+5*rain_size, 1,1) 
        draw_vertex_texture(rain[i]-rain_hs*rain_length*rain_size, rain[i+1]-rain_vs*rain_length*rain_size, 0.5,0)  
        n+=3
        if n >= 999 { 
            draw_primitive_end()  
            draw_primitive_begin_texture(pr_trianglelist, tex) 
        }
    }
    draw_primitive_end()  
    draw_set_color(old_color)
     
}

/// DEBUG : Change properties.

// Drop count.
if mouse_wheel_up() scrRainSetDropCount(rain_drops + 10)
else if mouse_wheel_down() scrRainSetDropCount(rain_drops - 10)

// Drop size.
if keyboard_check(vk_up) rain_size = min(4, rain_size + 0.1)
if keyboard_check(vk_down) rain_size = max(1, rain_size - 0.1)

// Drop length.
if keyboard_check(vk_right) rain_length = min(2, rain_length + 0.05) 
if keyboard_check(vk_left) rain_length = max(0.1, rain_length - 0.05)




