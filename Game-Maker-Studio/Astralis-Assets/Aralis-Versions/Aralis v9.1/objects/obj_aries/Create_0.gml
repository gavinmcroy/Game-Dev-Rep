/// @description Walk Speed and Inventory Status
//---GAME STATES
//1 = Walking
//2 = Dialogue
//3 = Inventory
//4 = Battle
audio_group_load(snd_WalkEffect);
depth=-10; 
image_speed = 0;
//---Walk Speed
aSpeed = 1;
//---Normal Speed
bSpeed = 2;
//---Running Speed
cSpeed = 3;
//---walkSpeed=2
walkSpeed = bSpeed;
//---Sets Game State
gameState = 1;
//---Shows Inventory on Start
show_inventory = false;
position = 1;
walkingState = 0;
//---Starting Image State
imageState = 0;
//---Turns on Debug HUD Set to 0 to Disable  
debug=1; 

 

