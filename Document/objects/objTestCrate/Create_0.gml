// L3S_define_shadow(shadow type,relative z,overlay sprite)

// relative polygon caster, medium z
L3S_define_shadow(3, 50, 0);
L3S_define_material(sprite_index, -1, -1, 1, 2, 2);

// making polygon
L3S_vertex_add(44.5, 225, 25);
L3S_vertex_add(44.5, 135, 25);
L3S_vertex_add(44.5, 45, 25);
L3S_vertex_add(44.5, 315, 25);
L3S_vertex_add(44.5, 225, 25);

image_speed = 0;
image_index = 0;

