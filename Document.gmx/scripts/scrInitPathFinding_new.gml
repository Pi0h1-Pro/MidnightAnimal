global.grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16)

mp_grid_add_instances(global.grid,objWall,1)
mp_grid_add_instances(global.grid, objFurniture, 1)
mp_grid_add_instances(global.grid, objWindow, 1)
mp_grid_add_instances(global.grid, objSolid, 1)
mp_grid_add_instances(global.grid, objSolidCaster, 1)
mp_grid_add_instances(global.grid, objWallBrickH, 1)
mp_grid_add_instances(global.grid, objWallBrickV, 1)
mp_grid_add_instances(global.grid, objClothesHanger, 1)
mp_grid_add_instances(global.grid, objClothesHangerCircle, 1)
mp_grid_add_instances(global.grid, objInvisibleWallH, 1)
mp_grid_add_instances(global.grid, objInvisibleWallV, 1)
mp_grid_add_instances(global.grid, objRenovationWallH, 1)
mp_grid_add_instances(global.grid, objRenovationWallV, 1)
mp_grid_add_instances(global.grid, objWallWoodH, 1)
mp_grid_add_instances(global.grid, objWallWoodV, 1)
mp_grid_add_instances(global.grid, objBalconyH, 1)
mp_grid_add_instances(global.grid, objBalconyV, 1)
mp_grid_add_instances(global.grid, objRailH, 1)
mp_grid_add_instances(global.grid, objRailV, 1)
mp_grid_add_instances(global.grid, objDinerWindow, 1)
mp_grid_add_instances(global.grid, objWallHospitalH, 1)
mp_grid_add_instances(global.grid, objWallHospitalV, 1)
mp_grid_add_instances(global.grid, objChainFenceH, 1)
mp_grid_add_instances(global.grid, objChainFenceV, 1)
mp_grid_add_instances(global.grid, objWallHeavyH, 1)
mp_grid_add_instances(global.grid, objWallHeavyV, 1)
mp_grid_add_instances(global.grid, objWallSoftH, 1)
mp_grid_add_instances(global.grid, objWallSoftV, 1)
mp_grid_add_instances(global.grid, objEuroPodV, 1)
mp_grid_add_instances(global.grid, objEuroPodH, 1)
mp_grid_add_instances(global.grid, objEuroPillar, 1)
mp_grid_add_instances(global.grid, objMonsterTruck, 1)
mp_grid_add_instances(global.grid, objWindowH, 1)
mp_grid_add_instances(global.grid, objWindowV, 1)
mp_grid_add_instances(global.grid, objHighballCurtain, 1)
mp_grid_add_instances(global.grid, objGlassPanelH, 1)
mp_grid_add_instances(global.grid, objGlassPanelV, 1)

with objDoorV {
    if solid = 1 mp_grid_add_instances(global.grid, id, 1)
}
with objDoorV2 {
    if solid = 1 mp_grid_add_instances(global.grid, id, 1)
}
with objDoorH {
    if solid = 1 mp_grid_add_instances(global.grid, id, 1)
}
with objDoorH2 {
    if solid = 1 mp_grid_add_instances(global.grid, id, 1)
}
with objDoorWoodV {
    if solid = 1 mp_grid_add_instances(global.grid, id, 1)
}

with objDoorWoodH {
    if solid = 1 mp_grid_add_instances(global.grid, id, 1)
}


//show_message("Path Initialized")
