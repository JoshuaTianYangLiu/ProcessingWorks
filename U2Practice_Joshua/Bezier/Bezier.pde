int c[][]=new int[2][4];
void setup() {
  size(800, 500);
  background(255);
  c[0][0] = 200;
  c[1][0] = 300;
  c[0][1] = 300;
  c[1][1] = 300;
  c[0][2] = 200;
  c[1][2] = 200;
  c[0][3] = 300;
  c[1][3] = 200;
}
boolean tempA = true;
int posX=0;
int posY=0;
int xyGroup = 0;
void draw() {
  int D = 10;
  if (mousePressed) {
    if (tempA) {
      for (int i=0; i<4; i++) {
        if (abs(c[0][i]-mouseX)<10&&abs(c[1][i]-mouseY)<10) {
          posX=mouseX;
          posY=mouseY;
          tempA = false;
          xyGroup = i;
          break;
        }
      }
    } else {
      stroke(255);
      bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
      fill(255);
      ellipse(c[0][xyGroup], c[1][xyGroup], D, D);
      c[0][xyGroup]=mouseX;
      c[1][xyGroup]=mouseY;
      stroke(0);
      bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
      fill(255);
      ellipse(c[0][xyGroup], c[1][xyGroup], D, D);
    }
  } else {
    tempA=true;
    stroke(0);
    bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
    ellipse(c[0][0], c[1][0], D, D);
    ellipse(c[0][1], c[1][1], D, D);
    ellipse(c[0][2], c[1][2], D, D);
    ellipse(c[0][3], c[1][3], D, D);
  }
}
