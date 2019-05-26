void setup() {
  size(800, 500);
}
int finalValue=5;
int curValue=0;
int scrollX=0;
int distance=0;
void draw() {
  background(200);
  if (keyPressed) {
    if (key=='w')curValue--;
    else if (key=='s')curValue++;
  }
  
  if(mousePressed){
    distance=scrollX-mouseY;
    distance/=30;
    if(distance<0)distance+=10;
    distance%=10;
    curValue=distance+finalValue;
  }else{
    scrollX=mouseY;
    finalValue=curValue;
  }
  if(curValue<0)curValue+=10;
  curValue%=10;
  println(distance+" "+curValue);
  fill(255);
  rect(98, 240, 10, 10);
  fill(0);
  for (int i=0; i<10; i++) {
    text((i+curValue)%10, 100, 250+30*(i-5));
  }
  
}
