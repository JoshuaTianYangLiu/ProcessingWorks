void setup(){
  fullScreen();
  background(255);
  strokeWeight(10);
  fill(150);
  rect(100,100,900,600);
  fill(255);
  strokeWeight(1);
  rect(100,100,900,600);
  drawToolbar();
  rectMode(CORNERS);
}
Shapes drawn[]=new Shapes[1000];
void draw(){
  
}
void drawToolbar(){
  
  //Line---
  strokeWeight(5);
  line(1100,200,1200,300);
  strokeWeight(10);
  point(1100,200);
  point(1200,300);
  fill(0);
  textSize(48);
  text("Line",1100,350);
  //
  
  //Ellipse---
  strokeWeight(5);
  fill(255);
  ellipse(1150,500,100,100);
  strokeWeight(20);
  point(1200,500);
  point(1150,550);
  fill(0);
  text("Ellipse",1100,650);
  //
  
  //Rect---
  rectMode(CORNERS);
  strokeWeight(5);
  fill(255);
  rect(1100,700,1200,800);
  strokeWeight(20);
  point(1100,700);
  point(1200,800);
  fill(0);
  text("Rect",1100,850);
  
  //Triangle
}
