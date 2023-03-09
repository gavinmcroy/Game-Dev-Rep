/// @description Movement Engine

//---Default Image Speed 
image_speed = 1;

//---Time Based Movement Engine For Character
var move_speed_this_frame= move_speed*global.delta_seconds_passed; 

//---Character Walking Speed 
move_speed=200; 
 

//---Speeds Shift=400 and Control=100 Temporary Speeds 
	if(keyboard_check(vk_shift)){
		move_speed=move_speed+200;
		image_speed=2;
		}

	if(keyboard_check(vk_control)){
		move_speed=move_speed-100;
		image_speed = .5; 
		}

Value_of_x=sign(move_xinput);
Value_of_y=sign(move_yinput);
//---System to determine if Animation Will play based on x and y cancellation

//---Debug Restart To Test Delta Time 
if(keyboard_check(ord("R"))){
game_restart()	
}
move_yinput=0;
move_xinput=0; 

//---System to determine if Animation Will play based on x and y cancellation 
if(Value_of_x==0 and Value_of_y==0){
	sprite_index = spr_ares_idle_down ; 	
}


//---Idle Controller  
if(keyboard_check(vk_nokey))and this_angle=0{
	sprite_index=spr_ares_idle_right; 			
}

if(keyboard_check(vk_nokey))and this_angle=90{
	sprite_index=spr_ares_idle_up ; 			
}

if(keyboard_check(vk_nokey))and this_angle=180{
	sprite_index=spr_ares_idle_left ; 			
}

if(keyboard_check(vk_nokey))and this_angle=270{
	sprite_index=spr_ares_idle_down ; 			
}



for(var i =0 ; i < array_length_1d(movement_inputs); i++){
	var this_key = movement_inputs[i];
	//---Smart Animation Controller
	if(keyboard_check(this_key)){
		    this_angle= i*90;
			
			if(this_angle = 270){
				sprite_index = spr_ares_walk_down;  	
				}
			if(this_angle = 180) and !keyboard_check(ord("W")) {
				sprite_index = spr_ares_walk_left;  	
				}
			if(this_angle = 90){
				sprite_index = spr_ares_walk_up;  	
				}
			if(this_angle = 0){
				sprite_index = spr_ares_walk_right;  	
				}
			if(keyboard_check(ord("W"))) and (keyboard_check(ord("S"))) and (keyboard_check(ord("A"))) and  !(keyboard_check(ord("D"))){
				this_angle = 180;	
				sprite_index=spr_ares_walk_left; 
				}	
			if(keyboard_check(ord("W"))) and (keyboard_check(ord("S"))) and (keyboard_check(ord("D"))) and  !(keyboard_check(ord("A"))){
				this_angle=0;
				sprite_index=spr_ares_walk_right; 
				}
			
			move_xinput+= lengthdir_x(1,this_angle);
			move_yinput+=lengthdir_y(1,this_angle);	
	}
}

//---Smart Collision 
var moving = (point_distance(0,0,move_xinput,move_yinput) > 0);
	if(moving) {
	var move_dir= point_direction(0,0,move_xinput,move_yinput);
	move(move_speed_this_frame,  move_dir);
	}
	
