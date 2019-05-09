//Joshua Liu
//May 6, 2019
//Mr.Rosen
//A guessing game program


//Declaration
int guess;
int answer;
int tries=3;
//Program title
void title(){
  println("\t\tGuessing game");
}
//program introduction
void introduction(){
  title();
  randNum();
  println("Try to guess a number between 10 and 30");
}
//User input
void userInput(){
  guess=getInt("Enter your guess:");
  //Continue until user inputs a valid guess
  while(guess<10||guess>30){
    println("Please enter a number between 10 and 30");
    guess=getInt("Enter your guess:");
  }
}
//Display
void display(){
  //Checks where your guess is relative to the answer
  if(guess==answer)println("Hot damn, you got it!");
  else if(guess<answer)println(guess+" is too low!");
  else if(guess>answer)println(guess+" is too high!");
}
//Generate random number
void randNum(){
  answer=(int)random(9,30)+1;
}
//Ending message
void goodbye(){
  //If they got the right answer then they get the first message, else they get the second message
  if(guess==answer)println("Thank you for using this program. Great job getting the right number! You guessed it in "+(3-tries)+" tries!");
  else println("Thank you for using this program. Hope you have a nice day. The correct answer was "+answer+".");
}
void setup(){
  introduction();
  println(answer);
  while(tries>0&&guess!=answer){
    println("You have "+tries--+" guesses left");
    userInput();
    display();
  }
  goodbye();
}
