int c[][]=new int[2][4];
void setup() {
  size(800, 500);
  background(255);
  noSmooth();
  c[0][0] = 50; //BL
  c[1][0] = 450;
  c[0][1] = 50; //TL
  c[1][1] = 50;
  c[0][2] = 450; //TR
  c[1][2] = 50;
  c[0][3] = 450; //BR
  c[1][3] = 450;
}
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
          clear();
          background(255);
          bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
          fill(0);
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
      fill(0);
      ellipse(c[0][xyGroup], c[1][xyGroup], D, D);
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
    //Visualization

    //First 3 basic lines
    for (int i=0; i<3; i++) {
      stroke(0, 255, 150);
      line(c[0][i], c[1][i], c[0][i+1], c[1][i+1]);
      float pointX1 = (1-t)*c[0][i]+t*c[0][i+1];
      float pointY1 = (1-t)*c[1][i]+t*c[1][i+1];
      fill(255);
      stroke(255);
      ellipse(prevX[i], prevY[i], D, D);
      stroke(0, 255, 255);
      fill(0, 255, 255);
      ellipse(pointX1, pointY1, D, D);
      prevPrevX[i] = prevX[i];
      prevPrevY[i] = prevY[i];
      prevX[i] = pointX1;
      prevY[i] = pointY1;
    }

    //2 "parent" lines
    for (int i=0; i<2; i++) {
      stroke(255);
      t-=0.002;
      line(prevPrevX[i], prevPrevY[i], prevPrevX[i+1], prevPrevY[i+1]);
      stroke(0, 255, 0);
      t+=0.002;
      line(prevX[i], prevY[i], prevX[i+1], prevY[i+1]);
      float pointX1 = (1-t)*prevX[i]+t*prevX[i+1];
      float pointY1 = (1-t)*prevY[i]+t*prevY[i+1];
      fill(255);
      stroke(255);
      ellipse(prevX2[i], prevY2[i], D, D);
      stroke(255, 100, 0);
      fill(255, 100, 0);
      ellipse(pointX1, pointY1, D, D);
      prevPrevX2[i] = prevX2[i];
      prevPrevY2[i] = prevY2[i];
      prevX2[i] = pointX1;
      prevY2[i] = pointY1;
    }
    stroke(255);
    t-=0.002;
    //erases previous line
    line(prevPrevX2[0], prevPrevY2[0], prevPrevX2[1], prevPrevY2[1]);
    stroke(255, 50, 0);
    t+=0.002;
    //creates next line
    line(prevX2[0], prevY2[0], prevX2[1], prevY2[1]);
    float pointX1 = (1-t)*prevX2[0]+t*prevX2[0+1];
    float pointY1 = (1-t)*prevY2[0]+t*prevY2[0+1];
    fill(255);
    stroke(255);
    ellipse(prevX3, prevY3, D, D);
    stroke(255, 100, 0);
    prevX3 = pointX1;
    prevY3 = pointY1;

    t+=0.002;
    if (t>1.0) {
      t=0;
    }
    stroke(0);
    fill(0);
    ellipse(c[0][0], c[1][0], D, D);
    ellipse(c[0][1], c[1][1], D, D);
    ellipse(c[0][2], c[1][2], D, D);
    ellipse(c[0][3], c[1][3], D, D);
    fill(255, 0);
    bezier(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
    noStroke();
    fill(148, 0, 211);
    ellipse(pointX1, pointY1, D, D);
    fill(255);
    stroke(0);
  }
}
