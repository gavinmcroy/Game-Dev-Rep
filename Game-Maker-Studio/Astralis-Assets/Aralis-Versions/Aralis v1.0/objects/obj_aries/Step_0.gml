/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DFDAE45
/// @DnDArgument : "code" "//---INPUT VARIABLES$(13_10)input_left = keyboard_check(ord("A"));$(13_10)input_right = keyboard_check(ord("D"));$(13_10)input_up = keyboard_check(ord("W"));$(13_10)input_down = keyboard_check(ord("S"));$(13_10)input_none = keyboard_check(vk_nokey);$(13_10)input_walk = keyboard_check(vk_control);$(13_10)input_run = keyboard_check(vk_shift);$(13_10)if(keyboard_check_pressed(ord("I"))) { $(13_10)	show_inventory = !show_inventory$(13_10)	}$(13_10)$(13_10)if (!show_inventory){$(13_10)$(13_10)	$(13_10)//---SPEEDS$(13_10)if(input_walk){ walkSpeed = aSpeed; }$(13_10)else if(input_run){ walkSpeed = cSpeed; }$(13_10)else { walkSpeed = bSpeed; }$(13_10)$(13_10)//---RESET MOVE VARIABLES$(13_10)moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)$(13_10)//---INTENDED MOVEMENT$(13_10)moveX = (input_right - input_left) * walkSpeed;$(13_10)moveY = (input_down - input_up) * walkSpeed;$(13_10)if(input_left){$(13_10)	image_speed = walkSpeed / 3;$(13_10)	sprite_index = spr_arieswalkleft;$(13_10)}$(13_10)if(input_right){$(13_10)	image_speed = walkSpeed / 3;$(13_10)	sprite_index = spr_arieswalkright;$(13_10)}$(13_10)if(input_up){$(13_10)	image_speed = walkSpeed / 3;$(13_10)	sprite_index = spr_arieswalkup;$(13_10)}$(13_10)if(input_down){$(13_10)	image_speed = walkSpeed / 3;$(13_10)	sprite_index = spr_arieswalkdown;$(13_10)}$(13_10)if(input_none) {$(13_10)	image_speed = 0;$(13_10)	image_index = 1;$(13_10)	walkSpeed = 3;$(13_10)}$(13_10)if(input_down) && (input_up) {$(13_10)	image_speed = 0;$(13_10)	image_index = 1;$(13_10)	sprite_index = spr_arieswalkdown;$(13_10)	walkSpeed = 0;$(13_10)}$(13_10)if(input_left) && (input_right) {$(13_10)	image_speed = 0;$(13_10)	image_index = 1;$(13_10)	sprite_index = spr_arieswalkdown;$(13_10)	walkSpeed = 0;$(13_10)}$(13_10)$(13_10)//---HORIZONTAL COLLISION$(13_10)if(moveX != 0){$(13_10)	if(place_meeting(x+moveX, y, obj_collision)){$(13_10)		repeat(abs(moveX)){$(13_10)			if(!place_meeting(x+sign(moveX), y, obj_collision)){ x += sign(moveX); }$(13_10)			else { break; }$(13_10)		}$(13_10)		moveX = 0;$(13_10)	}$(13_10)}$(13_10)			$(13_10)//---VERTICAL COLLISION$(13_10)if(moveY != 0){$(13_10)	if(place_meeting(x, y+moveY, obj_collision)){$(13_10)		repeat(abs(moveY)){$(13_10)			if(!place_meeting(x, y+sign(moveY), obj_collision)){ y += sign(moveY); }$(13_10)			else { break; }$(13_10)		}$(13_10)		moveY = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)//---APPLY MOVEMENT$(13_10)x += moveX;$(13_10)y += moveY;$(13_10)$(13_10)$(13_10)$(13_10)//---BATTLE COLLISION$(13_10)	if(place_meeting(x, y, obj_instigate)){$(13_10)		room_goto(room0_battle1);$(13_10)		gameState = 4;$(13_10)	}$(13_10)}$(13_10)$(13_10)//---INVENTORY DISABLE MOVEMENT$(13_10)else if (show_inventory) image_index = 1; exit;$(13_10)$(13_10)$(13_10)$(13_10)	$(13_10)	$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//if(keyboard_check(ord("D")))  {$(13_10)//	x += walkSpeed;$(13_10)//	image_speed = walkSpeed / 3;$(13_10)//	sprite_index = spr_arieswalkright;$(13_10)//}$(13_10)//if(keyboard_check(ord("A")))  {$(13_10)//	x -= walkSpeed;$(13_10)//	image_speed = walkSpeed / 3;$(13_10)//	sprite_index = spr_arieswalkleft;$(13_10)//}$(13_10)//if(keyboard_check(ord("S")))  {$(13_10)//	y += walkSpeed;$(13_10)//	image_speed = walkSpeed / 3;$(13_10)//	sprite_index = spr_arieswalkdown;$(13_10)//}$(13_10)//if(keyboard_check(ord("W")))  {$(13_10)//	y -= walkSpeed;$(13_10)//	image_speed = walkSpeed / 3;$(13_10)//	sprite_index = spr_arieswalkup;$(13_10)//}$(13_10)//if(keyboard_check(vk_nokey)) {$(13_10)//	image_speed = 0;$(13_10)//	image_index = 1;$(13_10)//	walkSpeed = 3;$(13_10)//}$(13_10)//if(keyboard_check(vk_shift)) {$(13_10)//	walkSpeed = 5;$(13_10)//}$(13_10)//if(keyboard_check(ord("A")) && (keyboard_check(ord("D"))))  {$(13_10)//	image_speed = 0;$(13_10)//	image_index = 1;$(13_10)//	sprite_index = spr_arieswalkdown;$(13_10)//}$(13_10)//if(keyboard_check(ord("S")) && (keyboard_check(ord("W"))))  {$(13_10)//	image_speed = 0;$(13_10)//	image_index = 1;$(13_10)//	sprite_index = spr_arieswalkdown;$(13_10)//}$(13_10)//if(keyboard_check(ord("A")) && (keyboard_check(ord("D")) && (keyboard_check(ord("W")))))   {$(13_10)//	y -= walkSpeed;$(13_10)//	image_speed = walkSpeed / 3;$(13_10)//	sprite_index = spr_arieswalkup;$(13_10)//	walkSpeed = 3;$(13_10)//}$(13_10)$(13_10)$(13_10)"
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
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkleft;
}
if(input_right){
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkright;
}
if(input_up){
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkup;
}
if(input_down){
	image_speed = walkSpeed / 3;
	sprite_index = spr_arieswalkdown;
}
if(input_none) {
	image_speed = 0;
	image_index = 1;
	walkSpeed = 3;
}
if(input_down) && (input_up) {
	image_speed = 0;
	image_index = 1;
	sprite_index = spr_arieswalkdown;
	walkSpeed = 0;
}
if(input_left) && (input_right) {
	image_speed = 0;
	image_index = 1;
	sprite_index = spr_arieswalkdown;
	walkSpeed = 0;
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
		room_goto(room0_battle1);
		gameState = 4;
	}
}

