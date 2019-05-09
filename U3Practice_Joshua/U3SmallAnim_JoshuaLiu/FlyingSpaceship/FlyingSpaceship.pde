//Joshua Liu
//April 8, 2019
//Mr.Rosen
//A spaceship flying across the night sky

void setup() {
  size(800, 500);
  background(10);
  smooth();
}
void draw() {
  background();
  flyingSpaceship();
}
void background() {
  background(10);
  int starX=290;
  int starY=50;
  strokeWeight(1);
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=37;
  starY=406;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=486;
  starY=487;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=464;
  starY=52;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=253;
  starY=57;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=735;
  starY=388;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=59;
  starY=439;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=302;
  starY=421;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=32;
  starY=253;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=195;
  starY=309;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  starX=736;
  starY=28;
  fill(#F1FFFF);
  stroke(#F1FFFF);
  ellipse(starX, starY, 5, 5);
  line(starX-8, starY, starX+8, starY);
  line(starX, starY-8, starX, starY+8);
  stroke(#F1FFFF, 5);
  fill(#F1FFFF, 5);
  ellipse(starX, starY, 9, 9);
  fill(#f5f3ce);
  stroke(#e7e7dc);
  strokeWeight(8);
  ellipse(750, 60, 180, 180);
}
int flyingShipX=100;
void flyingSpaceship(){
  strokeWeight(1);
  //Exhaust
  stroke(#e6292c);
  fill(#e6292c);
  triangle(flyingShipX-80,275,flyingShipX-80,225,flyingShipX-130,250);
  
  //Tail
  stroke(#e6292c,30);
  fill(#e6292c,30);
  triangle(flyingShipX-80,275,flyingShipX-80,225,flyingShipX/2-130,250);
  
  //Fins
  fill(#c4302b);
  strokeWeight(2);
  stroke(200);
  quad(flyingShipX-100,275,flyingShipX-120,290,flyingShipX-80,295,flyingShipX-70,275);
  quad(flyingShipX-100,225,flyingShipX-120,210,flyingShipX-80,205,flyingShipX-70,225);
  
  //Body
  beginShape();
    vertex(flyingShipX+20,250);
    bezierVertex(flyingShipX-50,280,flyingShipX-75,280,flyingShipX-100,275);
    bezierVertex(flyingShipX-90,255,flyingShipX-90,245,flyingShipX-100,225);
    bezierVertex(flyingShipX-75,220,flyingShipX-50,220,flyingShipX+20,250);
  endShape();
  
  //Window
  fill(200);
  ellipse(flyingShipX-40,250,20,20);
  fill(255);
  ellipse(flyingShipX-40,250,16,16);
  flyingShipX=flyingShipX+3;
}
