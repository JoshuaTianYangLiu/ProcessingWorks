//Joshua Liu
//May 14, 2019
//Mr.Rosen
//A program to calculate the cost of mailing a letter based on the weight of the letter

//Variable declaration
char choiceInput;
int packageWeight;

void setup(){
  title();
  introduction();
  while(true){
    mainMenu();
    if(choiceInput!='a'){
      goodbye();
      break;
    }
    userInput();
    display();
  }
}

//Title
void title(){
  println("\t\tPackage calculator program");
}

//Introduction
void introduction(){
  println("This program calculates the cost of mailing your package based on weight");
}

//Main Menu
void mainMenu(){
  println("\nEnter 'a' to calculate the package program, enter any other key to exit.");
  choiceInput=getChar("a) Calculate cost\nPress any other key to exit.");  //Get input for mainMenu()
}
void userInput(){
  packageWeight=getInt("Please enter the weight of your package in grams.");  //Get input for display()
  while(packageWeight<=0){
    //Error trap
    println("Please enter a number greater than 0.");
    packageWeight=getInt("Please enter a number greater than 0.");
  }
}

//Display
void display(){
  print("You will have to pay ");
  if(packageWeight<=100)print("$1.80,");  //If the weight is <= 100
  else if(packageWeight<=200)print("$2.95,");   //If the weight is >100 and <=200
  else if(packageWeight<=300)print("$4.10,");   //If the weight is >200 and <=300
  else if(packageWeight<=400)print("$4.70,");   //If the weight is >300 and <=400
  else if(packageWeight<=500)print("$5.05,");   //If the weight is >400 and <=500
  else{
    float addedCost=1.2*((packageWeight-500)/50);  //Calculates the additional cost of $1.20 every additional 50 grams
    print("$"+(5.05+addedCost)+",");
  }
  println(" for a weight of "+packageWeight+" grams.");
}

//Goodbye
void goodbye(){
  println("Thanks for using this program\nCreated by Joshua Liu");
}
