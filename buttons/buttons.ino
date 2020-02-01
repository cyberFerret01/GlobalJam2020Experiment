#include <Joystick.h>

// Create the Joystick
Joystick_ Joystick;

// Constant that maps the phyical pin to the joystick button.
const int pinToButtonMap = 9;

void setup() {
  // Initialize Button Pins
  pinMode(9, INPUT_PULLUP);
   pinMode(8, INPUT_PULLUP);
    pinMode(7, INPUT_PULLUP);

  // Initialize Joystick Library
  Joystick.begin();
}

// Last state of the button
int lastButtonState = 0;

void loop() {

  // Read pin values
  for (int i = 7; i < 10; i++){
  int currentButtonState = !digitalRead(i);
  //if (currentButtonState != lastButtonState){
    Joystick.setButton((i-7), currentButtonState);
    lastButtonState = currentButtonState;
  //}
  }
  delay(50);
  
}
