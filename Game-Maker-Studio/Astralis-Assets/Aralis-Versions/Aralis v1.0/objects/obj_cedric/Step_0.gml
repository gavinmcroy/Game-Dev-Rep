/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7872BFCE
/// @DnDArgument : "code" "$(13_10)$(13_10)//---HORIZONTAL COLLISION$(13_10)if(moveX != 0){$(13_10)	if(place_meeting(x+moveX, y, obj_collision)){$(13_10)		repeat(abs(moveX)){$(13_10)			if(!place_meeting(x+sign(moveX), y, obj_collision)){ x += sign(moveX); }$(13_10)			else { break; }$(13_10)		}$(13_10)		moveX = 0;$(13_10)	}$(13_10)}$(13_10)			$(13_10)//---VERTICAL COLLISION$(13_10)if(moveY != 0){$(13_10)	if(place_meeting(x, y+moveY, obj_collision)){$(13_10)		repeat(abs(moveY)){$(13_10)			if(!place_meeting(x, y+sign(moveY), obj_collision)){ y += sign(moveY); }$(13_10)			else { break; }$(13_10)		}$(13_10)		moveY = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)//---APPLY MOVEMENT$(13_10)x += moveX;$(13_10)y += moveY;$(13_10)$(13_10)$(13_10)"


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