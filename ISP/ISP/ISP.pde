int currentWindow=0;
//0 is splash screen

void setup(){
  size(800,500);
  smooth();
}
void draw(){
  if(currentWindow==0)splashScreen();
}
void splashScreen(){
  background(0);
}
