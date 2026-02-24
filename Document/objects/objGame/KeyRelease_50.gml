if !isDevMode exit;
if (instance_exists(objDebugger))
    instance_destroy(objDebugger);
else
    debug = instance_create_depth(x, y, 0, objDebugger);