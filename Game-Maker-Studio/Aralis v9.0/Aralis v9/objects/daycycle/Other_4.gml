/// @description Daycycle by Room 
//---Determines What Room the Daylight Affect Will Function In 
switch(room){
	case room0: draw_daylight = true; break;
	case room_Test: draw_daylight = true; break; 
	case room_transition_instant: draw_daylight = true; break; 
	default: draw_daylight = false; break;
}