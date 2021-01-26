size(800,800);
noStroke();
background(160, 185, 250);


//hair end
stroke(120,50,0);
fill(120,50,0);
triangle(275, 285, 397, 130, 515, 285);


//hair
int hairWidth = 180;
int hairHeight =170;
stroke(120,50,0);
fill(120,50,0);
ellipse(width/2, height/4, hairWidth, hairHeight);




//left leg
int leftLegWidth =20;
int leftLegHeight =220;
stroke(255,220,150);
fill(255,220,130);
rect (width/2.2, height/2.7, leftLegWidth, leftLegHeight );

//right leg
int rightLegWidth =20;
int rightLegHeight =220;
stroke(255,220,150);
fill(255,220,130);
rect (width/1.99, height/2.7, rightLegWidth, rightLegHeight );

//right shoe
stroke(255,70,100);
fill(255,70,100);
arc(width/1.94, height/1.55, 20, 20, HALF_PI, PI);
arc(width/1.94, height/1.55, 20, 20, 0, HALF_PI);
//leftshoe
stroke(255,70,100);
fill(255,70,100);
arc(width/2.15, height/1.55, 20, 20, HALF_PI, PI);
arc(width/2.15, height/1.55, 20, 20, 0, HALF_PI);



//arms
int armWidth =320;
int armHeight =20;
stroke(255,220,150);
fill(255,220,130);
rect (width/3.5, height/2.7, armWidth, armHeight );



//body
stroke(255,70,100);
fill(255,70,100);
triangle(285,440,397,270,509,440);

//head
int headWidth = 130;
int headHeight =150;
stroke(255,220,150);
fill(255,220,130);
ellipse(width/2, height/4, headWidth, headHeight);

//left eye
int leftEyeWidth = 20;
int leftEyeHeight =30;
stroke(0,0,0);
fill(0,0,0);
ellipse(width/2.15, height/4.4, leftEyeWidth, leftEyeHeight);
 
 //right eye
int rightEyeWidth = 20;
int rightEyeHeight =30;
stroke(0,0,0);
fill(0,0,0);
ellipse(width/1.85, height/4.4, leftEyeWidth, leftEyeHeight);
 
 //mouth
stroke(215,0,35);
fill(215,0,35);
arc(width/2, height/3.6, 50, 50, HALF_PI, PI);
arc(width/2, height/3.6, 50, 50, 0, HALF_PI);

 //nose
stroke(255,210,110);
fill(255,210,110);
arc(width/2, height/4, 30, 30, HALF_PI, PI);
arc(width/2, height/4, 30, 30, 0, HALF_PI);
