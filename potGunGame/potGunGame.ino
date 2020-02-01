
#include <Joystick.h>
#define numButt 3

Joystick_ Joystick;
  

 int oldXcor = 9999;
 int oldYcor = 9999;
 long states = 0;

void setup() {
 Serial.begin(9600);
 Joystick.begin();
 Joystick.setXAxisRange(0,1023);
 Joystick.setYAxisRange(0,1023);

  pinMode(7,INPUT_PULLUP);
  pinMode(8,INPUT_PULLUP);
  pinMode(9,INPUT_PULLUP);  

}

long oldInput = 0;

void loop() {

Joystick.sendState();

  
//  Serial.println(analogRead(A1));

  int Xcor = analogRead(A1);
  int Ycor = analogRead(A2);
  
      Serial.println(oldInput,BIN);
  for(int button = 7; button < 10; button++){
    
    int input = digitalRead(button);

      Serial.print(input); 
            Serial.println(" ");

    if(input != bitRead(oldInput, (button -7))){

      Joystick.setButton((button-7), input);
     

      if(input == 0){

        bitWrite(oldInput,(button-7),0);
        
        }else{

          bitWrite(oldInput,(button-7),1);
          
          }
      
      }
    
    
    }


  if(Xcor != oldXcor){
  Joystick.setXAxis(Xcor);
  }

  if(Ycor != oldYcor){
  Joystick.setYAxis(Ycor);
 // Serial.println(Ycor);
  }

  delay(50);
}
