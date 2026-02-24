if global.motionblur == false
    exit;

switch (type) {

    // Directional
    case 0: gfxDirectional(application_surface,3,dir,dist)
    break;
    
    // General
    case 1: gfxGeneral(application_surface,2,2,2)
    break;
    
    // Gaussian 
    case 2: gfxGaussian(application_surface,3,10,0)
    break;
    
    /// Bokeh
    case 3: gfxGaussian(application_surface,2,5,5)
    break;
    
    // Masked
    case 4: gfxMasked(application_surface,surface_get_texture(surf_mask),2,5,true)
    break;
    
    // Radial 1
    case 5: gfxRadial(application_surface,0,2,_x,_y,100)
    break;
    
    // Radial 2
    case 6: gfxRadial(application_surface,1,2,_x,_y,100)
    break;
    
    // Radial 3
    case 7: gfxRadial(application_surface,2,2,_x,_y,100)
    break;
}