void setup(){
  size(800,500);
}
Ball b=new Ball(400,250);
void draw(){
  background(40);
  if(Boundaries.isOverlapping(b)){
    b.bounceBall();
  }
  b.updateBall();
  fill(100,255,100);
  stroke(100,255,100);
  b.drawBall();
  fill(255);
  stroke(255);
  rect(0,0,800,10);
  rect(0,0,10,500);
  rect(800,0,-10,500);
  rect(0,500,800,-10);
}
