class Secondgame{
  void Sgamedraw(){
   PImage sky = loadImage("sky.PNG");
  sky.resize(960,520);
  background(sky);

  c.update();
  c.display();

  //timer managment:
  if (dropTimer.complete() == true) {
    if (activeDrops < numDrops) {
      activeDrops++;
    }

    dropTimer.start();
  }


  for (int i = 0; i< activeDrops; i++) {
    drops[i].update();
    drops[i].display1();
    //check collisions
    if (intersect(c, drops[i]) == true) {
      drops[i].caught();
      score += 2;
    }
  }

  ScoreCount();
  for (int i = 0; i<activeDrops; i++) {
    drops[i].display1();
    if (intersect(c, drops[i]) == true) {
      drops[1].caught();
      score += 2;
    }
  }


  //second strawberry
  for (int i = 0; i< activeDrops; i++) {
    strawberry[i].update();
    strawberry[i].display();
    //check collisions
    if (intersect(c, strawberry[i]) == true) {
      strawberry[i].caught();
      score += 1;
    }
  }

  ScoreCount();
  for (int i = 0; i<activeDrops; i++) {
    strawberry[i].display();
    if (intersect(c, strawberry[i]) == true) {
      strawberry[1].caught();
      score += 1;
    }
  }
  //third flies:
  for (int i = 0; i< activeDrops; i++) {
    flies[i].update();
    flies[i].display();
    //check collisions
    if (intersect(c, flies[i]) == true) {
      flies[i].caught();
      score -= 10;
    }
  }

  //ScoreCount();
  for (int i = 0; i<activeDrops; i++) {
    flies[i].display();
    if (intersect(c, flies[i]) == true) {
      flies[1].caught();
      score -= 10;
    }
  }
  //Winning page:
  if (score >= 20) {
    background(sky);
    W.display();
    myPort.write('W');
  }


  // Losing page:
  if (score <= -1) {
    background(sky);
    L.display();
  }
  }
}
