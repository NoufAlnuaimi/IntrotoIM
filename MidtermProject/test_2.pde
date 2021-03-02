boolean proceedToPlay = false;
Gameoverpage G;
String lostmessage = "oops you touched the walls too many times,,,Try again!";
String keymessage = "(Press any key)";
String startingtext = "start";
PImage img;
//score:
int livescount = 5;
String lives = "Lives";
boolean lostgame = false;
Startpage s;
purplebox p;
limegreenbox lg;
babypinkbox bp;
babypurplebox bl;
babyyellowbox by;
Restarting r;
float treasureboxX1, treasureboxY1, treasureboxsizeX, treasureboxsizeY, rectanglesize;
boolean getfirstclue = false;
boolean getsecondclue = false;
boolean getthirdclue = false;
boolean getfourthclue = false;
boolean getfifthclue = false;
boolean getlastclue = false;
String instructions = "Hello, welcome to this maze game. Simply go to the treasure boxes, collect clues, follow them, and well,,,,bon voyage";
String startMessage= "Start";
String gamemainmessage= "Starting game...";
String firstclue= "50% red + 50% blue";
String secondclue= "70% yellow + 30% blue";
String thirdclue= "50% white + 50% red";
String fourthclue= "30% blue + 30% red + 40% white";
String fifthclue= "50% white + 50% yellow";
String lastclue= "YOU WON!";
int counter;
PImage treasurebox0;
PImage treasurebox1;
PImage treasurebox2;
PImage treasurebox3;
PImage treasurebox4;
PImage treasurebox5;
PImage treasurebox6;
PImage treasurebox7;
PImage treasurebox8;
PImage treasurebox9;
PImage treasurebox10;
PImage treasurebox11;
PImage treasurebox12;
PImage treasurebox13;
PImage treasurebox14;
PImage treasurebox15;
PImage giftbox1;
import processing.sound.*;
SoundFile file;

