//Joshua Liu
//May 3, 2019
//Mr.Rosen
//This program finds if the first integer is a multiple of the second

void setup() {
  title();
  intro();
  int firstInt, secondInt;
  firstInt=getInt("Enter an integer");
  secondInt=getInt("Enter an integer");
  if (firstInt%secondInt==0)
    println(firstInt+" is a multiple of "+secondInt);
  else
    println(firstInt+" is not a multiple of "+secondInt);
}
void title(){
  println("Is a multiple program");
}
void intro(){
  println("This program finds if the first input is a multiple of the second input");
}
