int Led=13;//Define LED interface
int buttonpin=3 //Define key switch sensor interface
int val;//Define numeric variable val
void setup()
{
pinMode(Led,OUTPUT);//Define LED as output interface
pinMode(buttonpin,INPUT);//Define key switch sensor as output interface
}
void loop()
{
val=digitalRead(buttonpin);//Read the value of the value of the digital interface 3 to val
if(val==HIGH)//When the key switch sensor detects the signal, LED flashes
{
digitalWrite(Led,HIGH)
}
else
{
digitalWrite(Led,LOW)
}
}

