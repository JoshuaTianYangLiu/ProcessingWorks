int finalValue[]=new int[4];
int curValue[] = new int[4];
int scrollX[] = new int[4];
int distance[] = new int[4];
void setup() {
  size(800, 500);
  for (int i=0; i<4; i++) {
    finalValue[i]=4;
    curValue[i]=0;
    scrollX[i]=0;
    distance[i]=0;
  }
}

void draw() {
  textSize(20);
  background(200);
  int wheelNum=(mouseX-250)/20;
  if (keyPressed) {
    if (key=='w')curValue[wheelNum]--;
    else if (key=='s')curValue[wheelNum]++;
  }

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
  println(finalValue);
  fill(0);
  rect(200, 150, 300, 200, 14);
  fill(255);
  for (int i=4; i<7; i++) {
    text((i+curValue[wheelNum])%10, 250, 250+30*(i-5));
  }
}
