/// @description Debug HUD
//---HUD Containing Most Information Needed to fix any game related bugs

//---DEBUG MENU
if(debug==true){
draw_text(550,15,"state "+string(obj_fade.state));
draw_text(550,30, "alpha "+string(obj_fade.alpha));
draw_text(550,45,"room "+string(room));
draw_text(550,60, "X Cordinate: "+string(x));
draw_text(550,75, "Y Cordinate: "+string(y));
draw_text(550,90, "gameState: "+string(gameState));
draw_text(550,105,"Image_Idex: "+string(image_index));
draw_text(550,120,"Walk Speed: "+string(walkSpeed))
draw_text(550,135,"Walking State: "+string(walkingState))
draw_text(550,150,"Time Running: "+string(current_time/1000));
draw_text(550,165,"Weather: "+string(obj_rain.weatherstate));
}
//---Turns on Game Makers Built in HUD set to 0 to disable built in HUD
show_debug_overlay(1);