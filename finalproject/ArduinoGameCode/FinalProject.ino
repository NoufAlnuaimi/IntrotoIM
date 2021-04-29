const int REDLED = 7;
const int BLUELED = 4;
const int YELLOWLED = 2;
int red_light_pin = A3;
int green_light_pin = A4;
int blue_light_pin = A5;
int left = 0;
int right = 0;
int counter = 0;


void RGB_color(int red_light_value, int green_light_value, int blue_light_value)
{
  analogWrite(red_light_pin, red_light_value);
  analogWrite(green_light_pin, green_light_value);
  analogWrite(blue_light_pin, blue_light_value);
}

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
  RGB_color(255, 0, 0); // Red
  delay(800);
  RGB_color(0, 255, 0); // Green
  delay(800);
  RGB_color(0, 0, 255); // Blue
  delay(800);
  RGB_color(255, 255, 125); // Raspberry
  delay(800);
  RGB_color(0, 255, 255); // Cyan
  delay(800);
  RGB_color(255, 0, 255); // Magenta
  delay(800);
  RGB_color(255, 255, 0); // Yellow
  delay(800);
  RGB_color(255, 255, 255); // White
  delay(800);
}

void setup() {
  Serial.begin(9600);
  Serial.println("0,0");
  pinMode(REDLED, OUTPUT);
  pinMode(BLUELED, OUTPUT);
  pinMode(YELLOWLED, OUTPUT);
  pinMode(red_light_pin, OUTPUT);
  pinMode(green_light_pin, OUTPUT);
  pinMode(blue_light_pin, OUTPUT);

}

void loop() {
  while (Serial.available()) {
    char val = Serial.read();
    if ((val == 'F') && (counter <= 0))  {
      firstpattern();
      counter = 0;
    }
    else if ((val == 'S') && (counter <= 0))  {
      secondpattern();
      counter = 0;

    }
    else if ((val == 'T') && (counter <= 0)) {
      thirdpattern();
      counter = 0;
    }
    else if (val == 'W') {//&& (counter <= 0)) {
      winningpattern();
      // counter = 0;
    }
    else if (val = 'L') {
      digitalWrite(REDLED, LOW);
      digitalWrite(BLUELED, LOW);
      digitalWrite(YELLOWLED, LOW);
      digitalWrite(A3, LOW);
      digitalWrite(A4, LOW);
      digitalWrite(A5, LOW);

    }
    right = Serial.parseInt();
    left = Serial.parseInt();
    if (Serial.read() == '\n') {
      int sensor = analogRead(A0);
      delay(1);
      Serial.print(sensor);
      //Serial.print(',');
      Serial.println();
    }
  }

}
