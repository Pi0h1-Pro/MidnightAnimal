/// @param KeyValue
function string_to_key(argument0){
	
	switch (argument0)
	{
		case "Left Mouse Button":		return mb_left;
		case "Right Mouse Button":		return mb_right;
		case "Middle Mouse Button":		return mb_middle;
		case "Side Mouse Button 1":		return mb_side1;
		case "Side Mouse Button 2":		return mb_side2;
		case "L Ctrl":					return vk_lcontrol;
		case "R Ctrl":					return vk_rcontrol;
		case "L Alt":					return vk_lalt;
		case "R Alt":					return vk_ralt;
		case "Escape":					return vk_escape;
		
		case ";":						return 186;
		case "'":						return 222;
		case "Enter":					return 13;
		case "\\":						return 220;
		case "Backspace":				return 8;
		case "[":						return 219;
		case "]":						return 221;
		case ",":						return 188;
		case ".":						return 190;
		case "/":						return 191;
		case "Shift":					return 16;
		case "Tab":						return 9;
		case "`":						return 192;
		case "0":						return 48;
		case "1":						return 49;
		case "2":						return 50;
		case "3":						return 51;
		case "4":						return 52;
		case "5":						return 53;
		case "6":						return 54;
		case "7":						return 55;
		case "8":						return 56;
		case "9":						return 57;
		
		case "Num 0":					return 96;
		case "Num 1":					return 97;
		case "Num 2":					return 98;
		case "Num 3":					return 99;
		case "Num 4":					return 100;
		case "Num 5":					return 101;
		case "Num 6":					return 102;
		case "Num 7":					return 103;
		case "Num 8":					return 104;
		case "Num 9":					return 105;
		case "Num /":					return 111;
		case "Num *":					return 106;
		case "Num +":					return 107;
		case "Num .":					return 110;
		case "Num -":					return 109;
		
		case "F1":						return 112;
		case "F2":						return 113;
		case "F3":						return 114;
		case "F4":						return 115;
		case "F5":						return 116;
		case "F6":						return 117;
		case "F7":						return 118;
		case "F8":						return 119;
		case "F9":						return 120;
		case "F10":						return 121;
		case "F11":						return 122;
		case "F12":						return 123;
		case "ScrLk":					return 145;
		case "Pause":					return 19;
		case "Caps Lock":				return 20;
		case "-":						return 189;
		case "=":						return 187;
		case "Insert":					return 45;
		case "Home":					return 36;
		case "Page Up":					return 33;
		case "Page Down":				return 34;
		case "End":						return 35;
		case "Delete":					return 46;
		case "NumLock":					return 144;
		case "Up":						return 38;
		case "Down":					return 40;
		case "Left":					return 37;
		case "Right":					return 39;
		case "L Windows":				return 91;
		case "R Windows":				return 92;
		case "Space":					return 32;
		case " ":						return 0;
		case "Play":					return 179;
		case "Mute":					return 173;
		case "Volume Down":				return 174;
		case "Volume Up":				return 175;

		default:						return ord(argument0);
	}
}