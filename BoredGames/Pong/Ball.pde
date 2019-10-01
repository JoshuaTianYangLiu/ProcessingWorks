class Ball{
  float x,y;
  float r=15;
  Vector v=new Vector(20,30);
  Ball(int xV,int yV){
    x=xV;
    y=yV;
  }
  void updateBall(){
    Pair p=v.toRectForm();
    x+=p.first;
    y+=p.second;
  }
  
  void bounceBall(){
    //top
    float xT=Boundaries.closestSideX(b,0,800);
    float yT=Boundaries.closestSideY(b,0,10);
    float d=sqrt(xT*xT+yT*yT);
    if(d<=b.r){
      v.setMagnitude(360-v.magnitude);
    }
    //bottom
    xT=Boundaries.closestSideX(b,0,800);
    yT=Boundaries.closestSideY(b,490,10);
    d=sqrt(xT*xT+yT*yT);
    if(d<=b.r){
      v.setMagnitude(360-v.magnitude);
    }
    //left
    xT=Boundaries.closestSideX(b,0,10);
    yT=Boundaries.closestSideY(b,0,500);
    d=sqrt(xT*xT+yT*yT);
    if(d<=b.r){
      v.setMagnitude(180-v.magnitude);
    }
    //right
    xT=Boundaries.closestSideX(b,790,10);
    yT=Boundaries.closestSideY(b,0,500);
    d=sqrt(xT*xT+yT*yT);
    if(d<=b.r){
      v.setMagnitude(180-v.magnitude);
    }
  }
  void drawBall(){
    ellipse(x,y,r,r);
  }
}
