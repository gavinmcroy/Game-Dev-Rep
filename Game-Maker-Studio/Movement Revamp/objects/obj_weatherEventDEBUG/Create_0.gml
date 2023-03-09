partRain_sys = part_system_create();

rain=true;
//---Turns Rain on or off 
//---Assigned Depth towards rain
depth=-9;
if(rain=true){
//---Rain Particle
partRain = part_type_create();
part_type_shape(partRain,pt_shape_line);
part_type_size(partRain,.2,.3,0,0);
part_type_color2(partRain,c_teal,c_white);
part_type_alpha2(partRain,.5,.1);
part_type_gravity(partRain,.1,290);
part_type_speed(partRain,.5,.5,0,0);
part_type_direction(partRain,250,330,0,1);
part_type_orientation(partRain,290,290,0,0,0);
part_type_life(partRain,20,180);
//---Puddle Particle
partPuddle = part_type_create();
part_type_shape(partPuddle,pt_shape_circle);
part_type_size(partPuddle,0.5,0.8,.01,0);
part_type_scale(partPuddle,.5,.1);
part_type_color1(partPuddle,c_silver);
part_type_alpha2(partPuddle,.4,0);
part_type_speed(partPuddle,0,0,0,0);
part_type_direction(partPuddle,0,0,0,0);
part_type_gravity(partPuddle,0,270);
part_type_life(partPuddle,50,60);
//---Set Sequence
part_type_death(partRain,1,partPuddle);

//---Advance System
repeat (room_speed * 3){
    part_system_update(partRain_sys);
}

//---Update Emitter
partRain_emit = part_emitter_create(partRain_sys);
part_emitter_region(partRain_sys,partRain_emit,view_xview[0]-400,view_wview[0],view_yview[0]-100, view_yview[0]-100,ps_shape_line,ps_distr_linear);
part_emitter_burst(partRain_sys,partRain_emit,partRain,30);
part_emitter_stream(partRain_sys,partRain_emit,partRain,30);
}
//part_emitter_region(partRain_sys,partRain_emit,view_xview[0]-400,view_wview[0],view_yview[0]-100, view_yview[0]-100,ps_shape_line,ps_distr_linear);