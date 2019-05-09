//Joshua Liu
//April 8, 2019
//Mr.Rosen
//Assembles a car

void setup() {
  size(800, 500);
  background(255);
  smooth();
}
void draw() {
  background();
  carAssembly();
  
}
float leftWheelX=-3648;
float leftWheelY=-3023;
float rightWheelX=-1451;
float rightWheelY=-2957;
float carHandleX=1831;
float carHandleY=4690;
float headlightX=3543;
float headlightY=3955;
float taillightX=1285;
float taillightY=4037;
float leftWindowX=4060;
float leftWindowY=3983;
float rightWindowX=-2292;
float rightWindowY=3560;
/*
4060  -2292
3983  3560
*/
void carAssembly(){
  //Background
  strokeWeight(1);
  fill(#4470E1);
  stroke(#4470E1);
  arc(400, 200, 300, 150, PI, 2*PI);
  arc(250, 301, 200, 200, PI, 3*PI/2);
  rect(250, 200, 300, 100);
  beginShape();
  vertex(548, 190);
  bezierVertex(560, 225, 570, 255, 600, 300);
  vertex(550, 300);
  endShape(CLOSE);
  rect(150, 300, 450, 25);
  
  //Movement functions
  leftWheelX=lerp(leftWheelX,250,0.05);
  leftWheelY=lerp(leftWheelY,325,0.05);
  rightWheelX=lerp(rightWheelX,500,0.05);
  rightWheelY=lerp(rightWheelY,325,0.05);
  carHandleX=lerp(carHandleX,333,0.05);
  carHandleY=lerp(carHandleY,232,0.05);
  headlightX=lerp(headlightX,154,0.05);
  headlightY=lerp(headlightY,292,0.05);
  taillightX=lerp(taillightX,592,0.05);
  taillightY=lerp(taillightY,286,0.05);
  leftWindowX=lerp(leftWindowX,358,0.05);
  leftWindowY=lerp(leftWindowY,190,0.05);
  rightWindowX=lerp(rightWindowX,381,0.05);
  rightWindowY=lerp(rightWindowY,190,0.05);
  
  //Left wheel
  fill(#3F3F3F);
  stroke(#3F3F3F);
  ellipse(leftWheelX, leftWheelY, 75, 75);
  ellipse(rightWheelX, rightWheelY, 75, 75);
  
  //Car handle
  fill(255);
  stroke(255);
  strokeWeight(7);
  line(carHandleX,carHandleY,carHandleX+19,carHandleY);
  
  //Headlights
  fill(#F7B718);
  stroke(#F7B718);
  ellipse(headlightX,headlightY,54,54);
  
  //Taillights
  fill(#D40704);
  stroke(#D40704);
  strokeWeight(40);
  line(taillightX,taillightY,taillightX,taillightY+18);
  
  //Left and right window
  fill(255);
  stroke(255);
  strokeWeight(1);
  arc(leftWindowX, leftWindowY, 162, 81,PI,3*PI/2);
  arc(rightWindowX,rightWindowY,285,82,3*PI/2,2*PI);
}


void background(){
  background(#87ceeb);
  fill(#686c5e);
  stroke(#686c5e);
  rect(0,300,800,200);
  fill(#f9d71c);
  stroke(#f9d71c);
  ellipse(800,0,200,200);
  
}
