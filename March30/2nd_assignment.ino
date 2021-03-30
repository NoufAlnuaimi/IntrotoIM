const int GREENLED = 8;
const int REDLED = 11;
const int YELLOWLED = 12;
const int BLUELED = 13;
const int GREENSWITCHPIN = A3;
int counter = 0;
int pressCnt = 0;
boolean Yellow = false;
boolean Red = false;
boolean Blue = false;


int brightness = 0;
int ldrbrightness1 = 800;
int ldrbrightness2 = 700;
int ldrbrightness3 = 600;
void setup() {
  // put your setup code here, to run once:
  pinMode(GREENLED, OUTPUT);
  pinMode(REDLED, OUTPUT);
  pinMode(YELLOWLED, OUTPUT);
  pinMode(BLUELED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  brightness = analogRead(A0);
  int switchPositionG = digitalRead(A3);
  Serial.println(brightness);

  //Yellow LED:
  if ((brightness < ldrbrightness1) && (counter <= 2)) {
    digitalWrite(YELLOWLED, HIGH);
    delay(200);
    digitalWrite(YELLOWLED, LOW);
    delay(200);
    counter++;
  }
  else if ((brightness < ldrbrightness2) && (counter <= 4)) {
    digitalWrite(YELLOWLED, LOW);
    digitalWrite(REDLED, HIGH);
    delay(200);
    digitalWrite(REDLED, LOW);
    delay(200);
    counter++;
  }
  else if ((brightness < ldrbrightness3) && (counter <= 7)) {
    digitalWrite(REDLED, LOW);
    digitalWrite(BLUELED, HIGH);
    delay(200);
    digitalWrite(BLUELED, LOW);
    delay(200);
    counter++;
  }

  // switch:
  if (switchPositionG == HIGH) {
    pressCnt++;
    digitalWrite(8, !(pressCnt % 8));
    delay(200);
    digitalWrite(11, !(pressCnt % 8));
    delay(100);
    digitalWrite(11, LOW);
    delay(100);
    digitalWrite(12, !(pressCnt % 8));
    delay(100);
    digitalWrite(12, LOW);
    delay(100);
    digitalWrite(13, !(pressCnt % 8));
    delay(100);
    digitalWrite(13, LOW);
    delay(100);
  }
  else {
    digitalWrite(8, LOW);
  }
}
