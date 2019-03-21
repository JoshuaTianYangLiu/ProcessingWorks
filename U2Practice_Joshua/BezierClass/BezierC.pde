public class BezierC {
  int c[][]=new int[2][4];
  int red, green, blue;
  boolean tempA = true;
  int posX=0;
  int posY=0;
  int xyGroup = 0;
  float t =0.0;
  float prevX[] =new float[3];
  float prevY[] =new float[3];
  float prevX2[] = new float[2];
  float prevY2[] = new float[2];
  float prevPrevX[] = new float[3];
  float prevPrevY[] = new float[3];
  float prevPrevX2[] = new float[2];
  float prevPrevY2[] = new float[2];
  float prevX3 =0;
  float prevY3 = 0;
  BezierC(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
    c[0][0] = x1; //BL
    c[1][0] = y1;
    c[0][1] = x2; //TL
    c[1][1] = y2;
    c[0][2] = x3; //TR
    c[1][2] = y3;
    c[0][3] = x4; //BR
    c[1][3] = y4;
  }
  void setColour(int r, int g, int b) {
    red=r;
    green=g;
    blue=b;
  }
  void update() {
    if (!spacePressed) {
      int D = 10;
      if (mousePressed) {
        if (tempA) {
          for (int i=0; i<4; i++) {
            if (abs(c[0][i]-mouseX)<10&&abs(c[1][i]-mouseY)<10) {
              posX=mouseX;
              posY=mouseY;
              tempA = false;
              xyGroup = i;
              background(255);
              bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
              fill(red,green,blue);
              stroke(red,green,blue);
              ellipse(c[0][0], c[1][0], D, D);
              ellipse(c[0][1], c[1][1], D, D);
              ellipse(c[0][2], c[1][2], D, D);
              ellipse(c[0][3], c[1][3], D, D);
              t=0;
              break;
            }
          }
        } else {
          //erase
          //255 is white
          stroke(255);
          fill(255);
          bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
          ellipse(c[0][xyGroup], c[1][xyGroup], D, D);
          c[0][xyGroup]=mouseX;
          c[1][xyGroup]=mouseY;
          //draw
          stroke(0);
          bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
          stroke(red,green,blue);
          fill(red,green,blue);
          ellipse(c[0][xyGroup], c[1][xyGroup], D, D);
          stroke(0);
        }
      } else {
        boolean onCircle = false;
        for (int i=0; i<4; i++) {
          if (abs(c[0][i]-mouseX)<10&&abs(c[1][i]-mouseY)<10) {
            onCircle=true;
            break;
          }
          onCircle=false;
        }
        if (onCircle) {
          cursor(HAND);
        } else {
          cursor(ARROW);
        }
        tempA=true;

        stroke(0);
        fill(0);
        fill(255, 0);
        bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
        stroke(red,green,blue);
        fill(red,green,blue);
        ellipse(c[0][0], c[1][0], D, D);
        ellipse(c[0][1], c[1][1], D, D);
        ellipse(c[0][2], c[1][2], D, D);
        ellipse(c[0][3], c[1][3], D, D);
        noStroke();
        fill(148, 0, 211);
        fill(255);
        stroke(0);
      }
    }
  }
}
