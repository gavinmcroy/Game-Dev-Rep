/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0925FFF2
/// @DnDArgument : "code" "moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)var idle = choose(0, 1) ;$(13_10)if(idle == false){$(13_10)	var dir = choose(1, 2, 3, 4);$(13_10)	switch(dir){$(13_10)		case 1: $(13_10)		image_speed = walkSpeed;$(13_10)		sprite_index = spr_cedricwalkleft;$(13_10)		moveX = -walkSpeed; break;$(13_10)		case 2: $(13_10)		image_speed = walkSpeed;$(13_10)		sprite_index = spr_cedricwalkright;$(13_10)		moveX = walkSpeed; break;$(13_10)		case 3: $(13_10)		image_speed = walkSpeed;$(13_10)		sprite_index = spr_cedricwalkup;$(13_10)		moveY = -walkSpeed; break;$(13_10)		case 4: $(13_10)		image_speed = walkSpeed;$(13_10)		sprite_index = spr_cedricwalkdown;$(13_10)		moveY = walkSpeed; break;$(13_10)	}$(13_10)}$(13_10)else if(idle == true){$(13_10)	image_speed = 0;$(13_10)	image_index = 1;$(13_10)}$(13_10)alarm[1] = random_range(2.5, 4) * room_speed;"
moveX = 0;
moveY = 0;

var idle = choose(0, 1) ;
if(idle == false){
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
else if(idle == true){
	image_speed = 0;
	image_index = 1;
}
alarm[1] = random_range(2.5, 4) * room_speed;