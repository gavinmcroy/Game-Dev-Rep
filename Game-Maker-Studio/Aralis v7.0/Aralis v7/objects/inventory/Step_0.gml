/// @description Your text here
if(keyboard_check_pressed(ord("I"))) { 
	show_inventory = !show_inventory
	}
if((keyboard_check_pressed(ord("I"))) && (!show_inventory)){
	audio_play_sound(snd_selectback, 2, false);
}
if((keyboard_check_pressed(ord("I"))) && (show_inventory)){
	audio_play_sound(snd_openinventory, 2, false);
}