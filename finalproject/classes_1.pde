Firstgame firstgame;
PImage door;
PImage redLED;
PImage yellowLED;
PImage blueLED;
boolean firstdoor;

void setup() {
  size(960, 520);
  background(0);
  firstgame = new Firstgame();
  door = loadImage("door.png");
  redLED = loadImage("redLED.PNG");
  yellowLED = loadImage("yellowLED.PNG");
  blueLED = loadImage("blueLED.PNG");
}
void draw() {

  firstgame.display();
  hidingWall1();
  hidingWall2();
  Firstdoor();
}




class Firstgame {
  void display() {
    stroke(0);
    fill(0);
    rect(0, 0, 960, 520);
    Mazewalls();
  }
}

void Mazewalls() {
  //First Part
  fill(255);
  stroke(255);
  rect(100, 0, 50, 100);
  rect(220, 0, 50, 240);
  rect(0, 200, 200, 80);
  rect(80, 120, 180, 60);
  rect(50, 600, 300, -200);
  rect(250, 275, 250, 100);
  //Second Part
  rect(370, 0, 50, 250);
  rect(520, 600, 100, -400);
  rect(500, 100, 230, 80);
  rect(680, 410, 200, 80);
  rect(670, 330, 300, 50);
  //Third Part
  rect(900, 600, 100, -400);
  rect(750, -100, 100, 400);

  //doors:
  stroke(128, 64, 0);
  fill(128, 64, 0);
  rect(300, 215, 40, 60);
  rect(640, 415, 40, 60);
  rect(920, 5, 40, 60);
}
void hidingWall1() {
  stroke(0);
  fill(0);
  rect(350, 0, 330, 520);
}
void hidingWall2() {
  stroke(0);
  fill(0);
  rect(680, 0, 330, 520);
}
void Firstdoor() {
  image(door, 285, 200, 70, 90);
}
void mouseClicked() {
  float distance1 = dist (mouseX, mouseY, 300, 215);
  if (distance1<=40*sqrt(2)) {
    print ("clicked the box");
    fill(255, 0, 0);
    rect(width/2, height/2, 260, 120);
     firstdoor = true;
  }
}
