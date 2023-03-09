/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3156E268
/// @DnDArgument : "code" "if gameState = 4 {$(13_10)	if(keyboard_check_pressed(vk_escape)) { $(13_10)		game_restart();$(13_10)	}$(13_10)}"
if gameState = 4 {
	if(keyboard_check_pressed(vk_escape)) { 
		game_restart();
	}
}