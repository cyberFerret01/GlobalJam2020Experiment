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

if(fire) && (counterF > 60){
 
show_debug_message("jnfgkbn");
counterF = 0;
}

counterX++;
counterY++;
counterF++;