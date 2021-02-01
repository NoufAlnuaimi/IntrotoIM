void setup() {
  size(800, 800);
  background(255);

//pyramids
  for (int x = 15; x < 1000; x +=30) {
    for (int y = 0; y <1000; y +=30) 
      triangle(x, y, x-15, y +30, x +15, y +30);
  }


//Eye Design


  //First Circle 
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 250, 60, 60);
  }

  //Inner Circle
  stroke(255);
  fill(255);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 250, 40, 40);
  }

  //Most Inner Circle
  stroke(0);
  fill(0);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 250, 20, 20);
  }

  //second layer


  //First Circle 
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 550, 60, 60);
  }

  //Inner Circle
  stroke(255);
  fill(255);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 550, 40, 40);
  }

  //Most Inner Circle
  stroke(0);
  fill(0);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 550, 20, 20);
  }

  //third layer
  //First Circle 
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 770, 60, 60);
  }

  //Inner Circle
  stroke(255);
  fill(255);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 770, 40, 40);
  }

  //Most Inner Circle
  stroke(0);
  fill(0);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 770, 20, 20);
  }

  //top layer
  //First Circle 
  stroke(100, 170, 230);
  fill(10, 20, 230);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 30, 60, 60);
  }

  //Inner Circle
  stroke(255);
  fill(255);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 30, 40, 40);
  }

  //Most Inner Circle
  stroke(0);
  fill(0);
  for (int circles =30; circles< width; circles = circles +100) {
    ellipse (circles, 30, 20, 20);
  }

//the sun

  stroke(230, 204, 0);
  fill(230, 204, 0);
  ellipse (width/20, height/20, 200, 200);



//sun rays

  for (int x = 0; x<30; x= x + 1) {
    rotate(radians(360/30));
    line(800, 800, 0, 0);
  }

  for (int x = 0; x<30; x= x + 1) {
    rotate(radians(360/20));
    line(0, 200, 200, 0);
  }
}
