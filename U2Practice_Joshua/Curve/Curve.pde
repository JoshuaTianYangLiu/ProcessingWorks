int c[][]=new int[2][4];
void setup() {
  size(1920, 1080);
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
  strokeWeight(3);
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
boolean spacePressed = false;
void draw() {
  if(key==32&&keyPressed){
    spacePressed=true;
  }else{
    spacePressed=false;
  }
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
            clear();
            background(255);
            curve(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
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
        curve(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
        ellipse(c[0][xyGroup], c[1][xyGroup], D, D);
        c[0][xyGroup]=mouseX;
        c[1][xyGroup]=mouseY;
        //draw
        stroke(0);
        curve(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
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

      stroke(0);
      fill(0);
      fill(255, 0);
      curve(c[0][0], c[1][0], c[0][1], c[1][1], c[0][2], c[1][2], c[0][3], c[1][3]);
      
      stroke(0);
      fill(0);
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
