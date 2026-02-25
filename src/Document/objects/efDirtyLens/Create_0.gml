dust=background_get_texture(efDust)
hmask=background_get_texture(efHalo)

dust_sampler = shader_get_sampler_index(SSLF_Dusty_shdr,"lensDirtTex")
hmask_sampler = shader_get_sampler_index(SSLF_Dusty_shdr,"haloMaskTex")

texture_set_repeat(false)

blur_size=15
down_sample=12

thresh_surf=surface_create(__view_get( e__VW.WView, 0 )/down_sample,__view_get( e__VW.HView, 0 )/down_sample)
blur_surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
bloom_surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))

HBlur_uni = shader_get_uniform(gaussian_horizontal_shdr,"time")
VBlur_uni = shader_get_uniform(gaussian_vertical_shdr,"time")

HRes_uni = shader_get_uniform(gaussian_horizontal_shdr,"resolution")
VRes_uni = shader_get_uniform(gaussian_horizontal_shdr,"resolution")


DRes_uni = shader_get_uniform(SSLF_Dusty_shdr,"TEX_DIMENSIONS")
DMul_uni = shader_get_uniform(SSLF_Dusty_shdr,"FXMul")
DHal_uni = shader_get_uniform(SSLF_Dusty_shdr,"ENABLE_HALO")
DCAbb_uni = shader_get_uniform(SSLF_Dusty_shdr,"ENABLE_CHROMATIC_DISTORTION")
DGhosts_uni = shader_get_uniform(SSLF_Dusty_shdr,"MAX_GHOSTS")
DGhostDisp_uni = shader_get_uniform(SSLF_Dusty_shdr,"GHOST_DISPERSAL")