//---INVENTORY DISABLE MOVEMENT
else if (show_inventory) image_index = 1; exit;



	
	
































//if(keyboard_check(ord("D")))  {
//	x += walkSpeed;
//	image_speed = walkSpeed / 3;
//	sprite_index = spr_arieswalkright;
//}
//if(keyboard_check(ord("A")))  {
//	x -= walkSpeed;
//	image_speed = walkSpeed / 3;
//	sprite_index = spr_arieswalkleft;
//}
//if(keyboard_check(ord("S")))  {
//	y += walkSpeed;
//	image_speed = walkSpeed / 3;
//	sprite_index = spr_arieswalkdown;
//}
//if(keyboard_check(ord("W")))  {
//	y -= walkSpeed;
//	image_speed = walkSpeed / 3;
//	sprite_index = spr_arieswalkup;
//}
//if(keyboard_check(vk_nokey)) {
//	image_speed = 0;
//	image_index = 1;
//	walkSpeed = 3;
//}
//if(keyboard_check(vk_shift)) {
//	walkSpeed = 5;
//}
//if(keyboard_check(ord("A")) && (keyboard_check(ord("D"))))  {
//	image_speed = 0;
//	image_index = 1;
//	sprite_index = spr_arieswalkdown;
//}
//if(keyboard_check(ord("S")) && (keyboard_check(ord("W"))))  {
//	image_speed = 0;
//	image_index = 1;
//	sprite_index = spr_arieswalkdown;
//}
//if(keyboard_check(ord("A")) && (keyboard_check(ord("D")) && (keyboard_check(ord("W")))))   {
//	y -= walkSpeed;
//	image_speed = walkSpeed / 3;
//	sprite_index = spr_arieswalkup;
//	walkSpeed = 3;
//}