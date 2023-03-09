/// Score UI

var camerax = camera_get_view_x(view_camera[0]);
var cameray = camera_get_view_y(view_camera[0]);
var camerawidth= camera_get_view_width(view_camera[0]);
draw_set_font(fnt_Score);
draw_set_colour(c_white);
draw_text(camerax+cameray/2,cameray+25,"Score: "+string(thescore));
draw_text(camerax+cameray,cameray,"hi")