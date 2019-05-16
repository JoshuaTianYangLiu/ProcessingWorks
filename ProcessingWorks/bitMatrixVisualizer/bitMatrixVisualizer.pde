int arr[][]=new int [8][8];
void setup(){
  size(800,800);
  background(255);
  int cnt=0;
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      arr[i][j]=cnt++;
    }
  }
  textSize(24);
}
int holdX=0;
int holdY=0;
boolean firstClicked=false;
void draw(){
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      col(220);
      rect(100*i+5,100*j+5,90,90);
    }
  }
  int x=(mouseX-5)/100;
  int y=(mouseY-5)/100;
  if(clicked()){
    if(firstClicked){
      int a=arr[x][y];
      arr[x][y]=arr[holdX][holdY];
      arr[holdX][holdY]=a;
      firstClicked=false;
    }else{
      holdX=x;
      holdY=y;
      firstClicked=true;
    }
  }
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      int t=arr[i][j];
      //println(i+" "+j);
      if((i==7||cntBits(t^arr[i+1][j])==1)&&(i==0||cntBits(t^arr[i-1][j])==1)&&(j==7||cntBits(t^arr[i][j+1])==1)&&(j==0||cntBits(t^arr[i][j-1])==1)){
      col(100,200,100);
      rect(100*i+5,100*j+5,90,90);
      }
    }
  }
  fill(100,100,200);
  if(firstClicked)rect(100*holdX+5,100*holdY+5,90,90);
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      col(200,100,100);
      text(toBin(arr[i][j]),100*i+5,100*j+55);
    }
  }
}
int cntBits(int a){
  int ret=0;
  while(a!=0){
    ret+=a%2;
    a/=2;
  }
  return ret;
}
String toBin(int a){
  String ret="";
  if(a==0)return "0";
  while(a!=0){
    ret=a%2+ret;
    a/=2;
  }
  return ret;
}
boolean beenPressed=false;
boolean clicked(){
  if(mousePressed){
    beenPressed=true;
  }else if(beenPressed){
    beenPressed=!beenPressed;
    return true;
  }
  return false;
}
void col(int r,int g,int b){
  fill(r,g,b);
  stroke(r,g,b);
}
void col(int gS){
  fill(gS);
  stroke(gS);
}
