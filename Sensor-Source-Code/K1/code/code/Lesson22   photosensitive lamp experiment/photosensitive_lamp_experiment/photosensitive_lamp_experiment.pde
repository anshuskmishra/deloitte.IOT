int potpin=0;//Define the analog interface 0 connect the photosensitive resistance
int ledpin=11;//Define digital interface 11 output PWM adjust LED brightness
int val=0;//Defined variable val
void setup()
{
pinMode(ledpin,OUTPUT);//Define digital interface 11 for output
Serial.begin(9600);//Set the baud rate to 9600
}
void loop()
{
val=analogRead(potpin);//Read the sensor's analog values and assign to val
Serial.println(val);//Display Val variable value
analogWrite(ledpin,val);// Turn on the LED and set the brightness (the maximum value of the PWM output is 255)
delay(10);//Delay 0.01 seconds
}

