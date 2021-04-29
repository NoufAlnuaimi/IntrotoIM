class Catcher {
  //properties
  float x,y, w, h;

  //constructor
  Catcher() {
    x=xPos;
    y=height/2;
    w = 32;
    y =32;

  }
  //methods
  void update() {
    x = xPos;
    y = 400;
  }

  void display() {
    fill(0);
    circle(x, y, w);
    imageMode(CENTER);
    image(basket, x, y, 150, 100);
  }

}
