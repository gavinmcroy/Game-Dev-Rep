seconds = 0;
minutes = 0;
hours = 0;

day = 1;
season = 1;
year = 1;

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