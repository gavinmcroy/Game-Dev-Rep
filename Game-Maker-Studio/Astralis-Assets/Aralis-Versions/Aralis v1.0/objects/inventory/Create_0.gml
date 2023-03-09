/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DF31C11
/// @DnDArgument : "code" "randomize();$(13_10)depth = -1;$(13_10)//---INVENTORY GAMESTATE$(13_10)gameState = 3;$(13_10)cell_size = 32;$(13_10)//---SHOW INVENTORY ON STARTUP (keep true if debugging)$(13_10)show_inventory = true;$(13_10)$(13_10)invui = spr_inventorygui;$(13_10)partyui = spr_partyinfoui;$(13_10)itemui = spr_itemlist;$(13_10)cursor = spr_cursor;$(13_10)itemuse = spr_itemuse;$(13_10)invuiWidth = 224;$(13_10)invuiHeight = 288;$(13_10)invuiXoffset = 32;$(13_10)invuiYoffset = 14;$(13_10)position = 1;$(13_10)itemposition = 1;$(13_10)itemuseposition = 1;$(13_10)itembuffer = 25;$(13_10)bottomoffset = 0;$(13_10)$(13_10)ChocolateMedallion = 1;$(13_10)RubbingAlcohol = 2;$(13_10)Antidepressants = 3;$(13_10)$(13_10)metalX = 90;$(13_10)metalY = 468;$(13_10)skullsX = 185;$(13_10)skullsY = 468;$(13_10)itemslotx = 242;$(13_10)itemsloty = 5;$(13_10)$(13_10)input_left = keyboard_check(ord("A"));$(13_10)input_right = keyboard_check(ord("D"));$(13_10)input_up = keyboard_check(ord("W"));$(13_10)input_down = keyboard_check(ord("S"));$(13_10)input_none = keyboard_check(vk_nokey);$(13_10)input_walk = keyboard_check(vk_control);$(13_10)input_run = keyboard_check(vk_shift);$(13_10)$(13_10)textui = spr_menuitemtext;$(13_10)textui2 = spr_menugeartext;$(13_10)textui3 = spr_menuskillstext;$(13_10)textui4 = spr_menujournaltext;$(13_10)textui5 = spr_menusavetext;$(13_10)textui6 = spr_menuexittext;$(13_10)$(13_10)textui7 = spr_menuitemusetext;$(13_10)textui8 = spr_menuiteminspecttext;$(13_10)textui9 = spr_menuitemdroptext;$(13_10)$(13_10)ok = 1;$(13_10)$(13_10)image_index = 0;$(13_10)image_speed = 0.05;$(13_10)$(13_10)//--Inventory$(13_10)itemcount = 24;$(13_10)ds_inventory = ds_list_create();$(13_10)ds_list_add(ds_inventory, " ") //0$(13_10)ds_list_add(ds_inventory, "Chocolate Medallion") //1$(13_10)ds_list_add(ds_inventory, "Antidepressants") //2$(13_10)ds_list_add(ds_inventory, "Rubbing Alcohol") //3$(13_10)ds_list_add(ds_inventory, "Altruism Pamphlet") //4$(13_10)ds_list_add(ds_inventory, "Boiled Ice") //5$(13_10)ds_list_add(ds_inventory, "Vegan Cigarettes") //6$(13_10)ds_list_add(ds_inventory, "Rollercoaster Lube") //7$(13_10)ds_list_add(ds_inventory, "Electric Toothpaste") //8$(13_10)ds_list_add(ds_inventory, "Promiscuous Figurine") //9$(13_10)ds_list_add(ds_inventory, "Raw Sandwich") //10$(13_10)ds_list_add(ds_inventory, "Funeral Invitation") //11$(13_10)ds_list_add(ds_inventory, "Clogged Harmonica") //12$(13_10)ds_list_add(ds_inventory, "Urchin Milk") //13$(13_10)ds_list_add(ds_inventory, "Clarinet Reed")  //14$(13_10)ds_list_add(ds_inventory, "Wet Paper Bag") //15$(13_10)ds_list_add(ds_inventory, "Lightbulb Battery") //16$(13_10)ds_list_add(ds_inventory, "Cryogenic Isolator") //17$(13_10)ds_list_add(ds_inventory, "Wedding Casette") //18$(13_10)ds_list_add(ds_inventory, "Rehabilitation Bible") //19$(13_10)ds_list_add(ds_inventory, "Jar of Shrimp") //20$(13_10)ds_list_add(ds_inventory, "Umbilical Seperator") //21$(13_10)ds_list_add(ds_inventory, "Beryllium Monolith") //22$(13_10)ds_list_add(ds_inventory, "Used Chalk") //23$(13_10)ds_list_add(ds_inventory, "Scuba Contacts") //24$(13_10)$(13_10)//---Random Items (uncomment if debugging)$(13_10)ds_list_shuffle(ds_inventory)$(13_10)$(13_10)itemselected1 = 0;$(13_10)itemselected2 = 0;$(13_10)itemselected3 = 0;$(13_10)itemselected4 = 0;$(13_10)itemselected5 = 0;$(13_10)itemselected6 = 0;$(13_10)itemselected7 = 0;$(13_10)itemselected8 = 0;$(13_10)itemselected9 = 0;$(13_10)itemselected10 = 0;$(13_10)itemselected11 = 0;$(13_10)itemselected12 = 0;$(13_10)itemselected13 = 0;$(13_10)itemselected14 = 0;$(13_10)itemselected15 = 0;$(13_10)itemselected16 = 0;$(13_10)itemselected17 = 0;$(13_10)itemselected18 = 0;$(13_10)itemselected19 = 0;$(13_10)itemselected20 = 0;$(13_10)itemselected21 = 0;$(13_10)itemselected22 = 0;$(13_10)itemselected23 = 0;$(13_10)itemselected24 = 0;$(13_10)$(13_10)itemslot1 = ds_inventory[| 1 ];$(13_10)itemslot2 = ds_inventory[| 2 ];$(13_10)itemslot3 = ds_inventory[| 3 ];$(13_10)itemslot4 = ds_inventory[| 4 ];$(13_10)itemslot5 = ds_inventory[| 5 ];$(13_10)itemslot6 = ds_inventory[| 6 ];$(13_10)itemslot7 = ds_inventory[| 7 ];$(13_10)itemslot8 = ds_inventory[| 8 ];$(13_10)itemslot9 = ds_inventory[| 9 ];$(13_10)itemslot10 = ds_inventory[| 10 ];$(13_10)itemslot11 = ds_inventory[| 11 ];$(13_10)itemslot12 = ds_inventory[| 12 ];$(13_10)itemslot13 = ds_inventory[| 13 ];$(13_10)itemslot14 = ds_inventory[| 14 ];$(13_10)itemslot15 = ds_inventory[| 15 ];$(13_10)itemslot16 = ds_inventory[| 16 ];$(13_10)itemslot17 = ds_inventory[| 17 ];$(13_10)itemslot18 = ds_inventory[| 18 ];$(13_10)itemslot19 = ds_inventory[| 19 ];$(13_10)itemslot20 = ds_inventory[| 20 ];$(13_10)itemslot21 = ds_inventory[| 21 ];$(13_10)itemslot22 = ds_inventory[| 22 ];$(13_10)itemslot23 = ds_inventory[| 23 ];$(13_10)itemslot24 = ds_inventory[| 24 ];$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)ds_currency = ds_grid_create(2, 2);$(13_10)$(13_10)ds_currency[# 0, 0] = "Metal";$(13_10)ds_currency[# 0, 1] = 10;$(13_10)$(13_10)ds_currency[# 1, 0] = "Skulls";$(13_10)ds_currency[# 1, 1] = 0;$(13_10)$(13_10)$(13_10)$(13_10)//--Items$(13_10)$(13_10)$(13_10)$(13_10)"
randomize();
depth = -1;
//---INVENTORY GAMESTATE
gameState = 3;
cell_size = 32;
//---SHOW INVENTORY ON STARTUP (keep true if debugging)
show_inventory = true;

