PImage basket;
PImage pinkstrawberry;
PImage redstrawberry;
PImage fly;
PImage jam;
PImage sky;
PImage flyjam;
Losing L;
Winning W;
//texts:
String lostmessage = "Yuck! You made fly jam";
String mainmenutext = "(click any key to go back to main menu)";
String winningmessage = "YAY! You made yummy strawberry jam!";
Catcher c;

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
  size(800, 600);
  sky = loadImage("sky.PNG");
  sky.resize(800, 600);
  background(sky);
  L = new Losing();
  W = new Winning();
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

void draw() {
  size(800, 600);
  PImage sky = loadImage("sky.PNG");
  sky.resize(800, 600);
  background(sky);

  c.update();
  c.display();

  //timer managment:
  if (dropTimer.complete() == true) {
    if (activeDrops < numDrops) {
      activeDrops++;
    }

    dropTimer.start();
  }


  for (int i = 0; i< activeDrops; i++) {
    drops[i].update();
    drops[i].display1();
    //check collisions
    if (intersect(c, drops[i]) == true) {
      drops[i].caught();
      score += 2;
    }
  }

  ScoreCount();
  for (int i = 0; i<activeDrops; i++) {
    drops[i].display1();
    if (intersect(c, drops[i]) == true) {
      drops[1].caught();
      score += 1;
    }
  }


  //second strawberry
  for (int i = 0; i< activeDrops; i++) {
    strawberry[i].update();
    strawberry[i].display();
    //check collisions
    if (intersect(c, strawberry[i]) == true) {
      strawberry[i].caught();
      score += 1;
    }
  }

  ScoreCount();
  for (int i = 0; i<activeDrops; i++) {
    strawberry[i].display();
    if (intersect(c, strawberry[i]) == true) {
      strawberry[1].caught();
      score += 1;
    }
  }
  //third flies:
  for (int i = 0; i< activeDrops; i++) {
    flies[i].update();
    flies[i].display();
    //check collisions
    if (intersect(c, flies[i]) == true) {
      flies[i].caught();
      score -= 10;
    }
  }

  //ScoreCount();
  for (int i = 0; i<activeDrops; i++) {
    flies[i].display();
    if (intersect(c, flies[i]) == true) {
      flies[1].caught();
      score -= 10;
    }
  }
  //Winning page:
  if (score >= 20) {
    background(sky);
    W.display();
  }


  // Losing page:
  if (score <= -1) {
    background(sky);
    L.display();
  }
}


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
void ScoreCount() {
  //stroke(0);
  //fill(0);
  //rect(900, 0, 350, 300);
  textAlign(CENTER);
  PFont f = createFont("monaco", 40);
  textFont(f, 25);
  fill(255, 0, 0);
  text(Score, 700, 40);
  text(score, 770, 40);
}
