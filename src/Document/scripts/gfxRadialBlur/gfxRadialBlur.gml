/// @description  gfxRadialBlur(SurfaceBuffer, Type[0-2], Iterations, X, Y, Radius);
/// @param SurfaceBuffer
/// @param  Type[0-2]
/// @param  Iterations
/// @param  X
/// @param  Y
/// @param  Radius
function gfxRadialBlur(surf, type, count, _x, _y, radius)
{
    static tmpsurf = -1;
    if (surf != -1 && count > 0 && radius > 0)
    {
        var SHADER, uTYPE, uRESPOS, uRADIUS, i;
    
        SHADER = shdRadialBlur;
    
        uTYPE = shader_get_uniform(SHADER, "TYPE");
        uRESPOS = shader_get_uniform(SHADER, "RESPOS");
        uRADIUS = shader_get_uniform(SHADER, "RADIUS");
        
        if (surface_exists(tmpsurf))
            surface_resize(tmpsurf, surface_get_width(surf), surface_get_height(surf))
        else
            tmpsurf = surface_create( surface_get_width(surf), surface_get_height(surf))
        
        shader_set(SHADER);
        shader_set_uniform_f(uTYPE, clamp(type, 0, 2));
        shader_set_uniform_f(uRESPOS, surface_get_width(surf), surface_get_height(surf), _x, _y);
    
        for (i = 0; i < count; i++)
        {
            surface_copy(tmpsurf, 0, 0, surf);
            shader_set_uniform_f(uRADIUS, radius / (9 * (i + 1)));
            surface_set_target(surf);
            draw_surface_ext(tmpsurf, 0, 0, 1, 1, 0, c_white, 1);
            surface_reset_target();
        }
    
        shader_reset();
        surface_set_target(surf);
        surface_reset_target();
    }
}