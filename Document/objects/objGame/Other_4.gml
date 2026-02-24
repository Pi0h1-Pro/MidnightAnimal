if (live_call()) return live_result;
event_user(0);

strRoomDebug = ("Entered room " + string(room_get_name(room)));

show_debug_message(strRoomDebug);

if !isDevMode exit;

switch (room) {
	case rmInterfaceMenuMain:
		initGlobalVars();
        setTestMusic("DontTrip.ogg") 
        break;
	
	case rmInterfaceMenuLevels:
	
        setTestMusic("DontTrip.ogg")
        break;
    
	default:
        //
		break;
}