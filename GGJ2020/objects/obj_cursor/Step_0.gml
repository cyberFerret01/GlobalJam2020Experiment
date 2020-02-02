xAxisVal = gamepad_axis_value(global.controllerPort,gp_axislh);
yAxisVal = gamepad_axis_value(global.controllerPort,gp_axisrv);

yStop = gamepad_button_value(global.controllerPort, gp_face1);
xStop = gamepad_button_value(global.controllerPort, gp_face2); 
fire = gamepad_button_value(global.controllerPort, gp_face3);

x = x + (movX*xAxisVal);
y = y + (movY*yAxisVal);

if(xStop) && (counterX > 60){

if(stateX){

movX = 1;
stateX = false;

}else{

movX =0;
stateX = true;

}

counterX = 0;
}

if(yStop) && (counterY > 60){

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
