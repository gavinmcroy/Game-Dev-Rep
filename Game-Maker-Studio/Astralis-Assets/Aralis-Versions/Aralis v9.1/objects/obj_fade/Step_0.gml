/// @description Fading Event
//---Different Game states for when Fade occurs
//---Used for future to add sounds to event
//---IN_GAME= In game with no transition currently running
//---IN_ROOM_TRANSITION_ENTER= The fading out of objects during transitioon
//---IN_ROOM_TRANSITION_EXIT= The fading in of objects during end of transition
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
