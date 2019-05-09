void setup(){
  size(800,500);
  background(255);
  for(int i=0; i<20; i++)
    for(int j=0; j<30; j++)
      particle[i][j]=-1;
}
int particle[][]=new int[20][30];
void draw(){
  col(220);
  for(int i=0; i<20; i++){
    for(int j=0; j<30; j++){
      rect(20*j+5,20*i+5,15,15);
    }
  }
  int catagory=(mouseX-5)/20;
  println(mouseX);
  for(int i=0; i<20; i++){
    if(catagory<30&&catagory>0&&(i==19||particle[i][catagory]!=-1)){
      col(180);
      rect(20*catagory+5,20*i+5,15,15);
    }else if(catagory<30&&catagory>0&&particle[i+1][catagory]==-1){
      col(200);
      rect(20*catagory+5,20*i+5,15,15);
    }
  }
}
void col(int r,int g,int b){
  fill(r,g,b);
  stroke(r,g,b);
}
void col(int gS){
  fill(gS);
  stroke(gS);
}
