public class Birb {
  float dispX;
  float dispY;
  Birb(float x, float y) {
    dispX=x;
    dispY=y;
  }
  float x=0;
  float y=0;
  float wingX=0;
  float wingY=0;
  void update() {
    //noFill();
    fill(0,0);
    stroke(#FAAB00);
    strokeWeight(2);
    x=lerp(x, mouseX, 0.15);
    y=lerp(y, mouseY, 0.15);
    wingY=10*sin(radians(wingX))-10;
    wingX=wingX+3;//Speed
    bezier(x-10+dispX, y+wingY+dispY, x+dispX, -10+y+dispY, 10+x+dispX, -10+y+dispY, 20+x+dispX, y+dispY);        
    bezier(20+x+dispX, y+dispY, 30+x+dispX, -10+y+dispY, 40+x+dispX, -10+y+dispY, 50+x+dispX, y+wingY+dispY);
  }
}
