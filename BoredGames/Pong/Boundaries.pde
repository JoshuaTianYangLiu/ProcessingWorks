static class Boundaries{
  //rect(0,0,800,10);
  //rect(0,0,10,500);
  //rect(790,0,10,500);
  //rect(0,490,800,10);
  static boolean isOverlapping(Ball b){
    float xT=closestSideX(b,0,800);
    float yT=closestSideY(b,0,10);
    float d=sqrt(xT*xT+yT*yT);
    if(d<=b.r)return true;
    xT=closestSideX(b,0,10);
    yT=closestSideY(b,0,500);
    d=sqrt(xT*xT+yT*yT);
    if(d<=b.r)return true;
    xT=closestSideX(b,790,10);
    yT=closestSideY(b,0,500);
    d=sqrt(xT*xT+yT*yT);
    if(d<=b.r)return true;
    xT=closestSideX(b,0,800);
    yT=closestSideY(b,490,10);
    d=sqrt(xT*xT+yT*yT);
    if(d<=b.r)return true;
    return false;
  }
  static float closestSideX(Ball b,int x,int w){
    float testX = b.x;
    if (b.x < x)         testX = x;  
    else if (b.x > x+w) testX = x+w; 
    return b.x-testX;
  }
  static float closestSideY(Ball b,int y,int h){
    float testY = b.y;
    if (b.y < y)         testY = y; 
    else if (b.y > y+h) testY = y+h;
    return b.y-testY;
  }
}
