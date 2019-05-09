//Joshua Liu
//April 8, 2019
//Mr.Rosen
//A boulder rolling down a hill, hitting a wall and bouncing back

void setup() {
  size(800, 500);
  background(#87ceeb);
}
void draw() {

  background(#87ceeb);
  //Clouds
  fill(255);
  stroke(255);
  arc(500,100,100,100,PI,2*PI);
  arc(450,100,50,50,PI,2*PI);
  arc(550,100,50,50,PI,2*PI);
  arc(350,75,50,50,PI,2*PI);
  arc(325,75,25,25,PI,2*PI);
  arc(375,75,25,25,PI,2*PI);
  
  //Sun
  fill(#FFF30A);
  stroke(#FFF30A);
  ellipse(800,0,300,300);
  boulderDownHill();
  boulderRollRight();
  boulderRollLeft();
  
  //The hill and ground
  fill(#7cfc00);
  stroke(#7cfc00);
  triangle(0, 500, 0, 150, 350, 500);
  rect(0, 400, 800, 100);
  x+=xInc;
}
int x=0;
float xInc=3;
int eraseBoulder=1;
int eraseBoulder2=1;
float stopMovement=1;
void boulderDownHill() {
  //Boulder move
  eraseBoulder=(1-x/261)*eraseBoulder;
  fill(255, 0, 0, 255*eraseBoulder);
  stroke(255, 0, 0, 255*eraseBoulder);
  arc(x,x+150-37,50,50,PI+radians(2*x),2*PI+radians(2*x));
  fill(0, 0, 255, 255*eraseBoulder);
  stroke(0, 0, 255, 255*eraseBoulder);
  arc(x,x+150-37,50,50,2*PI+radians(2*x),3*PI+radians(2*x));
}
void boulderRollRight() {
  //Boulder move
  fill(255, 0, 0, 255*(1-eraseBoulder)*(eraseBoulder2));
  stroke(255, 0, 0, 255*(1-eraseBoulder)*(eraseBoulder2));
  arc(x,375,50,50,PI+radians(2*x),2*PI+radians(2*x));
  fill(0, 0, 255, 255*(1-eraseBoulder)*(eraseBoulder2));
  stroke(0, 0, 255, 255*(1-eraseBoulder)*(eraseBoulder2));
  arc(x,375,50,50,2*PI+radians(2*x),3*PI+radians(2*x));
}
void boulderRollLeft() {
  //Boulder move
  eraseBoulder2=(1-x/777)*eraseBoulder2;
  fill(255, 0, 0, 255*(1-eraseBoulder2));
  stroke(255, 0, 0, 255*(1-eraseBoulder2));
  arc(1549-x, 375, 50, 50,PI+radians(2*(1549-x)),2*PI+radians(2*(1549-x)));
  fill(0, 0, 255, 255*(1-eraseBoulder2));
  stroke(0, 0, 255, 255*(1-eraseBoulder2));
  arc(1549-x, 375, 50, 50,2*PI+radians(2*(1549-x)),3*PI+radians(2*(1549-x)));
  xInc=xInc-0.006*(1-eraseBoulder2)*stopMovement;
  stopMovement=(1-x/1276)*stopMovement;
}
