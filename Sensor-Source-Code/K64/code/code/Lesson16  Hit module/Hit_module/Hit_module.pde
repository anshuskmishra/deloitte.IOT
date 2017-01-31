int Led=13;//Define LED interface
int Shock=3//Define vibration sensor interface
int val;//Define numeric variable val
void setup()
{
pinMode(Led,OUTPUT);//Define LED as output interface
pinMode(Shock,INPUT);//Define vibration sensor as output interface
}
void loop()
{
val=digitalRead(Shock);//Read the value of the value of the digital interface 3 to val
if(val==HIGH)//When the vibration sensor detects the signal, the LED flashes
{
digitalWrite(Led,LOW);
}
else
{
digitalWrite(Led,HIGH);
}
}

