/// @description Insert description here
// You can write your code in this editor
draw_self();

if(plzDraw){
draw_line_color(509,757,xPos,yPos,c_green,c_lime);


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