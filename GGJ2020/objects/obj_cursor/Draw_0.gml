/// @description Insert description here
// You can write your code in this editor
draw_self();

if(plzDraw){
draw_line_color(509,757,xPos,yPos,c_green,c_lime);


obj_collision = collision_line(509,757,xPos,yPos,obj_alien,0,0);




instance_destroy(obj_collision)
}