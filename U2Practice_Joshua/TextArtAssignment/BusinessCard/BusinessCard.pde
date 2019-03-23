//Joshua Liu
//March 22, 2019
//Mr.Rosen
//A business card with text and logo
size(400,300);
smooth();
background(255);
fill(0);
rect(0,200,400,300);
stroke(255);
for(int i=0; i<200; i++){
  line(5*i,300,0,300-5*i);
}
color Joshua = color (#31A0FF);
fill(255);
stroke(255);
beginShape();
vertex(0,225);
bezierVertex(133,300,266,150,400,225);
vertex(400,190);
vertex(0,190);
endShape(CLOSE);
stroke(0);
fill(#31A0FF);
stroke(#31A0FF);
beginShape();
vertex(10,220);
bezierVertex(110,295,290,145,390,215);
bezierVertex(290,120,110,265,10,220);
endShape(CLOSE);
