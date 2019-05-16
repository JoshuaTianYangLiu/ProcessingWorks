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
  int squareX=(mouseX-5)/20;
  int squareY=(mouseY-5)/20;
  println(mouseX);
  for(int i=0; i<20; i++){
    if(squareX<30&&squareX>=0&&(i==19||particle[i+1][squareX]!=-1)){
      col(160);
      rect(20*squareX+5,20*i+5,15,15);
      break;
    }else if(squareX<30&&squareX>=0&&particle[i][squareX]==-1){
      col(200);
      rect(20*squareX+5,20*i+5,15,15);
    }
  }
  if(squareX<30&&squareY<20&&clicked()&&particle[squareY][squareX]==-1){
    place(squareX,squareY);
  }
  update();
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
void place(int x,int y){
  if(x<30&&x>=0&&y<20&&y>=0){
    particle[y][x]=1;
  }
}
void update(){
  for(int i=0; i<20; i++){
    for(int j=0; j<30; j++){
      if(particle[i][j]!=-1){
        col(100,0,0);
        particle[i][j]++;
        rect(20*j+5,20*i+5,15,15);
      }
      if(particle[i][j]==10){
        if(i!=19&&particle[i+1][j]==-1){
          particle[i][j]=-1;
          place(j,i+1);
        }else if(i!=19&&j!=0&&j!=29&&particle[i+1][j+1]==-1&&particle[i+1][j-1]==-1){
          particle[i][j]=-1;
          if(round(random(0,1))==0) place(j+1,i+1);
          else place(j-1,i+1);
        }else if(i!=19&&j!=0&&particle[i+1][j-1]==-1){
          particle[i][j]=-1;
          place(j-1,i+1);
        }else if(i!=19&&j!=29&&particle[i+1][j+1]==-1){
          particle[i][j]=-1;
          place(j+1,i+1);
        }
      }
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
