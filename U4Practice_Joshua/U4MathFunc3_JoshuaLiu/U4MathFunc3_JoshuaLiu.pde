//Joshua Liu
//April 26,2019
//Mr.Rosen
//
int coneRadius,coneHeight;
float coneSurfaceArea;

//Introduction
void introduction(){
  println("Cone surface area program");
  println("-------------------------");
  println("This program will find the surface area of a cone given the radius and height\n");
}

//User Input
void userInput(){
  coneRadius=getInt("Enter the radius of the cone:");
  coneHeight=getInt("Enter the height of the cone:");
}

//Display
void display(){
  coneSurfaceArea=PI*coneRadius*(coneRadius+sqrt((float)coneRadius*coneRadius+(float)coneHeight*coneHeight));
  println("\n\nWith a radius of "+coneRadius+" and a height of "+coneHeight+", the surface area of the cone will be "+coneSurfaceArea+".");
}

//Setup
void setup(){
  introduction();
  userInput();
  display();
}
