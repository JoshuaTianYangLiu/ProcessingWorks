int finalValue[]=new int[4];
int curValue[] = new int[4];
int scrollX[] = new int[4];
int distance[] = new int[4];
void setup() {
  size(800, 500);
  for (int i=0; i<4; i++) {
    finalValue[i]=0;
    curValue[i]=0;
    scrollX[i]=0;
    distance[i]=0;
  }
}
int keyPass=1234;
int colourSection=0;
int shackleY=0;
int numComb=0;
boolean hasUnlocked=false;
void draw() {
  textSize(20);
  background(200);
  strokeWeight(28);
  noFill();
  stroke(0);
  arc(400, 150-shackleY, 200, 200, PI, 2*PI);
  line(300, 150-shackleY, 300, 200);
  line(500, 150-shackleY, 500, 200-shackleY);
  strokeWeight(1);
  if (!hasUnlocked) {
    int wheelNum=(mouseX-305)/50;
    if (wheelNum>=0&&wheelNum<=3&&mouseX>=30&&mouseX<=495) {

      if (mousePressed) {
        distance[wheelNum]=scrollX[wheelNum]-mouseY;
        distance[wheelNum]/=15;
        if (distance[wheelNum]<0)distance[wheelNum]+=10;
        distance[wheelNum]%=10;
        curValue[wheelNum]=distance[wheelNum]+finalValue[wheelNum];
      } else {
        scrollX[wheelNum]=mouseY;
        finalValue[wheelNum]=curValue[wheelNum];
      }
      if (curValue[wheelNum]<0)curValue[wheelNum]+=10;
      curValue[wheelNum]%=10;
    }
  } else {
    shackleY=min(40, shackleY+2);
  }
  fill(0);
  rect(250, 200, 300, 200, 14);
  numComb=0;
  boolean isInOneSection=false;
  for (int j=0; j<4; j++) {

    if (mouseX>=305+50*j&&mouseX<=345+50*j&&(mousePressed||(mouseY>=250&&mouseY<=340))&&!hasUnlocked) {
      isInOneSection=true;
      fill(255-min(255, colourSection));
      rect(305+50*j, 250, 40, 90);
      fill(min(255, colourSection));
      colourSection+=10;
    } else {
      fill(255);
      rect(305+50*j, 250, 40, 90);
      fill(0);
    }
    for (int i=0; i<3; i++) {
      text((i+curValue[j])%10, 320+50*j, 300+30*(i-1));
    }
    numComb*=10;
    numComb+=1+curValue[j];
  }
  if (!isInOneSection)colourSection=0;
  if(keyPass==numComb)hasUnlocked=true;
}
