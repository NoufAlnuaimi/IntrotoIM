import processing.serial.*;
Serial myPort;
mainmenu m;
int val;
int xPos=0;
int Sensor=0;
String Clickhere1 = "Match the Pattern";
String Clickhere2 = "Catch the Strawberries";
String Clickhere3 = "Click here!";
String GameTitle = "Games Galore";
boolean FirstGame1 = false;
boolean SecondGame2 = false;
boolean MainMenu = false;
//First game:
//Player
int locX= 0, locY=0;
//classes:
Firstpattern F;
Secondpattern S;
Thirdpattern T;
Mscorecount M;
Firstgame G1;
Drop d;
Won W1;
Lost L1;
String Patterntext = "Pick the correct pattern!" ;
//choice images
PImage door, firstchoice1, secondchoice1, thirdchoice1, firstchoice2, secondchoice2, thirdchoice2, firstchoice3, secondchoice3, thirdchoice3, happyface, sadface;
boolean firstdoor = true, seconddoor = true, thirddoor = true, hidingwall1 =false, hidingwall2 = false, wonpage = false;
int scoreM = 4;
String ScoreM = "score";
String Lost = ("Uh oh, try again!");
String Won = ("You got all the patterns correct!");
String ClickR = "(press R to play)";
String ClickP = "(press P to play)";
//Second game:
PImage basket, pinkstrawberry, redstrawberry, fly, jam, sky, flyjam;
PImage blueLED, redLED, yellowLED;

Losing L;
Winning W;
Secondgame S1;
//texts:
String lostmessage = "Yuck! You made fly jam";
String mainmenutext = "(Press Enter to go back to main menu)";
String winningmessage = "YAY! You made yummy strawberry jam!";
Catcher c;
boolean Return = true;
Drop [] drops;
Drop2 [] strawberry;
Drop3 [] flies;


Timer dropTimer;


int numDrops;
int dropInterval;
int activeDrops;
int score = 0;
String Score = "score";





