/// @description Snow Particle
// You can write your code in this editor
partSnow_sys = part_system_create();
depth=-9;
//Turns Snow on or off 
snow=false;
if(snow=true){
	
//Snow Particle
partSnow = part_type_create();
part_type_shape(partSnow,pt_shape_sphere);
part_type_size(partSnow,.2,.3,0,.07);
part_type_color2(partSnow,c_gray,c_white);
part_type_alpha2(partSnow,.5,.1);
part_type_gravity(partSnow,.05,1000);
part_type_speed(partSnow,.5,.5,0,0);
part_type_direction(partSnow,250,330,0,1);
part_type_orientation(partSnow,200,200,0,0,0);
part_type_life(partSnow,60,280);

//Update Emitter
partSnow_emit = part_emitter_create(partSnow_sys);
part_emitter_region(partSnow_sys,partSnow_emit,view_xview[0]-400,view_xview[0]+view_wview[0],view_yview[0]-100, view_yview[0]-100,ps_shape_line,ps_distr_linear);
part_emitter_burst(partSnow_sys,partSnow_emit,partSnow,30);
part_emitter_stream(partSnow_sys,partSnow_emit,partSnow,30);
}
