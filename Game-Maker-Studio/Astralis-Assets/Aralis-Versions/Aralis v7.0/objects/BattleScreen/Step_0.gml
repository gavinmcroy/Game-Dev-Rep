/// @description (Debug)Leaving Game State 4 
//vk_anykey only for debug! Change to vk_esc final testing
if gameState = 4 {
	if(keyboard_check_pressed(vk_escape)) { 
		game_restart();
	}
}

	 