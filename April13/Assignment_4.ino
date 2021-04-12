int counter = 0;
int winnercounter = 0;
int PinkpressCnt = 0;
int PurplepressCnt = 0;
boolean Pink = false;
boolean Purple = false;
void firstpattern() {
  digitalWrite(4, HIGH);
  delay(200);
  digitalWrite(4, LOW);
  delay(200);
  digitalWrite(4, HIGH);
  delay(200);
  digitalWrite(4, LOW);
  delay(200);
  digitalWrite(5, HIGH);
  delay(200);
  digitalWrite(5, LOW);
  delay(200);
  digitalWrite(7, HIGH);
  delay(200);
  digitalWrite(7, LOW);
  delay(200);
  counter++;
}
void secondpatter() {
  digitalWrite(4, HIGH);
  delay(200);
  digitalWrite(4, LOW);
  delay(200);
  digitalWrite(5, HIGH);
  delay(200);
  digitalWrite(5, LOW);
  delay(200);
  digitalWrite(5, HIGH);
  delay(200);
  digitalWrite(5, LOW);
  delay(200);
  digitalWrite(7, HIGH);
  delay(200);
  digitalWrite(7, LOW);
  delay(200);
  counter++;
}
void setup() {
  Serial.begin(9600);
  Serial.println("0,0");
  pinMode(2, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(7, OUTPUT);
}

void loop() {
  int switchPositionG = digitalRead(A2);
  int switchPositionB = digitalRead(A1);
  int switchPositionY = digitalRead(A3);
  if (Serial.available()) {
    char val = Serial.read();

    if ((val == 'R') && (counter <= 2)) {
      firstpattern();
    }

    else if ((val == 'G') && (counter <= 5)) {
      secondpatter();
    }
    else if (val = 'L') {
      digitalWrite(4, LOW);
      digitalWrite(5, LOW);
      digitalWrite(7, LOW);
    }


}
    delay(1);


    Serial.print(',');

  }
