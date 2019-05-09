int num1;
int num2;
int num3;
int answer,answer1,answer2;
float answer3,answer4;
void title(){
  println("Math Testing Program");
}
void introduction(){
  title();
  print("This program will do all four math functions");
  println("with two numbers entered by you!");
}
void userInput(){
  num1=getInt("Enter an integer number:");
  num2=getInt("Enter an integer number:");
  num3=getInt("Enter an integer number:");
}
void display(){
  print("Math Equation is:\t\t");
  println("Result\t");
  answer=num1+num2+num3;
  println(num1,"+",num2,"+",num3,"\t\t\t","=",answer);
  answer1=num1-num2-num3;
  println(num1,"-",num2,"-",num3,"\t\t\t","=",answer1);
  answer2=num1*num2*num3;
  println(num1,"*",num2,"*",num3,"\t\t\t","=",answer2);
  answer3=num1/num2/num3;
  println(num1,"/",num2,"/",num3,"\t\t\t","=",answer3);
  answer4=float(num1)/float(num2)/float(num3);
  println(num1,"/",num2,"/",num3,"\t\t\t","=",answer4);
}
void setup(){
  introduction();
  userInput();
  display();
}
