/// @description Your Text Here
if(draw_daylight = true){
	var c = light_color;
	draw_set_alpha(darkness);
	draw_rectangle_color(0, 0, 1080, 1080, c, c, c, c, false);
	draw_set_alpha(1);
}
//Day Menu Camera Following Player

var camerax = camera_get_view_x(view_camera[0]);
var cameray = camera_get_view_y(view_camera[0]);
var camerawidth= camera_get_view_width(view_camera[0]);

draw_set_font(fnt_daycounter);
draw_set_colour(c_black);

draw_text(camerax,cameray,"Seconds: "+string(round(seconds)));
draw_text(camerax,cameray+15,"Minutes: "+string(round(minutes)));
draw_text(camerax,cameray+30,"Hours: "+string(round(hours)));
draw_text(camerax,cameray+45,"Day: "+string(day));
draw_text(camerax,cameray+60,"Season: "+string(season));
draw_text(camerax,cameray+75,"Year: "+string(year));
draw_text(camerax,cameray+90, "Week Day: "+string(week));
draw_text(camerax,cameray+105,"Month: "+string(monthday));

week = "Monday"
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

//Month = 0 = January
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
