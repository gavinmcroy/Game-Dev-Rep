/// @description Randomized Movement Pattern
moveX = 0;
moveY = 0;
//---Checks If Cedric Will stand Still or move
var idle = choose(0, 1) ;
if(idle == false){
	//---Choses Direction of which he will move if idle comes back as False
	var dir = choose(1, 2, 3, 4);
	switch(dir){
		case 1: 
		image_speed = walkSpeed;
		sprite_index = spr_cedricwalkleft;
		moveX = -walkSpeed; break;
		case 2: 
		image_speed = walkSpeed;
		sprite_index = spr_cedricwalkright;
		moveX = walkSpeed; break;
		case 3: 
		image_speed = walkSpeed;
		sprite_index = spr_cedricwalkup;
		moveY = -walkSpeed; break;
		case 4: 
		image_speed = walkSpeed;
		sprite_index = spr_cedricwalkdown;
		moveY = walkSpeed; break;			
					
	}
}
//---If Idle is True It tells Cedric to Remain Still
else if(idle == true){
	image_speed = 0;
	image_index = 1;
}
alarm[1] = random_range(2.5, 4) * room_speed;