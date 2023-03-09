/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	
	case "IN_GAME":
	{
		draw_set_alpha(1);
	break;
	}
	case "IN_ROOM_TRANSITION_ENTER":
	{
		alpha=alpha-.05;
		if(alpha<=0)
		{
		alpha=0;
		state="IN_ROOM_TRANSITION_EXIT";
		}
		draw_set_alpha(alpha);
		break;
		
	}

case "IN_ROOM_TRANSITION_EXIT":
	{
		alpha=alpha+.05;
		if(alpha>=1)
		{
		alpha=1;
		state="IN_GAME";
		}
		draw_set_alpha(alpha);
		
		break;
		
}
}