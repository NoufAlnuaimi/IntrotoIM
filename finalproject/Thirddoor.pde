class Thirdpattern {
  void display() {
    stroke(0);
    fill(0);
    rect(0, 0, 960, 520);
    G1.Mazewalls();
  }
  void Thirddoor() {
    image(door, 905, -10, 70, 90);
  }
  void ThirdDoor() {
    //print ("clicked the door");
    stroke(197, 139, 231);
    fill(197, 139, 231);
    rect(370, 100, 450, 300);
    stroke(137, 207, 240);
    fill(137, 207, 240);
    rect(370, 60, 450, 50);

    //rectangles for the choices
    fill(255);
    rect(400, 120, 380, 50);
    rect(400, 320, 380, 50);
    rect(400, 220, 380, 50);
    //image of the choices
    image(firstchoice3, 400, 120, 380, 60);
    image(secondchoice3, 400, 320, 380, 60);
    image(thirdchoice3, 400, 220, 380, 60);
    text1();
    //correct choice
    stroke(255, 200, 200);
    fill(137, 207, 240);
    rect(375, 140, 20, 20);
    //two other choices
    rect(375, 240, 20, 20);
    rect(375, 340, 20, 20);
  }
  void text1() {
    //text
    textAlign(CENTER);
    PFont f = createFont("monaco", 40);
    textFont(f, 25);
    fill(255, 200, 200);
    text (Patterntext, 600, 100);
  }
}
