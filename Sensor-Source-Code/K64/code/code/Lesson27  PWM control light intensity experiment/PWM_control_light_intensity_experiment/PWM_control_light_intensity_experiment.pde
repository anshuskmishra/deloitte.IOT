int potpin=0;// Define 0 simulation interface
int ledpin=11;// Define the digital interface 11 (PWM output)
int val=0;// Temporary variables from the sensor value
void setup()
{
pinMode(ledpin,OUTPUT);// 11 for the output definition digital interface
Serial.begin(9600);// Set the baud rate for 9600
}
void loop()
{
val=analogRead(potpin);/*Read sensor simulation values and assign a value to the val */
Serial.println(val);// According to val variable
analogWrite(ledpin,val/4); /*open the LED brightness and set (PWM lose __________ a maximum 255)*/
delay(10);// Delay of 0.01 seconds
}

