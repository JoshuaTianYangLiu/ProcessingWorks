//Joshua Liu
//May 3, 2019
//Mr.Rosen
//This program finds the amount of cones you can buy based on the amount of money you have and the price of a cone

void setup() {
  title();
  intro();
  
  float hasMoney, priceOfCone;
  hasMoney=getFloat("Enter the amount of money you have");
  priceOfCone=getFloat("Enter the price of an ice cream cone");
  int canBuy=(int)(hasMoney/priceOfCone);
  if (canBuy<=0)
    println("You cannot buy any cones");
  else
    println("You can buy "+canBuy+" cones for your friends");
}
void title(){
  println("Ice cream calculation program");
}
void intro(){
  println("This program finds how many friends you can treat with ice cream based on the amount of money you have and the cost of one ice cream");
}
