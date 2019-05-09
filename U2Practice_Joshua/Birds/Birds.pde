void setup() 
{
  size(800, 500);
  background(255);
  for(int i=0; i<1000; i++)a[i]=new Birb(random(-300,300),random(-300,300));
}
Birb a[]=new Birb[1000];
float y=0;
float x=0;
float wingX;
float wingY;
void draw() 
{
  myBackground();
  for(int i=0; i<1000; i++)a[i].update();
}
void myBackground()
{
  background(255); //Background Colour
  noStroke();
  fill(#DBAAEA);
  rect(0, 0, 800, 166);
  fill(#EBB7F2);
  rect(0, 166, 800, 166);
  fill(#FFCBFC);
  rect(0, 332, 800, 166);
  noStroke();
  fill(255);   
  //Left Cloud
  arc(100, 150, 100, 50, PI, TWO_PI);
  ellipse(100, 130, 60, 40);
  //Right Cloud 
  arc(600, 80, 100, 50, PI, TWO_PI);
  ellipse(600, 58, 60, 40);
  //Sun
  fill(#F5BA23);
  ellipse(400, 500, 400, 400);
  fill(#FAAB00, 200);
  ellipse(400, 500, 500, 500);
}
