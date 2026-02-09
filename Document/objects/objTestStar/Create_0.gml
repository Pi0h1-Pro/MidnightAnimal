// L3S_define_shadow(shadow type,relative z,overlay sprite)
L3S_define_shadow(3, 75, 0);

// L3S_define_material(sprite,spec img,emis img,bm1 img,bm2 img,bm range)
L3S_define_material(sprite_index, 2, -1, 1, -1, 0);

// Making star shadow
L3S_vertex_add(59.5, 0, 50);
L3S_vertex_add(69.5, 180 - 32.35, 50);
L3S_vertex_add(62.5, 360 - 77.28, 50);
L3S_vertex_add(62.5, 78.16, 50);
L3S_vertex_add(71.5, 180 + 31.92, 50);
L3S_vertex_add(59.5, 0, 50);

image_speed = 0;
image_index = 0;

