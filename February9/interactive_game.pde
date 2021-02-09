int XSPEED = 0;
int YSPEED = 3;
int COINSSIZE = 15;
MovingCoins myOtherCoins;
MovingCoins[] myCoinsArray = new MovingCoins[150];

class MovingCoins {

  float x, y, xSpeed, ySpeed;


  MovingCoins(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xSpeed = XSPEED;
    ySpeed = YSPEED;
  }


  void update() {
    x += xSpeed;
    y += ySpeed;
  }


  void drawCircle() {
    fill(255, 204, 20);
    stroke(255, 204, 20);
    ellipse(x, y, COINSSIZE, COINSSIZE);
  }
} 

MovingCoins myCoins = new MovingCoins(25, 72);

void setup() {
  x = width/2;   
  size(800, 800);
  background(255);
  smooth();
  myCoins= new MovingCoins(50, 50);
  delay(100);
  myOtherCoins= new MovingCoins(100, 100);
  for (int i=0; i < myCoinsArray.length; i++) {
    myCoinsArray[i] = new MovingCoins(random(COINSSIZE, width-COINSSIZE), 
      random(COINSSIZE, height-COINSSIZE));
  }

  //eyelids
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 250, 60, 60);
  }  
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 550, 60, 60);
  }
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 770, 60, 60);
  }
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 30, 60, 60);
  }
}

//falling coins set up

final float speed = 5 ;
float x;
float y = 0;

//Animation of the game begins here

void draw() {

  //pyramids
  stroke(255, 0, 0);
  fill(255, 0, 0);
  if (mousePressed == true) {
    background (255);
  } else {
    background (255, 204, 40);
  }
  for (int x = 15; x < 1000; x +=30) {
    for (int y = 0; y <1000; y +=30) 
      triangle(x, y, x-15, y +30, x +15, y +30);
  }

  if (mousePressed == true) {
    //First Circle 
    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 30, 60, 60);
    }

    //Inner Circle
    stroke(255);
    fill(255);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 30, 40, 40);
    }

    //Most Inner Circle
    stroke(0);
    fill(0);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 30, 20, 20);
    }
    //Eye Design

    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 250, 60, 60);
    }

    stroke(255);
    fill(255);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 250, 40, 40);
    }

    stroke(0);
    fill(0);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 250, 20, 20);
    }

    //second layer

    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 550, 60, 60);
    }

    stroke(255);
    fill(255);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 550, 40, 40);
    }

    stroke(0);
    fill(0);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 550, 20, 20);
    }

    //third layer

    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 770, 60, 60);
    }

    stroke(255);
    fill(255);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 770, 40, 40);
    }

    stroke(0);
    fill(0);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 770, 20, 20);
    }
  } else {
    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 250, 60, 60);
    }  
    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 550, 60, 60);
    }
    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 770, 60, 60);
    }
    stroke(100, 170, 230);
    fill(10, 20, 230);
    for (int circles =30; circles< width; circles = circles +100) {
      ellipse (circles, 30, 60, 60);
    }
  }
  print("the value of the variable mouseX ");
  print(mouseX);
  print(" Y ");
  print (mouseY);
  println();


  //trianlge and circle to press on
  fill (255, 0, 0);
  stroke (255, 0, 0);
  triangle (736, 337, 722, 361, 750, 362);

  fill (255, 0, 0);
  stroke (255, 0, 0);
  ellipse (735, 350, 15, 15);

  //coins falling
  mousePressed();
  if (mouseX == 732) {

    class MovingCoins {

      float x, y, xSpeed, ySpeed;


      MovingCoins(float xpos, float ypos) {
        x = xpos;
        y = ypos;
        xSpeed = XSPEED;
        ySpeed = YSPEED;
      }


      void update() {
        x += xSpeed;
        y += ySpeed;
      }


      void drawCircle() {
        fill(255, 204, 20);
        stroke(255, 204, 20);
        ellipse(x, y, COINSSIZE, COINSSIZE);
      }
    } 

    MovingCoins myCoins = new MovingCoins(25, 72);

    for (int i=0; i < myCoinsArray.length; i++) {

      myCoinsArray[i].update();

      myCoinsArray[i].drawCircle();
    }
  }
}