invui = spr_inventorygui;
partyui = spr_partyinfoui;
itemui = spr_itemlist;
cursor = spr_cursor;
itemuse = spr_itemuse;
invuiWidth = 224;
invuiHeight = 288;
invuiXoffset = 32;
invuiYoffset = 14;
position = 1;
itemposition = 1;
itemuseposition = 1;
itembuffer = 25;
bottomoffset = 0;

ChocolateMedallion = 1;
RubbingAlcohol = 2;
Antidepressants = 3;

metalX = 90;
metalY = 468;
skullsX = 185;
skullsY = 468;
itemslotx = 242;
itemsloty = 5;

input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_none = keyboard_check(vk_nokey);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

textui = spr_menuitemtext;
textui2 = spr_menugeartext;
textui3 = spr_menuskillstext;
textui4 = spr_menujournaltext;
textui5 = spr_menusavetext;
textui6 = spr_menuexittext;

textui7 = spr_menuitemusetext;
textui8 = spr_menuiteminspecttext;
textui9 = spr_menuitemdroptext;

ok = 1;

image_index = 0;
image_speed = 0.05;

//--Inventory
itemcount = 24;
ds_inventory = ds_list_create();
ds_list_add(ds_inventory, " ") //0
ds_list_add(ds_inventory, "Chocolate Medallion") //1
ds_list_add(ds_inventory, "Antidepressants") //2
ds_list_add(ds_inventory, "Rubbing Alcohol") //3
ds_list_add(ds_inventory, "Altruism Pamphlet") //4
ds_list_add(ds_inventory, "Boiled Ice") //5
ds_list_add(ds_inventory, "Vegan Cigarettes") //6
ds_list_add(ds_inventory, "Rollercoaster Lube") //7
ds_list_add(ds_inventory, "Electric Toothpaste") //8
ds_list_add(ds_inventory, "Promiscuous Figurine") //9
ds_list_add(ds_inventory, "Raw Sandwich") //10
ds_list_add(ds_inventory, "Funeral Invitation") //11
ds_list_add(ds_inventory, "Clogged Harmonica") //12
ds_list_add(ds_inventory, "Urchin Milk") //13
ds_list_add(ds_inventory, "Clarinet Reed")  //14
ds_list_add(ds_inventory, "Wet Paper Bag") //15
ds_list_add(ds_inventory, "Lightbulb Battery") //16
ds_list_add(ds_inventory, "Cryogenic Isolator") //17
ds_list_add(ds_inventory, "Wedding Casette") //18
ds_list_add(ds_inventory, "Rehabilitation Bible") //19
ds_list_add(ds_inventory, "Jar of Shrimp") //20
ds_list_add(ds_inventory, "Umbilical Seperator") //21
ds_list_add(ds_inventory, "Beryllium Monolith") //22
ds_list_add(ds_inventory, "Used Chalk") //23
ds_list_add(ds_inventory, "Scuba Contacts") //24