void setup() {
  size(1000, 800);
  background(0);
  s = new Startpage();
  img = loadImage("face.png");
  G = new Gameoverpage();
  treasurebox0 = loadImage("treasurebox.png");
  treasurebox1 = loadImage("treasurebox.png");
  treasurebox2 = loadImage("treasurebox.png");
  treasurebox3 = loadImage("treasurebox.png");
  treasurebox4 = loadImage("treasurebox.png");
  treasurebox5 = loadImage("treasurebox.png");
  treasurebox6 = loadImage("treasurebox.png");
  treasurebox7 = loadImage("treasurebox.png");
  treasurebox8 = loadImage("treasurebox.png");
  treasurebox9 = loadImage("treasurebox.png");
  treasurebox10 = loadImage("treasurebox.png");
  treasurebox11 = loadImage("treasurebox.png");
  treasurebox12 = loadImage("treasurebox.png");
  treasurebox13 = loadImage("treasurebox.png");
  treasurebox14 = loadImage("treasurebox.png");
  treasurebox15 = loadImage("treasurebox.png");
  giftbox1 = loadImage ("giftbox.png");
  treasureboxX1=-85;
  treasureboxY1=202;
  treasureboxsizeX=250;
  treasureboxsizeY=200;
  rectanglesize=40;
  p = new purplebox();
  lg = new limegreenbox();
  bp = new babypinkbox();
  bl = new babypurplebox();
  by = new babyyellowbox();
  r = new Restarting();
  //mouse color
  for (int i = 0; i != 500; i++) {
    fill( (color) random(0x1000000) | #000000 );
    rect( random(width), random(height), 40, 30);
  }
  file = new SoundFile(this, "Tada.mp3");
}

void draw() {
  if (proceedToPlay == false) {
    s.display();
  } else {
    //game starts
    mazeWalls();
  }
  r.restart();
  background(0);
  print("the value of the variable mouseX ");
  print(mouseX);
  print(" Y ");
  print (mouseY);
  println();
  //start of opening clues
  if (mousePressed == true) {
    float distance1 = dist (mouseX, mouseY, 0, 260);
    if (distance1<= rectanglesize*sqrt(2)) {
      getfirstclue = true;
      startingBox();
    }
  } else {
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
  }

  if (mousePressed == true) {
    p.display();
  } else {
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
    // player();
  }
  if (mousePressed == true) {
    lg.display();
  } else {
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
  }
  if (mousePressed == true) {
    bp.display();
  } else {
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
  }
  if (mousePressed == true) {
    bl.display();
  } else {
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
  }
  if (mousePressed == true) {
    by.display();
  } else {
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
  }
  //code for lives decrease
  color c = get(mouseX, mouseY);
  int w;
  w = color(255);
  if (c == w) {
    livescount -= 1;
  }
  //losing game page
  if (livescount <= 0) {
    background(0);
    G.display();
  }
}

void mousePressed() {
  proceedToPlay = true;
  ellipse(0, 0, 10, 10);
}


class Startpage {
  void display() {
    stroke(255);
    fill(0);
    rect(width/5, height/5.3, 600, 600);
    gamemainText();
    fill(255);
    typewriteText();
    startMessage();
  }
}
// start of right color boxes classes
class purplebox {
  void display() {
    float distance2 = dist (mouseX, mouseY, 365, 0);
    if (distance2<=rectanglesize*sqrt(2)) {
      getsecondclue = true;
      purpleBoxtext();
    }
  }
}
class limegreenbox {
  void display() {
    float distance3 = dist (mouseX, mouseY, 0, 485);
    if (distance3<=rectanglesize*sqrt(2)) {
      getthirdclue = true;
      limegreenBoxtext();
    }
  }
}
class babypinkbox {
  void display() {
    float distance4 = dist (mouseX, mouseY, 670, 0);
    if (distance4<=rectanglesize*sqrt(2)) {
      getfourthclue = true;
      babypinkBoxtext();
    }
  }
}
class babypurplebox {
  void display() {
    float distance5 = dist (mouseX, mouseY, 960, 160);
    if (distance5<=rectanglesize*sqrt(2)) {
      getfifthclue = true;
      babypurpleBoxtext();
    }
  }
}
class babyyellowbox {
  void display() {
    float distance6 = dist (mouseX, mouseY, 765, 580);
    if (distance6<=rectanglesize*sqrt(2)) {
      getlastclue = true;
      babyyellowBoxtext();
    }
  }
}
// end of right colored boxes classes
class Restarting {
  void restart() {
    if (keyPressed == true)
    livescount = 5;
    background(0);
    startingBoxcolors();
    purpleBox();
    limegreenBox();
    babypinkBox();
    babypurpleBox();
    babyyellowBox();
    mazeWalls();
  }
  
}
void gamemainText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 58);
  fill(255, 0, 0);
  text(gamemainmessage, width/2, height/3.5);
}
void typewriteText() {
  frameRate(7);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  if (counter < instructions.length())
    counter++;
  text(instructions.substring(0, counter), 250, 300, width/2, height);
}

void startMessage() {
  stroke(255);
  fill(0);
  rect(420, 615, 150, 100);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(255, 0, 0);
  text(startMessage, width/2, height/1.2);
}

//void player() {
//  stroke(255,0,0);
//  fill(255,0,0);
//  ellipse(mouseX, mouseY, 10, 10);
//}

