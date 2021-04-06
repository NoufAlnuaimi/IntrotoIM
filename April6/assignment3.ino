#include "pitches.h"
#include <Servo.h>
class Belltime
{
  Servo servo;
  int pos;
  int increment;
  int updateInterval;
  unsigned long lastUpdated;

  public:
  Belltime (int interval)
  {
    updateInterval = interval;
    increment = 1;
  }
  void Attach(int pin)
  {
    servo.attach(pin);
  }
  void Detach()
  {
    servo.detach();
  }
  void Update()
  {
    if((millis() - lastUpdated)> updateInterval)
    {
      lastUpdated = millis();
      pos += increment;
      servo.write(pos);
      Serial.println(pos);
      if((pos >= 45)||(pos<=0))
      {
        increment=-increment;
      }
    }
  }
};

const int GREENLED = 2;
const int YELLOWLED = 5;
const int BLUELED = 4;
const int REDLED = 7;
const int GREENSWITCHPIN = A2;
const int YELLOWSWITCHPIN = A1;
const int BLUESWITCHPIN = A0;
const int REDSWITCHPIN = A3;

int firstnote = NOTE_C4;
int secondnote = NOTE_G3;
int thirdnote = NOTE_A3;
int fourthnote = NOTE_F3;
int pos = 0;


unsigned long previousMillis = 0;

Belltime Bell (12);

void setup() {
  pinMode(GREENLED, OUTPUT);
  pinMode(YELLOWLED, OUTPUT);
  pinMode(BLUELED, OUTPUT);
  pinMode(REDLED, OUTPUT);
  Bell.Attach(12);
  Serial.begin(9600);

}

void loop() {
 
  //Green
  int switchPositionG = digitalRead(A2);
  if (switchPositionG == HIGH) {
    tone(8, firstnote, 200);
    digitalWrite(GREENLED, HIGH);

  }
  else {
    digitalWrite(BLUELED, LOW);
    digitalWrite(YELLOWLED, LOW);
    digitalWrite(REDLED, LOW);

  }

  //Yellow
  int switchPositionY = digitalRead(A1);
  if (switchPositionY == HIGH) {
    tone(8, secondnote, 200);
    digitalWrite(YELLOWLED, HIGH);

  }
  else {
    digitalWrite(BLUELED, LOW);
    digitalWrite(GREENLED, LOW);
    digitalWrite(REDLED, LOW);

  }
  //Blue
  int switchPositionB = digitalRead(A0);
  if (switchPositionB == HIGH) {
    tone(8, thirdnote, 200);
    digitalWrite(BLUELED, HIGH);

  }
  else {
    digitalWrite(YELLOWLED, LOW);
    digitalWrite(GREENLED, LOW);
    digitalWrite(REDLED, LOW);

  }
  //Red
  int switchPositionR = digitalRead(A3);
  if (switchPositionR == HIGH) {
    tone(8, fourthnote, 200);
    digitalWrite(REDLED, HIGH);

  }
  else {
    digitalWrite(YELLOWLED, LOW);
    digitalWrite(GREENLED, LOW);
    digitalWrite(BLUELED, LOW);

  }

  //Bell
Bell.Update();  


}
