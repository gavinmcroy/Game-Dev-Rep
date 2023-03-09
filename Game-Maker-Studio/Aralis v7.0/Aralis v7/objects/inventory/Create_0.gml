/// @description Inventory Functionality
randomize();
depth = -1;
//---INVENTORY GAMESTATE
gameState = 3;
cell_size = 32;
//---SHOW INVENTORY ON STARTUP (keep true if debugging)
show_inventory = false;

invui = spr_inventorygui;
partyui = spr_partyinfoui;
itemui = spr_itemlist;
cursor = spr_cursor;
itemuse = spr_itemuse;
useonwho1 = spr_itemuseonwho1;
useonwho2 = spr_itemuseonwho2;
useonwho3 = spr_itemuseonwho3;
useonwho4 = spr_itemuseonwho4;
invuiWidth = 224;
invuiHeight = 288;
invuiXoffset = 32;
invuiYoffset = 14;
position = 1;
itemposition = 1;
itemuseposition = 1;
itembuffer = 25;
bottomoffset = 0;

partymembers = 1;

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
//Sprites for Inventory
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

ds_inventoryitemuse = ds_list_create();
ds_list_add(ds_inventoryitemuse, " ")
ds_list_add(ds_inventoryitemuse, "Use")
ds_list_add(ds_inventoryitemuse, "Inspect")
ds_list_add(ds_inventoryitemuse, "Drop")
ds_list_add(ds_inventoryitemuse, "Use on who?")
itemmenu1 = ds_inventoryitemuse[| 1 ];
itemmenu2 = ds_inventoryitemuse[| 2 ];
itemmenu3 = ds_inventoryitemuse[| 3 ];
useonwho = ds_inventoryitemuse[| 4 ];

ds_characters = ds_list_create();
ds_list_add(ds_characters, " ")
ds_list_add(ds_characters, "Aries")
ds_list_add(ds_characters, "Cedric")
aries = ds_characters[| 1 ];
cedric = ds_characters[| 2 ];

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

itemuseselected = 0;
iteminspectselected = 0;
itemdropselected = 0;

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