class Firstgame {

  void Mgamedraw() {
    F.display();
    Player();
    F.Firstdoor();
    S.Seconddoor();
    T.Thirddoor();
    if (!hidingwall1) {
      hidingWall1();
    }
    if (!hidingwall2) {
      hidingWall2();
    }
    if (!firstdoor) {
      F.FirstDoor();
      myPort.write('F');
    }
    if (!seconddoor) {
      S.SecondDoor();
    }
    if (!thirddoor) {
      T.ThirdDoor();
    }
    if (wonpage) {
      background(#FFEAF8);
      W1.display();
      myPort.write('W');
    }
    frameRate(6);
    M.Scorecounting();
    M.ScoreCount();
    //losing page:
    if (scoreM <= 0) {
      background(255, 200, 200);
      L1.display();
    }
  }
  void Firstgamemouseclicks() {
    //first door
    float distance1 = dist (mouseX, mouseY, 300, 215);
    if (distance1<=40*sqrt(2)) {
      myPort.write('F');
      firstdoor = false;
      
    }
    float correctanswer1 = dist (mouseX, mouseY, 175, 340);
    if (correctanswer1 <=40*sqrt(2)) {
      // print ("clicked the door");
      firstdoor = true;
      hidingwall1 = true;
    }

    //second door
    float distance2 = dist (mouseX, mouseY, 640, 415);
    if (distance2<=40*sqrt(2)) {
      //print ("clicked the door");
      myPort.write('S');
      seconddoor = false;
      
    }
    float correctanswer2 = dist (mouseX, mouseY, 425, 240);
    if (correctanswer2 <=40*sqrt(2)) {
      //print ("clicked the door");
      seconddoor = true;
      hidingwall2 = true;
    }
    //third door
    float distance3 = dist (mouseX, mouseY, 920, 5);
    if (distance3<=40*sqrt(2)) {
       myPort.write('T');
      thirddoor = false;
     
    }
    float correctanswer3 = dist (mouseX, mouseY, 375, 140);
    if (correctanswer3 <=40*sqrt(2)) {
      //print ("clicked the door");
      thirddoor = true;

      wonpage = true;
    }
  }
  void Player() {
    stroke(197, 139, 231);
    fill(197, 139, 231);
    rect (locX, locY, 8, 8);
  }
  void PlayerKeys() {
    if (key == CODED) {
      if (keyCode == UP) {
        locY -= locY =5;
      } else if (keyCode == DOWN) {
        locY += locY = +5;
      } else if (keyCode == RIGHT) {
        locX += locX = +5;
      } else if (keyCode == LEFT) {
        locX -= locX =5;
      }
    }
  } 
  void hidingWall1() {
    stroke(#FFEAF8);
    fill(#FFEAF8);
    rect(350, 0, 330, 520);
  }
  void hidingWall2() {
    stroke(#FFEAF8);
    fill(#FFEAF8);
    rect(680, 0, 330, 520);
  }
  void Mazewalls() {
    //First Part
    fill(137, 207, 240);
    stroke(137, 207, 240);
    rect(100, 0, 50, 100);
    rect(220, 0, 50, 240);
    rect(-20, 200, 200, 80);
    rect(80, 110, 180, 60);
    rect(50, 600, 300, -200);
    rect(250, 275, 250, 100);
    //Second Part
    rect(370, -10, 50, 250);
    rect(520, 600, 100, -400);
    rect(500, 70, 230, 80);
    rect(680, 410, 200, 80);
    rect(670, 330, 300, 50);
    //Third Part
    rect(900, 600, 100, -400);
    rect(750, -100, 100, 400);
  }
}