void mazeWalls() {
  //treasure boxes
  image(treasurebox0, 40, -65, 250, 200);
  image(treasurebox1, 285, -70, 250, 200);
  image(treasurebox3, 485, -70, 250, 200);
  image(treasurebox5, -85, 331, 250, 200);
  image(treasurebox7, 885, 0, 250, 200);
  image(treasurebox9, 390, 300, 250, 200);
  image(treasurebox10, 590, 230, 250, 200);
  image(treasurebox11, 885, 480, 250, 200);
  image(treasurebox13, 290, 680, 250, 200);
  image(treasurebox14, -15, 605, 250, 200);
  //boxes with clues
  startingBoxcolors();
  //clue colors
  //1 
  purpleBox();
  //2
  limegreenBox();
  //3
  babypinkBox();
  //4
  babypurpleBox();
  //5
  babyyellowBox();


  //distracting colors
  //
  fill(138, 43, 226);
  stroke(138, 43, 226);
  ellipse(139, 25, 10, 10);
  //
  fill(200, 0, 200);
  stroke(200, 0, 200);
  ellipse(385, 19, 10, 10);
  //
  fill(204, 229, 255);
  stroke(204, 229, 255);
  ellipse(582, 19, 10, 10);
  fill(0, 0, 102);
  stroke(0, 0, 102);
  ellipse(983, 89, 10, 10);
  fill(102, 51, 0);
  stroke(102, 51, 0);
  ellipse(690, 319, 10, 10);
  fill(255, 128, 0);
  stroke(255, 128, 0);
  ellipse(985, 570, 10, 10);
  fill(255, 178, 102);
  stroke(255, 178, 102);
  ellipse(389, 769, 10, 10);
  stroke(255, 255, 0);
  fill(255, 255, 0);
  ellipse(85, 693, 10, 10);
  stroke(255, 153, 204);
  fill(255, 153, 204);
  ellipse(489, 391, 10, 10);
  stroke(76, 153, 0);
  fill(76, 153, 0);
  ellipse(15, 420, 10, 10);



  //maze walls
  stroke(255);
  fill(255);
  //(my)left and middle side spikes
  rect(50, 0, 70, 200); 
  rect(200, 0, 70, 400);
  rect(0, 300, 180, 60);
  rect(0, 430, 380, 60);
  rect(400, 0, 70, 570);
  rect(400, 30, -100, 40);
  rect(200, 90, 150, 40);
  rect(0, 600, 500, 60);
  rect(40, 430, 50, 150);
  rect(120, 600, 50, -95);
  rect(200, 430, 50, 150);
  rect(600, 0, 70, 450);
  rect(600, 30, -70, 50);
  rect(600, 300, -70, 50);
  rect(400, 250, 150, -150);
  rect(400, 400, 180, 50);
  //bottom spikes
  rect(50, 800, 70, -100);
  rect(300, 800, 70, -120);
  rect(300, 800, 150, -20);
  rect(800, 800, 70, -230);
  rect(700, 700, 100, -80);
  rect(500, 700, 90, -200);
  rect(610, 800, 70, -320);
  //(my)right side spikes
  rect(750, 0, 280, 60);
  rect(600, 100, 280, 60);
  rect(750, 200, 280, 60);
  rect(600, 330, 280, 60);
  rect(820, 330, 70, 215);
  rect(950, 100, 200, 60);
  rect(750, 50, 50, 35);
  rect(830, 100, 50, -20); 
  //rect right above exit point
  rect(900, 580, 200, 60);
  LivesCount();
  startText();
}
//functions for boxes with clues
void startingBoxcolors() {
  //the starting box
  stroke(0);
  fill(0);
  rect(0, 260, rectanglesize, rectanglesize);
  image(treasurebox15, -85, 202, 250, 200);
  //first box with all colors
  fill(255);
  stroke(255);
  ellipse(16, 280, 5, 5);
  fill(0);
  stroke(0);
  ellipse(10, 280, 5, 5);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  ellipse(12, 291, 5, 5);
  fill(255, 255, 0);
  stroke(255, 255, 0);
  ellipse(5, 291, 5, 5);
  fill(0, 0, 255);
  stroke(0, 0, 255);
  ellipse(20, 291, 5, 5);
}

