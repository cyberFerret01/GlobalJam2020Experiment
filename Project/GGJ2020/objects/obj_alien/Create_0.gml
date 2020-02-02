/// @description Insert description here
// You can write your code in this editor
movSpd = random_range(2,8);
movTimer = 70;

deleteTimeoutStart = false;
deleteTimer  = 0;

collide = false;
list = ds_list_create();
obj3Col = false