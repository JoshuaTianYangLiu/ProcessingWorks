void setup() {
  size(800, 500);
  background(255);
}
float x=0;
void draw() {
  background(255);
  fill(0, 0);
  stroke(0);
  ellipse(400, 250, 100, 50);
  float y=30*x%10+250;
  bezier(380, 250,390,y,410,y, 420, 250);
  
  x++;
}
