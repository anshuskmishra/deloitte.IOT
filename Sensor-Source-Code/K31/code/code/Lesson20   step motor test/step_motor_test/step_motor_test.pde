/*
* step motor with rotating potentiometer
* (or other sensors) using 0 analog input port
* the arduino IDE used to own Stepper. h library file
 */	 
#include <Stepper.h>	 
// Set the stepper motor rotation step how much is a circle
#define STEPS 100	 
// attached to Set the step motor number and pin
Stepper stepper(STEPS, 8, 9, 10, 11);	 
// Define variables used to store the history reading
int previous = 0;	 
void setup()
{
 // Set the step motor speed of 90 per minute
  stepper.setSpeed(90);
 }	 
 void loop()
 {	  
   int val = analogRead(0); // For sensor readings	 	   
   stepper.step(val - previous);/*Mobile number minus the history reading for the current	*/ 	   
   previous = val;// Save the history reading
 }

