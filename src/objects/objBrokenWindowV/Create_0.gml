// Add the destroyed window to the global pathfinding grid.
mp_grid_add_instances(global.grid, id, 1)
i = 0

// Create smaller shards of glass near the base of the window.
repeat(16) {
    my_id = instance_create(x + i * 2, y + 1, objShard)
    my_id.direction = 90 - 10 + random(20)
    my_id.speed = random(3)
    i += 1
}

