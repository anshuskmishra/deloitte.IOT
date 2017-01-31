int servopin=9;/* Define the digital interface connected servo servo signal lines*/
 int myangle;// Angle variables
int pulsewidth;// Pulse width variables
int val;
void servopulse(int servopin,int myangle)// Define a pulse function
{
pulsewidth=(myangle*11)+500;/* Angle can be converted to pulse width value of 500-2480*/
digitalWrite(servopin,HIGH);// The steering gear interface level high
delayMicroseconds(pulsewidth);/* The number of milliseconds delay pulse width values*/
digitalWrite(servopin,LOW);// The steering gear interface level to low
delay(20-pulsewidth/1000);
}
void setup()
{
pinMode(servopin,OUTPUT);/* Set the steering gear interface for the output interface*/
Serial.begin(9600);// Connected to the serial port, baud rate to 9600
Serial.println("servo=o_seral_simple ready" ) ;
}
void loop()/*Will change the number 0 to 9 as the Angle of 0 to 180, and let the number of LED flashing a corresponding number*/
{
val=Serial.read();//Read the value of the serial port
if(val>'0'&&val<='9')
{
val=val-'0';// Numerical characteristics can be converted to a variable
val=val*(180/9);// Converts Numbers into perspective
Serial.print("moving servo to ");
Serial.print(val,DEC);
Serial.println();
for(int i=0;i<=50;i++) /*Given enough time to make it to the steering gear specified Angle*/
{
servopulse(servopin,val);// Reference pulse function
}
}
}

