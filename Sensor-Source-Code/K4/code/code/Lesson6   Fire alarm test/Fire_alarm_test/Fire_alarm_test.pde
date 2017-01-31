 int flame=A5;//Define flame interface
 int Beep=8;//Define buzzer interface
 int val=0;//Define numeric variables 

 void setup()   
{ pinMode(Beep,OUTPUT);//Define Beep as output interface 
 pinMode(flame,INPUT);//Define flame as input interface
  Serial.begin(9600);//Set the baud rate is 9600
 } 

  void loop()
 { 
val=analogRead(flame);//Simulated values of the flame sensor
 Serial.println(val);//Output analog value, and print it out 
 if(val>=600)//When the analog value is greater than 600 when the buzzer sounds  
{ digitalWrite(Beep,HIGH);
 }
 else { digitalWrite(Beep,LOW); 
} 
}


