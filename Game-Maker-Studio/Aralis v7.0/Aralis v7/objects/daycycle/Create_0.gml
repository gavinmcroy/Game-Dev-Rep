/// @description Speed Of Day
week = "Monday"
month=0;
monthday="January"
seconds = 0;
minutes = 0;
hours = 0;
depth=-9999
day = 1;
days=1;
season = "Winter";
year = 1;
weekcount=0;
//---TIME SPEED
time_increment = 50;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

max_darkness = 0.5;
darkness = 0;
light_color = c_black;
draw_daylight = false;

enum phase {
	sunrise = 4,
	daytime = 10,
	sunset = 17,
	nighttime = 23,
}
