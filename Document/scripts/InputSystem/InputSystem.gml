function Binding() constructor {
	binds = array_create(argument_count, 0);
	
	for (var i = 0; i < (argument_count); i++)
	{
		binds[i] = argument[i];
	}
	
	static Down = function()
	{
		for (var i = 0; i < array_length(binds); i++) {
			if (i == array_length(binds) - 1)
				f = global.inputManager.GamepadHeld(binds[i]);
			else if (binds[i] > 3)
				f = keyboard_check_direct(binds[i]);
			else
				f = mouse_check_button(binds[i]);
			
			if (f) {
				return true;
			}
		}
		
		return false;
	}
	
	static Pressed = function()
	{
		for (var i = 0; i < array_length(binds); i++) {
			if (i == array_length(binds) - 1)
				f = global.inputManager.GamepadPressed(binds[i]);
			else if (binds[i] > 3)
				f = keyboard_check_pressed(binds[i]);
			else
				f = mouse_check_button_pressed(binds[i]);
			
			if (f) {
				return true;
			}
		}
		
		return false;
	}
	
	static Released = function()
	{
		for (var i = 0; i < array_length(binds); i++) {
			if (i == array_length(binds) - 1)
				f = global.inputManager.GamepadReleased(binds[i]);
			else if (binds[i] > 3)
				f = keyboard_check_released(binds[i]);
			else
				f = mouse_check_button_released(binds[i]);
			
			if (f) {
				return true;
			}
		}
		
		return false;
	}
	
	toString = function()
	{
		try {
			str = key_to_string(binds[0]);
			if (str == "")
				return "[UNDEFINED]";
			else
				return str;
		} catch (_exception) {
			return "[UNDEFINED]";
		}
	}
	
	toStringExt = function(_index)
	{
		if (_index < array_length(binds)) {
			return key_to_string(binds[_index]);
		} else {
			return "[UNDEFINED]";
		}
	}
	
	Set = function(_index, _key)
	{
		binds[_index] = _key;
	}
	
	Remove = function(_index)
	{
		if (array_length(binds) > 1)
			array_delete(binds, _index, 1);
	}
}

function scrInitBindings() {
	
	ini_open("config.ini");
	
	var upkey = string_to_key(ini_read_string("Controls", "Up", "W"));
	var downkey = string_to_key(ini_read_string("Controls", "Down", "S"));
	var leftkey = string_to_key(ini_read_string("Controls", "Left", "A"));
	var rightkey = string_to_key(ini_read_string("Controls", "Right", "D"));
	
	var interactkey = string_to_key(ini_read_string("Controls", "Interact", "Left Mouse Button"));
	
	var firekey = string_to_key(ini_read_string("Controls", "Fire", "Left Mouse Button"));
	
	var pickupkey = string_to_key(ini_read_string("Controls", "Pickup", "Right Mouse Button"));
	
	var executekey = string_to_key(ini_read_string("Controls", "Execute", "Space"));
	
	var humanshieldkey = string_to_key(ini_read_string("Controls", "Human Shield", "Space"));
	
	var lookkey = string_to_key(ini_read_string("Controls", "Look", "Shift"));
	
	var advdialoguekey = string_to_key(ini_read_string("Controls", "Advance Dialogue", "Left Mouse Button"));
	
	var skipdialoguekey = string_to_key(ini_read_string("Controls", "Skip Dialogue", "Right Mouse Button"));
	
	var lockonkey = string_to_key(ini_read_string("Controls", "Lock On", "Middle Mouse Button"));
	
	var pausekey = string_to_key(ini_read_string("Controls", "Pause", "Escape"));
	
	var restartkey = string_to_key(ini_read_string("Controls", "Restart", "R"));
	
	global.input = {
		up : new Binding(upkey, vk_up, gp_padu),

		down : new Binding(downkey, vk_down, gp_padd),

		left : new Binding(leftkey, vk_left, gp_padl),

		right : new Binding(rightkey, vk_right, gp_padr),

		interact : new Binding(interactkey, mb_right, gp_face1),

		fire : new Binding(firekey, gp_shoulderr),

		pickup : new Binding(pickupkey, gp_shoulderl),
		
		execute : new Binding(executekey, gp_face1),
		
		humanshield : new Binding(humanshieldkey, gp_face1),
	
		look : new Binding(lookkey, gp_shoulderlb),
	
		advancedialogue : new Binding(advdialoguekey, gp_face1),
		
		skipdialogue : new Binding(skipdialoguekey, gp_face1),
	
		lockon : new Binding(lockonkey, gp_shoulderrb),
		
		pause : new Binding(pausekey, gp_start),
		
		restart : new Binding(restartkey, gp_face4),
		
		accept : new Binding(vk_enter, vk_space, mb_left, gp_face1),
		
		cancel : new Binding(vk_escape, mb_right, gp_face2)
	}
	
	ini_close();
}

