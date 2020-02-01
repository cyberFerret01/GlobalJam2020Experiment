axisVal = gamepad_axis_value(global.controllerPort,gp_axislh);
show_debug_message(axisVal);

x = x + (1*axisVal);