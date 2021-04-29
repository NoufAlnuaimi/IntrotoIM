class Firstpattern {
  void display() {
    stroke(#FFEAF8);
    fill(#FFEAF8);
    rect(0, 0, 960, 520);
    G1.Mazewalls();
  }
  void Firstdoor() {
    image(door, 285, 200, 70, 90);
  }
  void FirstDoor() {
    //print ("clicked the door");
    stroke(197, 139, 231);
    fill(197, 139, 231);
    rect(170, 100, 450, 300);
    //
    stroke(137, 207, 240);
    fill(137, 207, 240);
    rect(170, 60, 450, 50);
    //rectangles for the choices
    fill(255);
    rect(200, 120, 380, 50);
    rect(200, 220, 380, 50);
    rect(200, 320, 380, 50);
    //image of the choices
    image(secondchoice1, 200, 320, 380, 60);
    image(thirdchoice1, 200, 220, 380, 60);
    image(firstchoice1, 200, 120, 380, 60);
    text1();
    //correct choice
    stroke(255, 200, 200);
    fill(137, 207, 240);
    rect(175, 340, 20, 20);
    //two other choices
    rect(175, 140, 20, 20);
    rect(175, 240, 20, 20);
  }
  void correct1() {
    G1.Mazewalls();
  }
  void text1() {
    //text
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 25);
    fill(255, 200, 200);
    text (Patterntext, 400, 100);
  }
}