void setup() {
  xPos = width/2;
  size(960, 520);

  printArray(Serial.list());
  String portname=Serial.list()[1];
  println(portname);
  myPort = new Serial(this, portname, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');
  Mgamesetup();
  Sgamesetup();
  m = new mainmenu();
}
void draw() {

  background(255, 200, 200);
  //Game title:
  m.Gametitle();

  m.BabyPink();
  m.BabyPurple();
  m.booleans();

  if (!Return) {
    background(255, 200, 200);
    //Game title:
    m.Gametitle();
    //Buttons
    m.BabyPink();
    m.BabyPurple();
    m.booleans();
    
    
  }
  //doors to arduino:
  if (!firstdoor) {
    if (mousePressed == true) {
      float distance1 = dist (mouseX, mouseY, 300, 215);
      if (distance1<= 180*sqrt(2)) {
      }
    }
    F.FirstDoor();
   // myPort.write('F');
  }
  
  else if (!seconddoor) {
    if (mousePressed == true) {
      float distance2 = dist (mouseX, mouseY, 640, 415);
      if (distance2<= 180*sqrt(2)) {
      }
    }
    S.SecondDoor();
    // myPort.write('S');
  } 
 else if (!thirddoor) {
    if (mousePressed == true) {
      float distance3 = dist (mouseX, mouseY, 920, 5);
      if (distance3<= 180*sqrt(2)) {
      }
    }
    T.ThirdDoor();
  //  myPort.write('T');
  }
    if (mousePressed == true){
    float correctanswer4 = dist (mouseX, mouseY, 375, 140);
    if (correctanswer4 <=40*sqrt(2)) {
      //print ("clicked the door");
      thirddoor = true;

      wonpage = true;
      myPort.write('W');
    }
  }
}



  void serialEvent(Serial myPort) {
  String s = myPort.readStringUntil('\n');
  s=trim(s);
  if (s!=null) {
    println(s);
    int values[]=int(split(s, ','));
    if (values.length==2) {
      xPos = (int)map(values[0], 0, 1023, 0, width); 
    }
  }
    print("0,0");
}


//mouse clicks:
void mouseClicked() {
  //First game:
  G1.Firstgamemouseclicks();
  M.Wronganswers();
}

void keyPressed() {
  if (keyCode == ENTER) {
    //  print("pressed");
    Return = false;
    wonpage = false;
    FirstGame1 = false;
    SecondGame2 = false;
    hidingwall1 = false;
    hidingwall2 = false;
    scoreM = 4;
    score=0;
  } else if (key == 'r' || key == 'R') {
    FirstGame1 = true;
  } else if (key == 'p' || key == 'P') {
    SecondGame2 = true;
  }
  G1.PlayerKeys();
} 
void mouseReleased() {
  myPort.write('L');
}


//First Game setup:
void Mgamesetup() {
  F = new Firstpattern();
  S = new Secondpattern();
  T = new Thirdpattern();
  M = new Mscorecount();
  G1 = new Firstgame();
  W1 = new Won();
  L1 = new Lost();
  firstchoice1 = loadImage("firstchoice1.png");
  secondchoice1 = loadImage("secondchoice1.png");
  thirdchoice1 = loadImage("thirdchoice1.png");
  firstchoice2 = loadImage("firstchoice2.png");
  secondchoice2 = loadImage("secondchoice2.png");
  thirdchoice2 = loadImage("thirdchoice2.png");
  firstchoice3 = loadImage("firstchoice3.png");
  secondchoice3 = loadImage("secondchoice3.png");
  thirdchoice3 = loadImage("thirdchoice3.png");
  door = loadImage("door.png");
  redLED = loadImage("redLED.PNG");
  blueLED = loadImage("blueLED.PNG");
  yellowLED = loadImage("yellowLED.PNG");
  happyface = loadImage("happyface.PNG");
  sadface = loadImage("sadface.PNG");
}
//second game:
////measure collision: 
boolean intersect(Catcher c, Drop d) {
  float distance = dist(c.x, c.y, d.x, d.y);
  if (distance < c.w/2 + d.w/2) {

    return true;
  } else {
    return false;
  }
}
boolean intersect(Catcher c, Drop2 d) {
  float distance = dist(c.x, c.y, d.x, d.y);
  if (distance < c.w/2 + d.w/2) {

    return true;
  } else {
    return false;
  }
}
boolean intersect(Catcher c, Drop3 d) {
  float distance = dist(c.x, c.y, d.x, d.y);
  if (distance < c.w/2 + d.w/2) {

    return true;
  } else {
    return false;
  }
}
//strawberry game score counting
void ScoreCount() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(255, 0, 0);
  text(Score, 700, 40);
  text(score, 770, 40);
}
//Strawberry game setup:
void Sgamesetup() {
  sky = loadImage("sky.PNG");
  sky.resize(960, 520);
  background(sky);
  L = new Losing();
  W = new Winning();
  S1 = new Secondgame();
  numDrops = 10;
  activeDrops= 0;
  dropInterval = 1000;
  c = new Catcher();
  drops = new Drop[numDrops] ;
  strawberry = new Drop2[numDrops] ;
  flies = new Drop3[numDrops] ;

  for (int i = 0; i< numDrops; i++) {
    drops[i] = new Drop();
  }
  for (int i = 0; i< numDrops; i++) {
    strawberry[i] = new Drop2();
  }
  for (int i = 0; i< numDrops; i++) {
    flies[i] = new Drop3();
  }

  dropTimer = new Timer(dropInterval);
  dropTimer.start();

  basket = loadImage("basket.png");
  pinkstrawberry = loadImage("strawberry.PNG");
  redstrawberry = loadImage("redstrawberry.PNG");
  fly = loadImage("fly.PNG");
  jam = loadImage("jam.PNG");
  flyjam = loadImage("flyjam.PNG");
}
