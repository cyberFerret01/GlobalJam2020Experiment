/// @description Insert description here
// You can write your code in this editor
if(movTimer > 69){
	//x = x + movSpd;
	y = y + movSpd;
	
	movTimer = 0;
}

movTimer++;

if collide == true {
	deleteTimer ++;
	if(deleteTimer >= 70){
		instance_destroy();
		if(obj3Col){
		global.hel --;
		obj3Col = false
		}
	}
}