void startingBox() {
  //text
  stroke(255);
  fill(255);
  rect(width/2.7, height/5.3, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(0);
  text(firstclue, 530, height/2.5);
}
void purpleBox() {
  stroke(0);
  fill(0);
  rect(365, 0, rectanglesize, rectanglesize);
  image(treasurebox2, 285, -70, 250, 200);
  fill(200, 0, 200);
  stroke(200, 0, 200);
  ellipse(385, 19, 10, 10);
}
void purpleBoxtext() {
  stroke(255);
  fill(255);
  rect(width/2.7, height/5.3, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(0);
  text(secondclue, 530, height/2.5);
}
void limegreenBox() {
  stroke(0);
  fill(0);
  rect(0, 485, rectanglesize, rectanglesize);
  image(treasurebox8, -85, 425, 250, 200);
  stroke(204, 255, 102);
  fill(204, 255, 102);
  ellipse(13, 514, 10, 10);
}
void limegreenBoxtext() {
  stroke(255);
  fill(255);
  rect(width/2.7, height/5.3, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(0);
  text(thirdclue, 530, height/2.5);
}
void babypinkBox() {
  stroke(0);
  fill(0);
  rect(670, 0, rectanglesize, rectanglesize);
  image(treasurebox4, 590, -70, 250, 200);
  stroke(255, 204, 229);
  fill(255, 204, 229);
  ellipse(691, 20, 10, 10);
}
void babypinkBoxtext() {
  stroke(255);
  fill(255);
  rect(width/2.7, height/5.3, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 17);
  fill(0);
  text(fourthclue, 530, height/2.5);
}
void babypurpleBox() {
  stroke(0);
  fill(0);
  rect(960, 160, rectanglesize, rectanglesize);
  image(treasurebox6, 885, 100, 250, 200);
  fill(204, 153, 255);
  stroke(204, 153, 255);
  ellipse(985, 190, 10, 10);
}
void babypurpleBoxtext() {
  stroke(255);
  fill(255);
  rect(width/2.7, height/5.3, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 17);
  fill(0);
  text(fifthclue, 530, height/2.5);
}
void babyyellowBox() {
  stroke(0);
  fill(0);
  rect(765, 580, rectanglesize, rectanglesize);
  image(treasurebox12, 685, 520, 250, 200);
  stroke(255, 255, 153);
  fill(255, 255, 153);
  ellipse(784, 609, 10, 10);
}
void babyyellowBoxtext() {
  stroke(255);
  fill(255);
  rect(width/2.7, height/5.3, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 45);
  fill(255, 215, 0);
  text(lastclue, 540, 270);
  file.play();
  image(giftbox1, 480, 330, 120, 100);
}
//end of functions of boxes with clues

//lives count
void LivesCount() {
  //stroke(0);
  //fill(0);
  //rect(900, 0, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(255, 0, 0);
  text(lives, 850, 40);
  text(livescount, 910, 40);
}
//losing page class
class Gameoverpage {
  void display() {
    stroke(0);
    fill(255, 0, 0);
    rect(width/9.5, height/8, 800, 600);
    losingText();
    keyText();
    image(img, 370, 300, 300, 320);
  }
}
void losingText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 36);
  textFont(f, 24);
  fill(0);
  text(lostmessage, width/2, height/3.5);
}

void keyText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 36);
  textFont(f, 20);
  fill(0);
  text(keymessage, width/1.95, height/1.17);
}
void startText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 36);
  textFont(f, 15);
  fill(255, 0, 0);
  text(startingtext, 25, 20);
}
//
//code to check the color the mouse is on:
void mouseMoved() {
  color c = get(mouseX, mouseY);

  color r = c >> 020 & 0xFF;
  color g = c >> 010 & 0xFF;
  color b = c & 0xFF;

  print( "(" + mouseX + "," + mouseY + ") \t\tColor: #" + hex(c) );
  println( "\tR: " + r + "\t G: " + g + "\t B: " + b );
}