function InputManager() constructor {
    m_iGamepad = -1; // last gamepad used
	
	m_iGamepads = 0;
	
	m_aGamepads = [];
    
    static Async_System = function()
	{
		switch ( global.ASYNC_TYPE )
		{
			case "gamepad discovered":
				global.ASYNC_ID = async_load[? "pad_index"];
				
				CheckGamepads();
				
				//ConMsg( $"input: gamepad {global.ASYNC_ID} connected" );
                print(string("input: gamepad {0} connected", global.ASYNC_ID));
				break;
			
			case "gamepad lost":
				global.ASYNC_ID = async_load[? "pad_index"];
				
				if ( m_iGamepad == global.ASYNC_ID )
					m_iGamepad = -1;
				
				CheckGamepads();
				
				//ConMsg( $"input: gamepad {global.ASYNC_ID} disconnected" );
                print(string("input: gamepad {0} disconnected", global.ASYNC_ID));
				break;
		}
	}

    static CheckGamepads = function()
	{
		array_resize( m_aGamepads, 0 );
		m_iGamepads = 0;
		for ( var i = 0; i < gamepad_get_device_count(); ++i )
		{
			if ( gamepad_is_connected( i ) )
			{
				gamepad_set_axis_deadzone( i, global.deadzone );
				//m_iGamepad = i;
				++m_iGamepads;
				array_push( m_aGamepads, i );
			}
		}
	}
    
    static GamepadPressed = function( button = -1, device = -1 )
	{
		if ( gamepad_is_connected( device ) )
			return gamepad_button_check_pressed( device, button );
		for ( var i = 0; i < m_iGamepads; ++i )
		{
			if ( gamepad_is_connected( m_aGamepads[i] ) )
			{
				if ( gamepad_button_check_pressed( m_aGamepads[i], button ) )
					return true;
			}
		}
		return false;
	}
	
	static GamepadHeld = function( button = -1, device = -1 )
	{
		if ( gamepad_is_connected( device ) )
			return gamepad_button_check( device, button );
		for ( var i = 0; i < m_iGamepads; ++i )
		{
			if ( gamepad_is_connected( m_aGamepads[i] ) )
			{
				if ( gamepad_button_check( m_aGamepads[i], button ) )
					return true;
			}
		}
		return false;
	}
	
	static GamepadReleased = function( button = -1, device = -1 )
	{
		if ( gamepad_is_connected( device ) )
			return gamepad_button_check_released( device, button );
		for ( var i = 0; i < m_iGamepads; ++i )
		{
			if ( gamepad_is_connected( m_aGamepads[i] ) )
			{
				if ( gamepad_button_check_released( m_aGamepads[i], button ) )
					return true;
			}
		}
		return false;
	}
	
	static GamepadAxis = function( axis = gp_axislh, device = -1 )
	{
		if ( gamepad_is_connected( device ) )
			return gamepad_axis_value( device, axis );
		var val = 0;
		for ( var i = 0; i < m_iGamepads; ++i )
		{
			if ( gamepad_is_connected( m_aGamepads[i] ) )
			{
				val += gamepad_axis_value( m_aGamepads[i], axis );
			}
		}
		return clamp( val, -1, 1 );
	}
	
	static GamepadValue = function( button = gp_face1, device = -1 )
	{
		if ( gamepad_is_connected( device ) )
			return gamepad_button_value( device, button );
		var val = 0;
		for ( var i = 0; i < m_iGamepads; ++i )
		{
			val += gamepad_button_value( m_aGamepads[i], button );
		}
		return clamp( val, 0, 1 );
	}
}