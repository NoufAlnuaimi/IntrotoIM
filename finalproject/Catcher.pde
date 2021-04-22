class Catcher {
  //properties
  float x, y, w, h;


  //constructor
  Catcher() {
    x= width/2;
    y=height/2;
    w = 32;
    y =32;
  }
  //methods
  void update() {
    x = mouseX;
    y = 500;
  }

  void display() {
    fill(0);
    circle(x,y,w);
    imageMode(CENTER);
    image(basket, x,y,150,100);
    
     
  }
}
