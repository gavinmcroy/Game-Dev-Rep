/// @description Inventory UI
if(!show_inventory) exit;

else {
	gameState = 3;
	draw_sprite_part_ext(partyui, 0,
	0, 0, invuiWidth, invuiHeight, 
	0, -16, 2, 2,
	c_white, 1);
	draw_sprite_part_ext(invui, 0,
	0, 0, invuiWidth, invuiHeight, 
	invuiXoffset, invuiYoffset, 1, 1,
	c_white, 1);
	var inventory_grid = ds_currency;
	draw_set_font(vcr_16);
	var c = c_white;
	draw_text_color(metalX, metalY, inventory_grid[# 0, 1], c, c, c, c, 1);
	draw_text_color(skullsX, skullsY, inventory_grid[# 1, 1], c, c, c, c, 1);
}
if(position < 8){
	if(keyboard_check_pressed(ord("S"))) { 
		position = (position + 1);
		audio_play_sound(snd_selectchange, 3, false);
	}
	if(keyboard_check_pressed(ord("W"))) {
		position = (position - 1);
		audio_play_sound(snd_selectchange, 3, false);
	}
	if(keyboard_check_pressed(vk_enter) && position == 1) {
		position = 8;
		audio_play_sound(snd_select, 3, false);
	}
	if(position == 0) {
		position = 6;
	}
	if (position == 7) {
		position = 1;
	}
	if(position=1){
		draw_sprite_part_ext(textui, image_index,
		0, 0, invuiWidth, invuiHeight, 
		invuiXoffset, invuiYoffset, 2, 2,
		c_white, 1);
	}
	if(position=2){
		draw_sprite_part_ext(textui2, image_index,
		0, 0, invuiWidth, invuiHeight, 
		invuiXoffset, invuiYoffset, 2, 2,
		c_white, 1);
	}
	if(position=3){
		draw_sprite_part_ext(textui3, image_index,
		0, 0, invuiWidth, invuiHeight, 
		invuiXoffset, invuiYoffset, 2, 2,
		c_white, 1);
	}
	if(position=4){
		draw_sprite_part_ext(textui4, image_index,
		0, 0, invuiWidth, invuiHeight, 
		invuiXoffset, invuiYoffset, 2, 2,
		c_white, 1);
	}
	if(position=5){
		draw_sprite_part_ext(textui5, image_index,
		0, 0, invuiWidth, invuiHeight, 
		invuiXoffset, invuiYoffset, 2, 2,
		c_white, 1);
	}
	if(position=6){
		draw_sprite_part_ext(textui6, image_index,
		0, 0, invuiWidth, invuiHeight, 
		invuiXoffset, invuiYoffset, 2, 2,
		c_white, 1);
		if(keyboard_check(vk_enter)){
			game_end();
		}
	}
}
else if(position>7){
	draw_sprite_part_ext(textui, 2,
	0, 0, invuiWidth, invuiHeight, 
	invuiXoffset, invuiYoffset, 2, 2,
	c_white, 1);
	draw_sprite_part_ext(itemui, image_index,
	0, 0, 400, invuiHeight, 
	0, 0, 2, 2,
	c_white, 1);
	if(position == 8){
		draw_sprite_part_ext(cursor, image_index, 
		0, 0, invuiWidth, invuiHeight, 
		itemslotx + 1, 
		itemsloty + (20 * itemposition) + 4, 2, 2, c_white, 1);
	}
	else if(position>8){
		draw_sprite_part_ext(cursor, 0, 
		0, 0, invuiWidth, invuiHeight, 
		itemslotx + 1, 
		itemsloty + (20 * itemposition) + 4, 2, 2, c_white, 1);
	}
		
	
	if(itemposition == 1){
		itemselected1 = 20;
	}
	else itemselected1 = 0;
	if(itemposition == 2){
		itemselected2 = 20;
	}
	else itemselected2 = 0;
	if(itemposition == 3){
		itemselected3 = 20;
	}
	else itemselected3 = 0;
	if(itemposition == 4){
		itemselected4 = 20;
	}
	else itemselected4 = 0;
	if(itemposition == 5){
		itemselected5 = 20;
	}
	else itemselected5 = 0;
	if(itemposition == 6){
		itemselected6 = 20;
	}
	else itemselected6 = 0;
	if(itemposition == 7){
		itemselected7 = 20;
	}
	else itemselected7 = 0;
	if(itemposition == 8){
		itemselected8 = 20;
	}
	else itemselected8 = 0;
	if(itemposition == 9){
		itemselected9 = 20;
	}
	else itemselected9 = 0;
		if(itemposition == 10){
		itemselected10 = 20;
	}
	else itemselected10 = 0;
	if(itemposition == 11){
		itemselected11 = 20;
	}
	else itemselected11 = 0;
	if(itemposition == 12){
		itemselected12 = 20;
	}
	else itemselected12 = 0;
	if(itemposition == 13){
		itemselected13 = 20;
	}
	else itemselected13 = 0;
	if(itemposition == 14){
		itemselected14 = 20;
	}
	else itemselected14 = 0;
	if(itemposition == 15){
		itemselected15 = 20;
	}
	else itemselected15 = 0;
	if(itemposition == 16){
		itemselected16 = 20;
	}
	else itemselected16 = 0;
	if(itemposition == 17){
		itemselected17 = 20;
	}
	else itemselected17 = 0;
	if(itemposition == 18){
		itemselected18 = 20;
	}
	else itemselected18 = 0;
	if(itemposition == 19){
		itemselected19 = 20;
	}
	else itemselected19 = 0;
	if(itemposition == 20){
		itemselected20 = 20;
	}
	else itemselected20 = 0;
	if(itemposition == 21){
		itemselected21 = 20;
	}
	else itemselected21 = 0;
	if(itemposition == 22){
		itemselected22 = 20;
	}
	else itemselected22 = 0;
	if(itemposition == 23){
		itemselected23 = 20;
	}
	else itemselected23 = 0;
	if(itemposition == 24){
		itemselected24 = 20;
	}
	else itemselected24 = 0;
	
	var i
	for(i = 1; i < itemcount; i += 1;) {
	draw_text_color(itemslotx + itemselected1, itemsloty + 20, itemslot1,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected2, itemsloty + 40, itemslot2,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected3, itemsloty + 60, itemslot3,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected4, itemsloty + 80, itemslot4,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected5, itemsloty + 100, itemslot5,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected6, itemsloty + 120, itemslot6,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected7, itemsloty + 140, itemslot7,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected8, itemsloty + 160, itemslot8,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected9, itemsloty + 180, itemslot9,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected10, itemsloty + 200, itemslot10,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected11, itemsloty + 220, itemslot11,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected12, itemsloty + 240, itemslot12,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected13, itemsloty + 260, itemslot13,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected14, itemsloty + 280, itemslot14,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected15, itemsloty + 300, itemslot15,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected16, itemsloty + 320, itemslot16,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected17, itemsloty + 340, itemslot17,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected18, itemsloty + 360, itemslot18,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected19, itemsloty + 380, itemslot19,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected20, itemsloty + 400, itemslot20,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected21, itemsloty + 420, itemslot21,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected22, itemsloty + 440, itemslot22,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected23, itemsloty + 460, itemslot23,
	c, c, c, c, 0.1);
	draw_text_color(itemslotx + itemselected24, itemsloty + 480, itemslot24,
	c, c, c, c, 0.1);
	if (itemposition > 22){
		bottomoffset = (20 * (itemposition - 23) + 16);
	}
	else bottomoffset = 0;
	//---Selecting Items
	if(position == 8 && keyboard_check_pressed(vk_enter)){
		position = 10;
		audio_play_sound(snd_select, 3, false);
		}
	}
}

if(position == 8 && keyboard_check_pressed(vk_escape)){
	position = 1;
	audio_play_sound(snd_selectback, 3, false);
}
if(position == 8 && keyboard_check_pressed(ord("S"))){
	itemposition += 1;
	audio_play_sound(snd_selectchange, 3, false);
}
if(position == 8 && keyboard_check_pressed(ord("W"))){
	itemposition -= 1;
	audio_play_sound(snd_selectchange, 3, false);
}
if(itemposition == 0){
	itemposition = itemcount;
}
if(itemposition > itemcount){
	itemposition = 1;
}
if(position == 10){
		draw_sprite_part_ext(itemuse, 0,
		0, 0, 480, 270, 
		0, -20 + (20 * itemposition) - bottomoffset, 2, 2,
		c_white, 1);
		draw_sprite_part_ext(cursor, image_index,
		0, 0, 960, 540, 
		499, 9 + (20 * itemuseposition) + (-20 + (20 * itemposition) - bottomoffset) , 2, 2,
		c_white, 1);

		if(itemuseposition == 1){
			itemuseselected = 20;
		}
		else itemuseselected = 0;
		if(itemuseposition == 2){
			iteminspectselected = 20;
		}
		else iteminspectselected = 0;
		if(itemuseposition == 3){
			itemdropselected = 20;
		}
		else itemdropselected = 0;
		draw_text_color(498 + itemuseselected, (itemsloty + 20) + (-20 + (20 * itemposition) - bottomoffset), itemmenu1,
		c, c, c, c, 1);
		draw_text_color(498 + iteminspectselected, (itemsloty + 40) + (-20 + (20 * itemposition) - bottomoffset), itemmenu2,
		c, c, c, c, 1);
		draw_text_color(498 + itemdropselected, (itemsloty + 60) + (-20 + (20 * itemposition) - bottomoffset), itemmenu3,
		c, c, c, c, 1);
			
			
			
		//if(itemuseposition=1){
		//	draw_sprite_part_ext(textui7, image_index,
		//	0, 0, 960, 540, 
		//	0, -20 + (20 * itemposition) - bottomoffset, 2, 2,
		//	c_white, 1);
		//}
		//if(itemuseposition=2){
		//	draw_sprite_part_ext(textui8, image_index,
		//	0, 0, 960, 540, 
		//	0, -20 + (20 * itemposition) - bottomoffset, 2, 2,
		//	c_white, 1);
		//}
		//if(itemuseposition=3){
		//	draw_sprite_part_ext(textui9, image_index,
		//	0, 0, 960, 540, 
		//	0, -20 + (20 * itemposition) - bottomoffset, 2, 2,
		//	c_white, 1);
		//}
	if(keyboard_check_released(vk_enter)){
		ok = 2;
	}
	if(keyboard_check_released(vk_escape)){
		position = 8;
		itemuseposition = 1;
		audio_play_sound(snd_selectback, 3, false);
	}
	if(keyboard_check_pressed(ord("S"))) { 
		itemuseposition = (itemuseposition + 1);
		audio_play_sound(snd_selectchange, 3, false);
	}
	if(keyboard_check_pressed(ord("W"))) {
		itemuseposition = (itemuseposition - 1);
		audio_play_sound(snd_selectchange, 3, false);
	}
	if(itemuseposition == 0) {
		itemuseposition = 3;
	}
	if (itemuseposition == 4) {
		itemuseposition = 1;
	}
	if(keyboard_check_pressed(vk_enter) && itemuseposition == 1 && ok == 2) {
		position = 11
		ok = 1;
		audio_play_sound(snd_select, 3, false);
	}
}
if(position == 11){
	
		draw_sprite_part_ext(itemuse, 0,
		0, 0, 480, 270, 
		0, -20 + (20 * itemposition) - bottomoffset, 2, 2,
		c_white, 1);
		draw_sprite_part_ext(cursor, 0,
		0, 0, 960, 540, 
		499, 9 + (20 * itemuseposition) + (-20 + (20 * itemposition) - bottomoffset) , 2, 2,
		c_white, 1);
		draw_text_color(498 + itemuseselected, (itemsloty + 20) + (-20 + (20 * itemposition) - bottomoffset), itemmenu1,
		c, c, c, c, 1);
		draw_text_color(498 + iteminspectselected, (itemsloty + 40) + (-20 + (20 * itemposition) - bottomoffset), itemmenu2,
		c, c, c, c, 1);
		draw_text_color(498 + itemdropselected, (itemsloty + 60) + (-20 + (20 * itemposition) - bottomoffset), itemmenu3,
		c, c, c, c, 1);
		
	if(partymembers == 1){
		draw_sprite_part_ext(useonwho1, 0,
		0, 0, 480, 270, 
		0, -20 + (20 * itemposition) - bottomoffset, 2, 2,
		c_white, 1);
		
	}
	if(partymembers == 2){
		
	}
	if(partymembers == 3){
		
	}
	if(partymembers == 4){
		
	}
	if(keyboard_check_released(vk_enter)){
	ok = 2;
	}
	if(keyboard_check_released(vk_escape)){
		position = 10;
		itemuseposition = 1;
		ok = 1;
		audio_play_sound(snd_selectback, 3, false);
	}
}