instance_destroy();
exit;

// L3S_system_init(ambient,mod level,spec highlights,glow,light bloom)
L3S_system_init(make_color_rgb(20, 20, 20), 2, 1, 1, 1);

// L3S_define_objects(light master,overall shadow master,Dynamic shadow master,static shadows Spec lights, Spec objects)
L3S_define_masters(objLSLight, objLSShadow, objLSDynamicShadow, objLSStaticShadow, objLSSpecLight, objLSSpecTile);

// L3S_define_bloom(type,blur quality,blur amount,threshold,intensity)
L3S_define_bloom(1, 0.5, 8, 200, 1, 0);

// L3S_define_glow(type,quality,blur amount)
L3S_define_glow(1, 0.5, 5, 0);

// deactivating bloom,Spec Highlights & glow
global.LS_bloom = 0;
global.LS_spec = 0;
global.LS_glow = 0;

