class Lost{
    void display() {
    stroke(157, 224, 246);
    fill(157, 224, 246);
    rect(220, height/8, 500, 400);
    losingText();
    image(sadface, 300, 120, 300, 320);
  }
  
  void losingText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 36);
  textFont(f, 24);
  fill(0);
  text(Lost, 480, 120);
  textFont(f, 20);
  text( mainmenutext, 470,450);
}
  
  
  
  
}
