if !surface_exists(thresh_surf){
    thresh_surf=surface_create(__view_get( e__VW.WView, 0 )/down_sample,__view_get( e__VW.HView, 0 )/down_sample);
    blur_surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
    bloom_surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
}

if surface_get_width(blur_surf)!=__view_get( e__VW.WPort, 0 ) or surface_get_height(blur_surf)!=__view_get( e__VW.HPort, 0 ){

    surface_resize(thresh_surf,__view_get( e__VW.WView, 0 )/down_sample,__view_get( e__VW.HView, 0 )/down_sample);
    surface_resize(blur_surf,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
    surface_resize(bloom_surf,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));

}


