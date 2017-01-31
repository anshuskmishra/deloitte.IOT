int data = 2;//74HC595  14 pin data input pin SI
int clock = 5;//74HC595 11 pin clock line SCK
int latch = 4;//74hc595 12 pin output memory latch line RCK
int ledState = 0;
const int ON = HIGH;
const int OFF = LOW;
void setup()
{
pinMode(data, OUTPUT);
pinMode(clock, OUTPUT);
pinMode(latch, OUTPUT);
}
void loop()
{
for(int i = 0; i < 256; i++)
{
updateLEDs(i);
delay(500);
}
}
void updateLEDs(int value)
{
digitalWrite(latch, LOW);//
shiftOut(data, clock, MSBFIRST, ~value);//Serial data output, high priority

digitalWrite(latch, HIGH);//Latch
}

