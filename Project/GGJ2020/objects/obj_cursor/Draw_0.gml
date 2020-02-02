/// @description Insert description here
// You can write your code in this editor
draw_self();

if(repair){
draw_sprite_ext(spr_wrench,image_index,222,698,1,1,0,c_yellow,1)
}

if(plzDraw){

if(change == false){
draw_line_color(62, 701,xPos,yPos,c_green,c_lime);
}
if(change == true){
draw_line_color(286, 701,xPos,yPos,c_green,c_lime);
}

collisionID = collision_line(509,757,xPos,yPos,obj_alien,0,0);



if(collisionID){


	collisionID.sprite_index = spr_explosion_strip2
	deleteTimeoutStart = true;
}
}


if(deleteTimeoutStart){
deleteTimer ++;

	if(deleteTimer > 50){
	
	instance_destroy((collisionID));
	deleteTimeoutStart = false;
	deleteTimer =0;
	}


}


