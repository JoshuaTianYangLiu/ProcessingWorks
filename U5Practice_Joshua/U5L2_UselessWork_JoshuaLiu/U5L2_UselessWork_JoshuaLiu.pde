//Joshua Liu
//May 9,2019
//Mr.Rosen
//Dynamically calculates the average of all the marks inputed
int input;
void setup(){
  title();
  int numOfTest=0;
  int totalMarks=0;
  while(true){
    userInput();
    if(input<0)break;
    totalMarks+=input;
    numOfTest++;
    println("The current mark is"+(float)totalMarks/(float)numOfTest+".");
  }
  println("The current mark is"+(float)totalMarks/(float)numOfTest+".");
}
void userInput(){
  input=getInt("Please enter a mark");
}
void title(){
  println("\t\tAverage mark calculator");
  intro();
}
void intro(){
  println("This program calculates the average of the marks while you enter them in.");
  println("To finish marking, put a value less than 0");
}
