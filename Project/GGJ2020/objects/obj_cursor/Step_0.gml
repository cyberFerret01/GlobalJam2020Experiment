xAxisVal = gamepad_axis_value(global.controllerPort,gp_axislh);
yAxisVal = gamepad_axis_value(global.controllerPort,gp_axisrv);

yStop = gamepad_button_value(global.controllerPort, gp_face1);
xStop = gamepad_button_value(global.controllerPort, gp_face2); 
repair = gamepad_button_value(global.controllerPort,gp_face4);
fire = gamepad_button_value(global.controllerPort, gp_face3);



if(repair) && (counterF > 40){
counterF = 0;
repCount++
show_debug_message(repCount);

if(repCount >=5){
if(global.hel <3){
global.hel++;
}
repCount =0
//?
}

}


x = x + (movX*xAxisVal);
y = y + (movY*yAxisVal);

if(y > 615-16){

y = 615-16;

}

if(x > 384-16){

x = 384-16;

}

if(y < 16){

y = 16;

}

if(x <16){

x = 16;

}

if(xStop) && (counterX > 15){

if(stateX){

movX = 1;
stateX = false;

}else{

movX =0;
stateX = true;

}

counterX = 0;
}

if(yStop) && (counterY > 15){

if(stateY){

movY = 1;
stateY = false;

}else{

movY =0;
stateY = true;

}

counterY = 0;
}

if(fire) && (counterF > 60) && (counterKeepTime <= 0){

plzDraw = true
counterKeepTime = 75;
counterF = 0;
xPos = x;
yPos = y;

if(place_meeting(x,y,obj_alien)){
inX = x;
inY = y;
}

if(inX != 99999 && inY != 9999999){
oWo = instance_place(inX,inY, obj_alien);
xPos = oWo.x;
yPos = oWo.y;
}

change = !change;

}



if(counterKeepTime == 0){
plzDraw = false;
inX = 99999;
inY = 9999999;
}

counterX++;
counterY++;
counterF++;
counterKeepTime--;
