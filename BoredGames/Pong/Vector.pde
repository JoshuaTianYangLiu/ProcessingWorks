class Vector{
  float direction,magnitude;
  Vector(float dir,float mag){
    direction=dir;
    magnitude=mag;
  }
  void setMagnitude(float mag){
    magnitude=mag;
    magnitude%=360;
  }
  Pair toRectForm(){
    float x=direction*cos(radians(magnitude));
    float y=direction*sin(radians(magnitude));
    return new Pair(x,y);
  }
}
