//Joshua Liu
//March 26, 2019
//Mr.Rosen
//Draws three different non-overlapping ellipses
void setup(){
  size(800,500);
  design();
}
void design(){
  int a=25;
  ellipse(a,a,a,a);
  a=a+a+a;
  ellipse(a,a,a,a);
  a=a+a+a;
  ellipse(a,a,a,a);
}
