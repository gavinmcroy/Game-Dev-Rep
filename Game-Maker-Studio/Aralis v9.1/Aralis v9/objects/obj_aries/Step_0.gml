/// @description Movement of Aries

//---Checks game state and if in transition movement is disabled as well as animation frozen and reset to index 1
if(obj_fade.state=="IN_ROOM_TRANSITION_ENTER" || "IN_ROOM_TRANSITION_EXIT"){
	image_index=1;
	image_speed=0;
}
//---Checks game status to see if in transition or not
if(obj_fade.state=="IN_GAME")
{
//---INPUT VARIABLES
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_none = keyboard_check(vk_nokey);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);
if(keyboard_check_pressed(ord("I"))) { 
	show_inventory = !show_inventory
	}

if (!show_inventory){
//---Walking Sound Affects on Different Surface
/*if(place_meeting(x,y,obj_GrassCollision) && !audio_is_playing(snd_step_grass)) {
	if(image_index>=1.00 && image_index<=1.15) || (image_index>=3.00 && image_index<=3.15)  {
		audio_sound_pitch(snd_step_grass,random_range(.8,1.2));
		audio_play_sound(snd_step_grass,1,0); 	*/


if(keyboard_check(ord("R"))){
game_restart(); 	
}

//---SPEEDS
if(input_walk){ walkSpeed = aSpeed; }
else if(input_run){ walkSpeed = cSpeed; }
else { walkSpeed = bSpeed; }

//---RESET MOVE VARIABLES
moveX = 0;
moveY = 0;


//---INTENDED MOVEMENT
moveX = (input_right - input_left) * walkSpeed;
moveY = (input_down - input_up) * walkSpeed;

if(input_left){
	walkingState = 0;
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkleft
}
	
if(input_right){
	walkingState = 0;
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkright;
}
if(input_up){
	walkingState = 0;
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkup;
}
if(input_down){
	walkingState = 0;
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkdown;
}
if(input_none) {
	walkingState = 0;
	image_speed = 0;
	image_index = 1;
	walkSpeed = 3;
}

//---MOVEMENT CONFLICTS
if((input_left) && (input_right) && (input_down) && input_up){
	image_index=1;  
		image_speed=0
	}

if((input_left) && (input_right) && (input_down)) {
	walkingState = 1;
}
else if((input_left) && (input_right) && (input_up)) {
	walkingState = 2;
}
else if((input_up) && (input_down) && (input_left)) {
	walkingState = 3;
}
else if((input_up) && (input_down) && (input_right)) {
	walkingState = 4;
}
else if((input_left) && (input_right)) {
	walkingState = 5;
}
else if((input_up) && (input_down)) {
	walkingState = 6;
}
else if((input_run) && 
keyboard_check_released(ord("W")) || 
keyboard_check_released(ord("A")) ||
keyboard_check_released(ord("S")) ||
keyboard_check_released(ord("D"))){
	walkingState = 7;
}
else if((input_walk) && 
keyboard_check_released(ord("W")) || 
keyboard_check_released(ord("A")) ||
keyboard_check_released(ord("S")) ||
keyboard_check_released(ord("D"))){
	walkingState = 7;
}

if(walkingState == 1) {
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkdown;
}
else if(walkingState == 2) {
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkup;
}
else if(walkingState == 3) {
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkleft;
}
else if(walkingState == 4) {
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkright;
}
else if(walkingState == 5) {
	image_speed = 0;
	walkSpeed = 3;
	sprite_index = spr_arieswalkdown;
}
else if(walkingState == 6) {
	image_speed = 0;
	walkSpeed = 3;
	sprite_index = spr_arieswalkdown;
}
else if(walkingState == 7) {
	image_speed = 0;
	image_index = 1;
	walkSpeed = 3;
}




//---HORIZONTAL COLLISION
if(moveX != 0){
	if(place_meeting(x+moveX, y, obj_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)){ x += sign(moveX); }
			else { break; }
		}
		moveX = 0;
	}
}
			
//---VERTICAL COLLISION
if(moveY != 0){
	if(place_meeting(x, y+moveY, obj_collision)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)){ y += sign(moveY); }
			else { break; }
		}
		moveY = 0;
	}
}

//---APPLY MOVEMENT
x += moveX;
y += moveY;



//---BATTLE COLLISION
	if(place_meeting(x, y, obj_instigate)){
		room_goto(room0_battle1)
		gameState=4; 
		
	}
}

//---INVENTORY DISABLE MOVEMENT
else if (show_inventory) image_index = 1; exit;
}
