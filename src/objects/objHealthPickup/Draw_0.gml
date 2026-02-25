/// @description Draw glow.

// Only draw glow if the level is not yet complete.
if instance_exists(objEnemy) or instance_exists(objKnockedOut) {
    draw_self()
    d3d_set_fog(true,c_white,0,0)
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.1+lengthdir_x(0.1,dir))
    d3d_set_fog(0,0,0,0)
    dir += 4
} else draw_self()

draw_reset()

