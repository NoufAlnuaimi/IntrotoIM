class Mscorecount {

  void ScoreCount() {
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 25);
    fill(255, 0, 0);
    text(ScoreM, 700, 40);
    text(scoreM, 770, 40);
  }
  void Scorecounting() {
    //score counting:
    color c = get(locX+5, locY+5); 
    color c2 = get(locX-5, locY-5); 
    int w;
    w = color(137, 207, 240);
    if ((c == w)||(c2== w)) {
      scoreM -= 1;
    }
  }
  void Wronganswers() {
    float wrong1 = dist (mouseX, mouseY, 175, 240);
    if (wrong1<=40*sqrt(2)) {
      scoreM -= 2;
    }
    float wrong2 = dist (mouseX, mouseY, 175, 140);
    if (wrong2<=40*sqrt(2)) {
      scoreM -= 2;
    }
    float wrong3 = dist (mouseX, mouseY, 425, 440);
    if (wrong3<=40*sqrt(2)) {
      scoreM -= 2;
    }
    float wrong4 = dist (mouseX, mouseY, 425, 340);
    if (wrong4<=40*sqrt(2)) {
      scoreM -= 2;
    }
    float wrong5 = dist (mouseX, mouseY, 375, 240);
    if (wrong5<=40*sqrt(2)) {
      scoreM -= 2;
    }
    float wrong6 = dist (mouseX, mouseY, 375, 340);
    if (wrong6<=40*sqrt(2)) {
      scoreM -= 2;
    }
  }
  
}
