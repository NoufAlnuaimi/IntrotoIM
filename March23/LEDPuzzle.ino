const int REDLED = 4;
const int GREENLED = 6;
const int YELLOWLED = 7;
const int SWITCHPINYELLOW = A2;
const int SWITCHPINGREEN = A3;
const int SWITCHPINBLUE = A1;

int pressCnt = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(REDLED, OUTPUT);
  pinMode(GREENLED, OUTPUT);
  pinMode(YELLOWLED, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int switchPositionY = digitalRead(A2);
  int switchPositionG = digitalRead(A3);
  int switchPositionB = digitalRead(A1);

  //
  digitalWrite(7, HIGH);
  digitalWrite(6, HIGH);

//Yellow button

  if (switchPositionY == HIGH) {
    digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  } else  {
    // turn the LED off by making the voltage LOW
    digitalWrite(4, LOW);
  }
  //Green button
  
  if (switchPositionG == HIGH) {
    digitalWrite(4, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  } else  {
    // turn the LED off by making the voltage LOW
    digitalWrite(4, LOW);
  }
  //Blue button that turns green and yelow LED lights off
  if (switchPositionB == HIGH) {
    pressCnt++;
    digitalWrite(4, LOW); 
    digitalWrite(7, pressCnt % 5);
    digitalWrite(6, pressCnt % 5);
     delay(1000);
  }
}
