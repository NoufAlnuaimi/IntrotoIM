//#define rstPin 7
const int greenpin = 4;
const int bluepin = 5;
const int yellowpin = 7;
const int redpin = 2;
const int switchG = A1;
const int switchB = A0;
const int switchY = A2;
const int redswitch = A5;
int counterblinks = 0;

// Variables will change:
int buttonPushCounter1 = 0;
int buttonPushCounter2 = 0;
int buttonPushCounter3 = 0;
int buttonPushCounter01 = 0;
int buttonPushCounter02 = 0;
int buttonPushCounter03 = 0;// counter for the number of button presses
int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;
//int buttonState01 = 0;
//int buttonState02 = 0;
//int buttonState03 = 0;
int lastButtonState = 0;     // previous state of the button

//class

void setup() {
//  digitalWrite(rstPin, HIGH);
//  pinMode(rstPin, OUTPUT);
  pinMode(redpin, OUTPUT);
  pinMode(bluepin, OUTPUT);
  pinMode(greenpin, OUTPUT);
  pinMode(yellowpin, OUTPUT);

  Serial.begin(9600);
}


void loop() {


  // read the pushbutton input pin:
  buttonState1 = digitalRead(switchG);
  buttonState2 = digitalRead(switchB);
  buttonState3 = digitalRead(switchY);
  // compare the buttonState to its previous state

  if (buttonState1 != lastButtonState) {
    // if the state has changed, increment the counter
    if (buttonState1 == HIGH) {
      // if the current state is HIGH then the button went from off to on:
      buttonPushCounter1++;
      Serial.println("on");
      Serial.print("1number of button pushes: ");
      Serial.println(buttonPushCounter1);
    } else {
      // if the current state is LOW then the button went from on to off:
      Serial.println("off");
    }
    // Delay a little bit to avoid bouncing
    delay(200);
  }
  buttonState1 = lastButtonState;

  if (buttonState2 != lastButtonState) {
    // if the state has changed, increment the counter
    if (buttonState2 == HIGH) {
      // if the current state is HIGH then the button went from off to on:
      buttonPushCounter2++;
      Serial.println("on");
      Serial.print("2number of button pushes: ");
      Serial.println(buttonPushCounter2);
    } else {
      // if the current state is LOW then the button went from on to off:
      Serial.println("off");
    }
    // Delay a little bit to avoid bouncing
    delay(200);
  }
  // save the current state as the last state, for next time through the loop

  buttonState2 = lastButtonState;

  if (buttonState3 != lastButtonState) {
    // if the state has changed, increment the counter
    if (buttonState3 == HIGH) {
      // if the current state is HIGH then the button went from off to on:
      buttonPushCounter3++;
      Serial.println("on");
      Serial.print("3number of button pushes: ");
      Serial.println(buttonPushCounter3);
    } else {
      // if the current state is LOW then the button went from on to off:
      Serial.println("off");
    }
    // Delay a little bit to avoid bouncing
    delay(200);
  }

  // lastButtonState = buttonState3;
  buttonState3 = lastButtonState;

  // turns on the LED every wanted number of button pushes by checking the modulo of the
  // button push counter. the modulo function gives you the remainder of the
  // division of two numbers:
  if ((buttonPushCounter1 % 6 == 0) && (buttonPushCounter2 % 4 == 0) && (buttonPushCounter3 % 4 == 0) && (counterblinks <= 4)) {
    digitalWrite(redpin, HIGH);
  }
  //  else if ((buttonPushCounter3 % 4 == 0) && (counter <= 4)) {
  //digitalWrite(redpin, HIGH);
  //    delay(50);
  //    digitalWrite(redpin, LOW);
  //    delay(50);
  //    digitalWrite(yellowpin, HIGH);
  //    delay(50);
  //    digitalWrite(yellowpin, LOW);
  //    delay(50);
  //    digitalWrite(bluepin, HIGH);
  //    delay(50);
  //    digitalWrite(bluepin, LOW);
  //    delay(50);
  //    digitalWrite(greenpin, HIGH);
  //    delay(50);
  //    digitalWrite(greenpin, LOW);
  //    delay(50);
  //    counter++;
  //
  //  }


  else {
    digitalWrite(redpin, LOW);
//   buttonState1 = 0;
//   buttonState2 = 0;
//   buttonState3 = 0;

  }

    // second pattern:
//    buttonState01 = digitalRead(switchG);
//    buttonState02 = digitalRead(switchB);
//    buttonState03 = digitalRead(switchY);

//  if (buttonState1 != lastButtonState) {
//    // if the state has changed, increment the counter
//    if (buttonState1 == HIGH) {
//        // if the current state is HIGH then the button went from off to on:
//        buttonPushCounter01++;
//        Serial.println("on");
//        Serial.print("1number of button pushes: ");
//        Serial.println(buttonPushCounter01);
//      } else {
//        // if the current state is LOW then the button went from on to off:
//        Serial.println("off");
//      }
//      // Delay a little bit to avoid bouncing
//      delay(200);
//    }
//  buttonState1 = lastButtonState;
//
//  if (buttonState2 != lastButtonState) {
//  // if the state has changed, increment the counter
//  if (buttonState2 == HIGH) {
//      // if the current state is HIGH then the button went from off to on:
//      buttonPushCounter02++;
//      Serial.println("on");
//      Serial.print("2number of button pushes: ");
//      Serial.println(buttonPushCounter02);
//    } else {
//      // if the current state is LOW then the button went from on to off:
//      Serial.println("off");
//    }
//    // Delay a little bit to avoid bouncing
//    delay(200);
//  }
//  // save the current state as the last state, for next time through the loop
//
//  buttonState2 = lastButtonState;
//
//  if (buttonState3 != lastButtonState) {
//  // if the state has changed, increment the counter
//  if (buttonState3 == HIGH) {
//      // if the current state is HIGH then the button went from off to on:
//      buttonPushCounter03++;
//      Serial.println("on");
//      Serial.print("3number of button pushes: ");
//      Serial.println(buttonPushCounter03);
//    } else {
//      // if the current state is LOW then the button went from on to off:
//      Serial.println("off");
//    }
//    // Delay a little bit to avoid bouncing
//    delay(200);
//  }
//
//
//  buttonState3 = lastButtonState;
//
//
//  if ((buttonPushCounter01 % 3 == 0) && (buttonPushCounter02 % 4 == 0) && (buttonPushCounter03 % 2 == 0) && (counterblinks <= 4)) {
//  digitalWrite(redpin, HIGH);
//  }
//  else {
//    digitalWrite(redpin, LOW);
//
//  }

}
