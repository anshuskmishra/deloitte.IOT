const int buttonPin = 4;     // Push pin;
const int speakerPin =  8;      //Buzzer pin;
// variables will change: 
int buttonState = 0;         // Read a value of the button pin 
void setup() 
{ 
  //Set the button pin for the input mode, the buzzer pin for the output mode;
  pinMode(speakerPin, OUTPUT);       
  pinMode(buttonPin, INPUT);      
} 
void loop(){ 
  // Read the key to an initial value, here in the circuit, I was in the default high, so the initial value is high; 
  buttonState = digitalRead(buttonPin); 
  /*If the button is high, then the buzzer does not ring;
Because I just started in the hardware circuit in the initial value is high, so the if condition was established, the buzzer does not ring 
 */ 
  if (buttonState == HIGH) {     
    digitalWrite(speakerPin,LOW);   
  }  
  else { 
   //The value of the button here is low (also when the button is pressed).
    digitalWrite(speakerPin,HIGH); 
  } 
}

