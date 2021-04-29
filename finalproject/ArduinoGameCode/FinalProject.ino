const int REDLED = 7;
const int BLUELED = 4;
const int YELLOWLED = 2;
int left = 0;
int right = 0;
int counter = 0;

void firstpattern() {
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  digitalWrite(REDLED, HIGH);
  delay(200);
  digitalWrite(REDLED, LOW);
  delay(200);
  digitalWrite(REDLED, HIGH);
  delay(200);
  digitalWrite(REDLED, LOW);
  delay(200);
  counter++;
}
void secondpattern() {
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  digitalWrite(REDLED, HIGH);
  delay(200);
  digitalWrite(REDLED, LOW);
  delay(200);
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  counter++;
}
void thirdpattern() {
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  digitalWrite(REDLED, HIGH);
  delay(200);
  digitalWrite(REDLED, LOW);
  delay(200);
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  digitalWrite(YELLOWLED, HIGH);
  delay(200);
  digitalWrite(YELLOWLED, LOW);
  delay(200);
  digitalWrite(REDLED, HIGH);
  delay(200);
  digitalWrite(REDLED, LOW);
  delay(200);
  digitalWrite(BLUELED, HIGH);
  delay(200);
  digitalWrite(BLUELED, LOW);
  delay(200);
  counter++;
}
void winningpattern() {

}

void setup() {
  Serial.begin(9600);
  Serial.println("0,0");
  pinMode(REDLED, OUTPUT);
  pinMode(BLUELED, OUTPUT);
  pinMode(YELLOWLED, OUTPUT);


}

void loop() {
  while (Serial.available()) {
    char val = Serial.read();
    if ((val == 'F') && (counter <= 0)) {
      firstpattern();
    }
    else if ((val == 'S') && (counter <= 0)) {
      secondpattern();
    }
    else if ((val == 'T') && (counter <= 0)) {
      thirdpattern();
    }
    else if (val = 'L') {
      digitalWrite(REDLED, LOW);
      digitalWrite(BLUELED, LOW);
      digitalWrite(YELLOWLED, LOW);
    }
     while (Serial.available()) {
    right = Serial.parseInt();
    left = Serial.parseInt();
   if (Serial.read() == '\n') {
      //determine the sensors potentiometer
      int sensor = analogRead(A0);
      delay(1);
      Serial.print(sensor);
      Serial.print(',');
   }
     }
    }
  }
