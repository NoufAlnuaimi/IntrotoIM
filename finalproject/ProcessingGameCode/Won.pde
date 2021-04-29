class Won{
    void display() {
    stroke(255, 192, 203);
    fill(255, 192, 203);
    rect(220, height/8, 500, 400);
    winningText();
    image(happyface, 300, 120, 300, 320);
  }
  
  void winningText() {
  textAlign(CENTER);
  PFont f = createFont("monaco", 36);
  textFont(f, 23);
  fill(0);
  text(Won, 480, 120);
  textFont(f, 20);
  text( mainmenutext, 470,450);
}
  
  
  
}
