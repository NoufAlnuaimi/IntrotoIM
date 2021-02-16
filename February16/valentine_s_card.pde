String mainmessage= "Happy Valentine's";
String lovemessage = "I love you so much!";
float r = 100;
String strings[];
void setup() {
  size(800, 800);
  background(255, 200, 200);
  //for graph
    strings = loadStrings("data.csv");
  println("strings array contains this many lines: " + strings.length);

  noStroke(); 
  //
    for (int x = 0; x < 800; x +=50) {
    for (int y = 0; y <800; y +=50) 
      heart(x-20, y-100);
  }
  //PFont f = createFont("Georgia", 40, true);
  textSize(32);
  fill(255, 0, 0);
  

  //valentine's massage
  textAlign(CENTER);
  PFont f = createFont("Georgia", 40);
  textFont(f, 80);
  fill(255);
  text(mainmessage, width/2, height/8);
   
}
int csvRowNumber = 1;
//heart shape
void heart(int x, int y) 
{
  pushMatrix();
  translate(x, y);

  //move heart
  translate(0, +100);
  smooth();
  noStroke();
  fill(255, 0, 0);
  beginShape();
  vertex(50, 15);
  bezierVertex(50, -5, 90, 5, 50, 40);
  vertex(50, 15);
  bezierVertex(50, -5, 10, 5, 50, 40);
  endShape();
  popMatrix();
}


void draw() {
    //graph
    int data[];
  data = int( split(strings[csvRowNumber], ',' ) );
  println("data for row # " + csvRowNumber);
  printArray(data);
    //bar graph
  float w2 = width/data.length;
  for (int j = 0; j < data.length; j ++ ) {
    fill(data[j],0,0, 200); // change the amount of red according to the value
    rect(j*w2, height-data[j], w2, data[j]); // the height also depends on the value
  }
  if (csvRowNumber < strings.length-1) {
    csvRowNumber++;
  } else {
    println("This is the last row");
  }

  noLoop();
  //
  heart(0, 0);
  teddyBear();
  translate(width/2, height/1.7 );

  fill(245, 245, 220);
  stroke(245, 245, 220);
  ellipse(0, 0, r*2, r*2);

  // We must keep track of our position along the curve
  float arclength = 0;

  // For every box
  PFont f = createFont("Georgia", 40);
  textFont(f, 40);
  for (int i = 0; i < lovemessage.length(); i++)
  {
    // Instead of a constant width, we check the width of each character.
    char currentChar = lovemessage.charAt(i);
    float w = textWidth(currentChar);

    // Each box is centered so we move half the width
    arclength += w/2;
    // Angle in radians is the arclength divided by the radius
    // Starting on the left side of the circle by adding PI
    float theta = PI + arclength / r;    

    pushMatrix();
    // Polar to cartesian coordinate conversion
    translate(r*cos(theta), r*sin(theta));
    // Rotate the box
    rotate(theta+PI/2); // rotation is offset by 90 degrees
    // Display the character
    fill(255, 0, 0);
    text(currentChar, 0, 0);
    popMatrix();
    // Move halfway again
    arclength += w/2;
  }

  //values 
  print("the value of the variable mouseX ");
  print(mouseX);
  print(" Y ");
  print (mouseY);
  println();
}

void teddyBear() {
  //arms
  stroke(213, 184, 149);
  fill(213, 184, 149);
  ellipse(295, 505, 150, 70);
  ellipse(505, 505, 150, 70);
  //stomach
  stroke(213, 184, 149);
  fill(207, 185, 151);
  ellipse(width/2, height/1.7, 350, 330);
  ellipse(width/2, height/3.2, 250, 220);
  //ears
  ellipse(290, 160, 100, 90);
  ellipse(510, 160, 100, 90);
  //inside of ears
  fill(245, 245, 220) ;
  stroke(245, 245, 220);
  ellipse(290, 160, 50, 50);
  ellipse(510, 160, 50, 50);
  //legs
  stroke(213, 184, 149);
  fill(213, 184, 149);
  ellipse(290, 635, 130, 120);
  ellipse(510, 635, 130, 120);
  //bottom of feet
  fill(245, 245, 220) ;
  stroke(245, 245, 220);
  ellipse(290, 655, 80, 60);
  ellipse(510, 655, 80, 60);
  //left paws
  ellipse(260, 618, 20, 20);
  ellipse(290, 605, 20, 20);
  ellipse(320, 618, 20, 20);
  //right paws
  ellipse(480, 618, 20, 20);
  ellipse(510, 605, 20, 20);
  ellipse(540, 618, 20, 20);
  //nose
  fill(245, 245, 220) ;
  stroke(245, 245, 220);
  ellipse(400, 270, 80, 60);
  //eyes
  fill(0) ;
  stroke(0);
  ellipse(350, 220, 30, 30);
  ellipse(450, 220, 30, 30);
  stroke(255);
  fill(255);
  ellipse(344, 215, 10, 10);
  ellipse(440, 215, 10, 10);
  //nose
  smooth();
  fill(0) ;
  stroke(0);
  triangle(390,253,400,266,412,253);
}
void mouseClicked() {
  loop();
}
