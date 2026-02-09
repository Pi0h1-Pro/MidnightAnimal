// L3S_define_shadow(shadow type,relative z,overlay sprite)

// relative polygon caster, medium z
L3S_define_shadow(3, 50, 0);

// L3S_define_material(sprite,spec img,emis img,bm1 img,bm2 img,bm range)
L3S_define_material(spr_diamond_material, -1, -1, 1, -1, 0);

// making polygon
L3S_vertex_add(45.25, 225, 25);
L3S_vertex_add(45.25, 135, 25);
L3S_vertex_add(32, 90, 25);
L3S_vertex_add(32, 0, 25);
L3S_vertex_add(45.25, 315, 25);
L3S_vertex_add(45.25, 225, 25);

image_speed = 0;
image_index = 0;

