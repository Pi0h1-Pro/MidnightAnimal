// L3S_dsurface_update(shadow master)
instance_activate_object(objLSStaticShadow);

// if room=High_spec {L3S_mesh_update_soft()}
// else{L3S_mesh_update()}

L3S_mesh_update_soft();

