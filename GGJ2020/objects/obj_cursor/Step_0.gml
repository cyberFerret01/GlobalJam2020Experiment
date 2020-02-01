xAxisVal = gamepad_axis_value(global.controllerPort,gp_axislh);




yAxisVal = gamepad_axis_value(global.controllerPort,gp_axislv);
show_debug_message(yAxisVal);

y = y + (1*yAxisVal);
x = x + (1*xAxisVal);

