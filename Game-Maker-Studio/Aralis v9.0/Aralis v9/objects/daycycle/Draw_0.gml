/// @description Day Cycle Debug HUD
if(draw_daylight = true){
	var c = light_color;
	draw_set_alpha(darkness);
	draw_rectangle_color(0, 0, 1080, 1080, c, c, c, c, false);
	draw_set_alpha(1);
}
//---Day Menu Camera Following Player
hour=hours%12


var camerax = camera_get_view_x(view_camera[0]);
var cameray = camera_get_view_y(view_camera[0]);
var camerawidth= camera_get_view_width(view_camera[0]);

draw_set_font(fnt_daycounter);
draw_set_colour(c_black);
//---Determines AM or PM Depending on What Time the Game is on 
if(hours>=12){
	timeState="PM"
}
if(hours<=12){
	timeState="AM"	
}

//---Text Follows Player Around 
draw_text(camerax,cameray+60,"Seconds: "+string(round(seconds)));
draw_text(camerax,cameray+75,"Time: "+string(round(hour))+":"+string(round(minute))+string(timeState));
draw_text(camerax,cameray+90,"Day: "+string(day));
draw_text(camerax,cameray+105,"Season: "+string(season));
draw_text(camerax,cameray+120,"Year: "+string(year));
draw_text(camerax,cameray+135, "Week Day: "+string(week));
draw_text(camerax,cameray+150,"Month: "+string(monthday));
//---Determines What Weekday we should be on And resets said week when reaching Sunday
days=day%7
if(days=1){
week= "Monday"	
}
if(days=2){
week= "Tuesday"	
}
if(days=3){
week= "Wedensday"	
}
if(days=4){
week= "Thursday"	
}
if(days=5){
week= "Friday"	
}
if(days=6){
week="Saturday"	
}
if(days=0){
week="Sunday"	
}
//---Display Reset of when reaching 60
minute=minutes%60;	
//---Month = 0 = January
//---Determines what month game should be on 
if(month=0){
monthday="January"	
}
if(month=1){
monthday="Febuary"	
}
if(month=2){
monthday="March"	
}
if(month=3){
monthday="April"	
}
if(month=4){
monthday="May"	
}
if(month=5){
monthday="June"	
}
if(month=6){
monthday="July"	
}
if(month=7){
monthday="August"
}
if(month=8){
monthday="September"	
}
if(month=9){
monthday="October"	
}
if(month=10){
monthday="November"	
}
if(month=11){
monthday="December"	
}


