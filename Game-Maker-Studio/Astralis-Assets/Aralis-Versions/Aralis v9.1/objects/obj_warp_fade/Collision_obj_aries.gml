/// @description Fade on Collision
//---Fades when Collision is detected with obj_aries 
if(obj_fade.alpha>0)
	obj_fade.state = "IN_ROOM_TRANSITION_ENTER";
	else
	{
		//---Target Room for Fade transition set inside creation Code of obj_warp_fade
		room_goto(targetroom);
		obj_aries.x = targetx
		obj_aries.y = targety
	}
