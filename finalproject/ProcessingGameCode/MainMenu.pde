class mainmenu {
  void BabyPurple() {

    fill(255);
    stroke(255, 200, 200);
    rect(20, 200, 300, 180);
    Heart1(120, 220);
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 25);
    fill(197, 139, 231);
    text(Clickhere1, 170, 250);
    textFont(f, 15);
    text(ClickR, 155, 280);
    image(pinkstrawberry, 800, 320, 50, 50);
    image(redstrawberry, 720, 320, 50, 50);
    image(redLED, 100, 320, 50, 50);
    image(yellowLED, 145, 283, 50, 50);
    image(blueLED, 190, 320, 50, 50);
  }
  void BabyPink() {

    fill(255);
    stroke(255, 200, 200);
    rect(640, 200, 300, 180);
    Heart2(735, 220);
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 21);
    fill(255, 200, 200);
    text(Clickhere2, 790, 250);
    textFont(f, 15);
    text(ClickP, 790, 280);
  }

  //Hearts
  void Heart1(int x, int y) 
  {
    pushMatrix();
    translate(x, y);

    //move heart
    translate(0, +100);
    smooth();
    noStroke();
    fill(197, 139, 231);
    beginShape();
    vertex(50, 15);
    bezierVertex(50, -5, 90, 5, 50, 40);
    vertex(50, 15);
    bezierVertex(50, -5, 10, 5, 50, 40);
    endShape();
    popMatrix();
  }
  void Heart2(int x, int y) 
  {
    pushMatrix();
    translate(x, y);

    //move heart
    translate(0, +100);
    smooth();
    noStroke();
    fill(255, 200, 200);
    beginShape();
    vertex(50, 15);
    bezierVertex(50, -5, 90, 5, 50, 40);
    vertex(50, 15);
    bezierVertex(50, -5, 10, 5, 50, 40);
    endShape();
    popMatrix();
  }

  //Game title:
  void Gametitle() {
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 80);
    fill(255);
    text(GameTitle, 470, 100);
  }

  void booleans() {
    if (FirstGame1) {
      background(255);
      //this happens 
      //Mgamesetup();
      G1.Mgamedraw();
    }
    if (SecondGame2) {
      //this happens 
      S1.Sgamedraw();
      // Sgamesetup();
      //S1.Sgamedraw();
    }
  }
}
