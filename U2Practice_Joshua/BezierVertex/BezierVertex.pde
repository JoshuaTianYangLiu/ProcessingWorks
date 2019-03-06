void setup(){
  size(800,500);
  beginShape();
  vertex(400,300);
  bezierVertex(100,100,300,200,100,200);
  endShape();
  ellipse(100,100,10,10);
  ellipse(300,200,10,10);
  ellipse(100,200,10,10);
}
