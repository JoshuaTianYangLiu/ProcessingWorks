//Joshua Liu
//May 1,2019
//Mr.Rosen
//Finds out which school you should be in based on the current year and birth year.

//Declaration Section
int birthYear,currentYear;
//Program title
void title(){
  println("\t\t\tAge program");
}
//Program Introduction
void introduction(){
  title();
  println("\t\tThis program will help you determine how old you are");
}

//User input
void userInput(){
  birthYear=getInt("Please enter your birth year: ");
  currentYear=getInt("Please enter the current year: ");
}

//Processing & Output
void display(){
  int age;
  //Age calculation
  age=currentYear-birthYear;
  //Output using is structure
  if(age>21){
    println(age+" is too old for high school!");
    println("You are probably working now");
  }else if(age>=14){
    println(age+" is just right for high school!");
  }else if(age>=12){
    println(age+" is just right for middle school!");
  }else if(age>=0){
    println(age+" is just right for elementary school!");
  }
}
void setup(){
  introduction();
  userInput();
  display();
}

//End program
