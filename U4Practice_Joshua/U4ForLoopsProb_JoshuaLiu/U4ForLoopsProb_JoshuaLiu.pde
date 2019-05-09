//Joshua Liu
//April 30, 2019
//Mr.Rosen
//A program that outputs ten lines of the 6 times table multiplied by the rage with the middle value entered by the user

int middle,answer;
void setup(){
  title();
  intro();
  prompt();
  println("\t\t\t\t\t\t\t\t\tMultiplicant\tMultiplier\tResult");
  for(int x=middle-4; x<=middle+5; x++){
    answer=x*6;
    println("\t\t\t\t\t\t\t\t\t6\t*\t"+x+"\t=\t"+answer);
  }
}

//Title
void title(){
  println("\t\t\t\t\t\t\t\t\t\t\t6 Times Tables\n");
}

//Intro
void intro(){
  println("This program outputs ten lines of the 6 times table multiplied by the rage with the middle value entered by the user\n");
}

//Prompt
void prompt(){
  middle=getInt("Enter the middle value: ");
  println();
}
