/// @description Movement Controller 

//---Delta Time System 
global.frame_delay = delta_time/1000000; 
move_per_frame = frame_delay * move_speed ; 
//---Physics 
gravity_move_per_frame = gsp* frame_delay; 

//---Key Press Movement System 
if(keyboard_check(ord("A"))){
 	x-= move_per_frame 
}

if(keyboard_check(ord("D"))){
 	x+= move_per_frame 
}

//---Jump Controller
if(keyboard_check_pressed(vk_space)){
	y-= 10; 		
}

//---Score System 
if(instance_number(obj_prize))>0{
	instance_find(obj_prize,1);
}

if(place_meeting(x,y,obj_prize)){
	score_system+=1; 
	
}