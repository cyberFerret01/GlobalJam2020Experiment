
#include <Joystick.h>

Joystick_ Joystick(JOYSTICK_DEFAULT_REPORT_ID,JOYSTICK_TYPE_GAMEPAD,
    0, 0,                  
  true, false, false,    
  false, false, false,   
  false, false,          
  false, false, false 
  );
  

 int oldXcor = 9999;

void setup() {
 Serial.begin(9600);
 Joystick.begin();
 Joystick.setXAxisRange(0,1023);


}

void loop() {
  Serial.println(analogRead(A1));

  int Xcor = analogRead(A1);

  if(Xcor != oldXcor){
  Joystick.setXAxis(Xcor);
  }
}
