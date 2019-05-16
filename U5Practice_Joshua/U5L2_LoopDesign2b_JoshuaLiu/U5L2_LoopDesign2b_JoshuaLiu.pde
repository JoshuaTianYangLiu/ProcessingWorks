//Joshua Liu
//May 9,2019
//Mr.Rosen
//Exercise 3 b

void setup(){
  size(200,200);
  background(255);
  float w=200;
  while(w>0){
    stroke(0);
    fill(w);
    ellipse(100,100,w,w);
    w-=20;
  }
}
