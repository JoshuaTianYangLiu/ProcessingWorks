//Joshua Liu
//May 3, 2019
//Mr.Rosen
//This program finds if you can sleep on time based on the number of hours you have at home and the time you have for homework

void setup() {
  title();
  intro();
  int arriveHomeTime=getInt("Enter the hour at which you arrive home");
  int sleepTime=getInt("Enter the house at which you sleep");
  int hoursForHW=getInt("Enter the number of hours you need for home work");
  int timeAtHome=sleepTime-arriveHomeTime;
  if (timeAtHome>=hoursForHW)
    println("Can sleep on time");
  else
    println("Must stay up late");
}
void title(){
  println("Sleep homework program");
}
void intro(){
  println("This program checks if you can still sleep on time based on the number of hours you have at home and the how long homework will take");
}
