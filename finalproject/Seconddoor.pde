class Secondpattern {
  void display() {
    stroke(0);
    fill(0);
    rect(0, 0, 960, 520);
    G1.Mazewalls();
  }
  void Seconddoor() {
    image(door, 625, 405, 70, 90);
  }
  void SecondDoor() {
    //   print ("clicked the door");
    stroke(197, 139, 231);
    fill(197, 139, 231);
    rect(420, 200, 450, 300);
    stroke(137, 207, 240);
    fill(137, 207, 240);
    rect(420, 160, 450, 50);

    //rectangles for the choices
    fill(255);
    rect(450, 220, 380, 50);
    rect(450, 420, 380, 50);
    rect(450, 320, 380, 50);
    //image of the choices
    image(thirdchoice2, 450, 220, 380, 60);
    image(firstchoice2, 450, 420, 380, 60);
    image(secondchoice2, 450, 320, 380, 60);

    text1();
    //correct choice
    stroke(255, 200, 200);
    fill(137, 207, 240);
    rect(425, 240, 20, 20);

    //two other choices
    rect(425, 440, 20, 20);
    rect(425, 340, 20, 20);
  }
    void text1() {
    //text
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 25);
    fill(255, 200, 200);
    text (Patterntext, 650, 200);
  }
}
