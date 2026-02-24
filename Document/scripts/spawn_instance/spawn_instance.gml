/// @description Creates an instance of a given object at a given position.
/// @param _x The x position the object will be created at.
/// @param _y The y position the object will be created at.
/// @param _obj The object to create an instance of.
function spawn_instance(_x, _y, _obj)
{
	var _depth = 0;
	if (_obj >= 0) && (_obj < array_length(global.__objectID2Depth)) {
		_depth = global.__objectID2Depth[_obj];
	}

	return instance_create_depth(_x, _y, _depth, _obj);
}
