import processing.serial.*;
Serial myPort;
int xPos=0;
String Clickhere1 = "Click here!";
String Clickhere2 = "Click here!";


void setup() {
  size(960, 720);
  printArray(Serial.list());
  String portname=Serial.list()[1];
  println(portname);
  myPort = new Serial(this, portname, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');
}
void draw() {
  background(255);
  //purple heart click here: 
  if (mousePressed == true) {
    float distance1 = dist (mouseX, mouseY, 150, 250);
    if (distance1<= 180*sqrt(2)) {
      print ("clicked the box");
      myPort.write('R');
    }
  }
  //pink heart click here:
  if (mousePressed == true) {
    float distance2 = dist (mouseX, mouseY, 630, 250);
    if (distance2<= 180*sqrt(2)) {
      print ("clicked the box");
      myPort.write('G');
    }
  }

  //baby pink block:
  fill(255, 200, 200);
  stroke(255, 200, 200);
  rect(0, 0, 500, 720);
  BabyPink();
  //baby purple block:
  fill(197, 139, 231);
  stroke(197, 139, 231);
  rect(480, -10, 500, 730);
  BabyPurple();
  //baby pink click here:
  fill(255);
  stroke(255, 200, 200);
  rect(150, 250, 180, 180);
  Heart1(190, 220);
  //baby purple click here:
  fill(255);
  stroke(197, 139, 231);
  rect(630, 250, 180, 180);
  Heart2(670, 220);
}
void mouseReleased() { 
  myPort.write('L');
}

void serialEvent(Serial myPort) {
  String s=myPort.readStringUntil('\n');
  s=trim(s);
  if (s!=null) {
    println(s);
    int values[]=int(split(s, ','));
    if (values.length==2) {
      xPos=(int)map(values[0], 0, 1023, 0, width);
    }
  }
  print("0,0");
}
//baby pink heart button
void BabyPink() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 30);
  fill(197, 139, 231);
  text(Clickhere1, 250, 230);
}
//baby purple heart button
void BabyPurple() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 30);
  fill(255, 200, 200);
  text(Clickhere2, 720, 230);
}
void Heart1(int x, int y) 
{
  pushMatrix();
  translate(x, y);

  //move heart
  translate(0, +100);
  smooth();
  noStroke();
  fill(197, 139, 231);
  beginShape();
  vertex(50, 15);
  bezierVertex(50, -5, 90, 5, 50, 40);
  vertex(50, 15);
  bezierVertex(50, -5, 10, 5, 50, 40);
  endShape();
  popMatrix();
}
void Heart2(int x, int y) 
{
  pushMatrix();
  translate(x, y);

  //move heart
  translate(0, +100);
  smooth();
  noStroke();
  fill(255, 200, 200);
  beginShape();
  vertex(50, 15);
  bezierVertex(50, -5, 90, 5, 50, 40);
  vertex(50, 15);
  bezierVertex(50, -5, 10, 5, 50, 40);
  endShape();
  popMatrix();
}
