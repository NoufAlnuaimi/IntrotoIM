class Losing {
  void display() {
    stroke(157, 224, 246);
    fill(157, 224, 246);
    rect(150, height/8, 500, 400);
    losingText();
    image(flyjam, 400, 320, 300, 320);
  }
  
  void losingText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 36);
  textFont(f, 24);
  fill(0);
  text(lostmessage, 400, 160);
  textFont(f, 20);
  text( mainmenutext, 400,450);
}
}
