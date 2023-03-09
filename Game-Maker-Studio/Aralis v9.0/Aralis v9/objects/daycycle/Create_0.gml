/// @description Start Values for Daycycle
//---Controls Week and month reset day
week = "Monday"
month=0;
monthday="January"
//---Timer start values
timeState= "AM"
//---minute is the Value Stored from Minutes to display on HUD
minute = 0;
//---minutes used by Display
minutes = 0;
seconds = 0;
//---hours used by counter
hours = 0;
//---hour used by Display
hour= 1;
//---Assigned depth towards daycycle. Must be kept higher than all objects depth or else will not function
depth=-99
//---Day used by counter
day = 1;
//---Used by Display in order to have weekdays reset
days=1;
//---Start Season
season = "Winter";
//---Start Year
year = 1;
//---TIME SPEED
time_speed = 10000; 
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

max_darkness = 0.5;
darkness = 0;
light_color = c_black;
draw_daylight = false;
//Constant Values for Day cycle
enum phase {
	sunrise = 4,
	daytime = 10,
	sunset = 17,
	nighttime = 23,
}
