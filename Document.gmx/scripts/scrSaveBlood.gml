if instance_exists(objSurfacer) {
    my_id = instance_create(0, 0, objSurfaceReturn)
    sprite=sprite_create_from_surface(objSurfacer.surf,0,0,surface_get_width(objSurfacer.surf),surface_get_height(objSurfacer.surf),0,0,0,0)
    my_id.sprite_index = sprite
    global.floorblood[global.floorbloods] = sprite
    global.floorbloods += 1
    surface_free(objSurfacer.surf)
}