//---Random Items (uncomment if debugging)
ds_list_shuffle(ds_inventory)

itemselected1 = 0;
itemselected2 = 0;
itemselected3 = 0;
itemselected4 = 0;
itemselected5 = 0;
itemselected6 = 0;
itemselected7 = 0;
itemselected8 = 0;
itemselected9 = 0;
itemselected10 = 0;
itemselected11 = 0;
itemselected12 = 0;
itemselected13 = 0;
itemselected14 = 0;
itemselected15 = 0;
itemselected16 = 0;
itemselected17 = 0;
itemselected18 = 0;
itemselected19 = 0;
itemselected20 = 0;
itemselected21 = 0;
itemselected22 = 0;
itemselected23 = 0;
itemselected24 = 0;

itemslot1 = ds_inventory[| 1 ];
itemslot2 = ds_inventory[| 2 ];
itemslot3 = ds_inventory[| 3 ];
itemslot4 = ds_inventory[| 4 ];
itemslot5 = ds_inventory[| 5 ];
itemslot6 = ds_inventory[| 6 ];
itemslot7 = ds_inventory[| 7 ];
itemslot8 = ds_inventory[| 8 ];
itemslot9 = ds_inventory[| 9 ];
itemslot10 = ds_inventory[| 10 ];
itemslot11 = ds_inventory[| 11 ];
itemslot12 = ds_inventory[| 12 ];
itemslot13 = ds_inventory[| 13 ];
itemslot14 = ds_inventory[| 14 ];
itemslot15 = ds_inventory[| 15 ];
itemslot16 = ds_inventory[| 16 ];
itemslot17 = ds_inventory[| 17 ];
itemslot18 = ds_inventory[| 18 ];
itemslot19 = ds_inventory[| 19 ];
itemslot20 = ds_inventory[| 20 ];
itemslot21 = ds_inventory[| 21 ];
itemslot22 = ds_inventory[| 22 ];
itemslot23 = ds_inventory[| 23 ];
itemslot24 = ds_inventory[| 24 ];




ds_currency = ds_grid_create(2, 2);

ds_currency[# 0, 0] = "Metal";
ds_currency[# 0, 1] = 10;

ds_currency[# 1, 0] = "Skulls";
ds_currency[# 1, 1] = 0;



//--Items