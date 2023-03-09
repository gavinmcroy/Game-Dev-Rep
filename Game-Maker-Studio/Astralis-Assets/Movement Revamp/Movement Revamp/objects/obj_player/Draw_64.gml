/// @description Debug Menu 
// You can write your code in this editor
draw_set_color(c_black); 
draw_text(10,10,string(this_angle));
draw_text(10,25,string(move_speed));
draw_text(10,40,"X Movement: "+string(move_yinput));
draw_text(10,55,"Y Movement: "+string(move_yinput));
draw_text(10,70,"Sign Of X Movement: "+string(Value_of_x));
draw_text(10,85,"Sign Of Y Movement: "+string(Value_of_y));
draw_text(10,100,"Frame Rate: "+string(round(fps_real)));
draw_text(10,115,"Camera X "+string(camera_get_view_y(view_camera[0])));
draw_text(10,130,"Camera Y "+string(camera_get_view_x(view_camera[0])));