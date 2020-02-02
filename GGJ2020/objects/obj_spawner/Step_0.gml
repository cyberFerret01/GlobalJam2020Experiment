/// @description Insert description here
// You can write your code in this editor
//instance_create_layer()

if(waitTime > 200){
randomX = random_range(15,375)
instance_create_layer(randomX,10,"Instances_1",obj_alien)
waitTime =0;
}
waitTime ++;



