/// @description Insert description here
// You can write your code in this editor
if(obj_game.state=="IN_GAME")
{
	if(keyboard_check(ord("A"))) x = x-4; 
	if(keyboard_check(ord("W"))) y = y-4;
	if(keyboard_check(ord("S"))) y = y+4;
	if(keyboard_check(ord("D"))) x = x+4;
}