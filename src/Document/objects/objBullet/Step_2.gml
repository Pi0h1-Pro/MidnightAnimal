/// @description  Calculate trail.
trail_calculate(32)

/// Fast collision.
if sprite_index = sprBulletRicochet exit

if collision_line(xprevious, yprevious, x, y, objWall, 1, 0)
or collision_line(xprevious, yprevious, x, y, objSolid, 1, 0)
or collision_line(xprevious, yprevious, x, y, objConcreteBlock, 1, 0)
//or collision_line(xprevious, yprevious, x, y, objDoorV, 1, 0)
or collision_line(xprevious, yprevious, x, y, objSlidingDoorV, 1, 0) 
scrBulletImpact()


