BezierC a = new BezierC(50,450,50,50,450,50,450,450);
BezierC b = new BezierC(550,950,550,550,950,550,950,950);
void setup() {
  size(1920, 1080);
  background(255);
  noSmooth();

  strokeWeight(3);
  translate(100,500);
  
  a.setColour(255,0,0);
  b.setColour(0,255,0);
}
  //c[0][0] = 50; //BL
  //c[1][0] = 450;
  //c[0][1] = 50; //TL
  //c[1][1] = 50;
  //c[0][2] = 450; //TR
  //c[1][2] = 50;
  //c[0][3] = 450; //BR
  //c[1][3] = 450;
boolean spacePressed = false;
void draw() {
 
  a.update();
  b.update();
}
