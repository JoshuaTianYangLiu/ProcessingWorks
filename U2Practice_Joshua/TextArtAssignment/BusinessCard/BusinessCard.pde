//Joshua Liu
//March 22, 2019
//Mr.Rosen
//A business card with text and logo

//Setup-------------------
size(400,300);
smooth();
background(255);
//

//Set the black color at the bottom-------------
fill(0);
rect(0,200,400,300);
//

//Draw diagonal lines------------------------------
stroke(150);
int diagCoord=0;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
diagCoord=diagCoord+8;
line(diagCoord,300,0,300-diagCoord);
//

//Sets the wavy bottom----------------
fill(255);
stroke(255);
beginShape();
  vertex(0,225);
  bezierVertex(133,300,266,150,400,225);
  vertex(400,0);
  vertex(0,0);
endShape(CLOSE);
//

//Draws the blue wave-----------------
fill(#31A0FF);
stroke(#31A0FF);
beginShape();
  vertex(10,220);
  bezierVertex(110,295,290,145,390,215);
  bezierVertex(290,120,110,265,10,220);
endShape(CLOSE);
//

//Logo in top right corner a black hexagon inside a blue circle inside a white rectangle------------------------
fill(0);
stroke(0);
beginShape();
  vertex(295,90);
  vertex(315,125);
  vertex(295,160);
  vertex(255,160);
  vertex(235,125);
  vertex(255,90);
endShape(CLOSE);
fill(#31A0FF);
stroke(#31A0FF);
ellipse(275,125,50,50);
rectMode(RADIUS);
fill(255);
stroke(255);
rect(275,125,15,15);
//

//Name
strokeWeight(1);
fill(100,255);
stroke(100);
PFont font;
font = loadFont("Ebrima-Bold-48.vlw");
textFont(font);
text("Shape\nSolutions",10,70);
//

//Contact info
fill(#31A0FF,255);
stroke(#31A0FF);
font=loadFont("Ebrima-Bold-12.vlw");
textFont(font);
text("20 Tillplain Road",50,155);
text("M3H 5R2",50,180);
text("Phone: 416-395-3330",50,205);
//

//Contact pictures

  //Address
fill(0,255);
stroke(0);
ellipse(25,150,20,20);
fill(255);
stroke(255);
ellipse(25,147,8,8);
triangle(22,150,28,150,25,155);
fill(0,255);
ellipse(25,147,6,6);

  //Postal code
stroke(0);
fill(0);
rectMode(CORNERS);
rect(15,185,40,165);
stroke(255);
strokeWeight(3);
line(20,180,35,180);
line(20,176,25,176);
rect(30,170,33,173);

  //Phone
rectMode(CORNER);
stroke(0);
fill(0,0);
bezier(30,193,25,198,25,203,30,208);
ellipse(30,193,2,2);
ellipse(30,208,2,2);
//
