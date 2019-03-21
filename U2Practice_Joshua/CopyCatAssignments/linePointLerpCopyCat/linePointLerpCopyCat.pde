void setup(){
  stroke(0);
  smooth();

  size(500,500);
  fill(0);
  rect(0,0,500,500);
  color n =lerpColor(color(#f4aa42),color(#c4f441),1);
  fill(n);
  rect(50,50,400,400);
  strokeWeight(50);
  float x =lerp(0,500,.25);
  line(0,250,x,250);
  float x2 = lerp(0,500,.4);
  float x3 = lerp(0,500,.6);
  float x4 = lerp(0,500,.8);
  fill(0);
  point(x2,250);
  point(x3,250);
  point(x4,250);
}
