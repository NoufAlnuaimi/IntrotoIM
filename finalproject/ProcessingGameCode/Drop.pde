class Drop {
  //properties
  float x, y, w, h;
  float speedY;

  //constructor
  Drop() {
    x = random(width);
    y = 0;
    w = 16;
    h = 16;
    speedY = random(1,5);
  }

  //methods
  void update() {
    y += speedY;
    if (y > height + h/2) {
      y = -h/2;
    }
  }
  void display1() {
    image(pinkstrawberry, x, y, 50, 50);
  }

    void caught(){
      speedY = 0;
      y=-50;
      
    }
}
class Drop2 {
  //properties
  float x, y, w, h;
  float speedY;

  //constructor
  Drop2() {
    x = random(width);
    y = 0;
    w = 16;
    h = 16;
    speedY = random(1,5);
  }

  //methods
  void update() {
    y += speedY;
    if (y > height + h/2) {
      y = -h/2;
    }
  }

  void display() {
    image(redstrawberry, x, y, 50, 50);
    
  }

    void caught(){
      speedY = 0;
      y=-50;
      
    }
}
class Drop3 {
  //properties
  float x, y, w, h;
  float speedY;

  //constructor
  Drop3() {
    x = random(width);
    y = 0;
    w = 16;
    h = 16;
    speedY = random(1,5);
  }

  //methods
  void update() {
    y += speedY;
    if (y > height + h/2) {
      y = -h/2;
    }
  }
  void display() {
    image(fly, x, y, 50, 50);
      
    }
    void caught(){
      speedY = 0;
      y=-50;
      
    }
}
