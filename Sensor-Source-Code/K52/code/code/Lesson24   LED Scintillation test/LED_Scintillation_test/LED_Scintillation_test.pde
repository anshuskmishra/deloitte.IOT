int ledPin = 10; //Define number 10 interface
void setup()
{
pinMode(ledPin, OUTPUT);//The definition of small interface for output interface
}
void loop()
{
digitalWrite(ledPin, HIGH); //Light the lamp
delay(1000); //Delay 1 seconds
digitalWrite(ledPin, LOW); //Lights out
delay(1000); //Delay 1 seconds
}

