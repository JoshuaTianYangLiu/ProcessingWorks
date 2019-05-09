//Joshua Liu
//April 12,2019
//Mr.Rosen
//Draws a windsurfer on surfing on the beachr

void setup(){
   size(800,500);
   background(#87ceeb);
   smooth();
}
int x=-500;
void draw(){
  background();
  windsurfer();
}
void background(){
  strokeWeight(1);
  //Island
  fill(#c2b280);
  stroke(#c2b280);
  ellipse(400,350,400,300);
  
  //Ocean
  fill(#1e90ff);
  stroke(#1e90ff);  
  rect(0,300,800,200);
  
  //Birds
  fill(0,0);
  stroke(255);
  strokeWeight(2);
  arc(600,100,50,25,PI,3*PI/2);
  arc(550,100,50,25,3*PI/2,2*PI);
  arc(200,150,50,25,PI,3*PI/2);
  arc(150,150,50,25,3*PI/2,2*PI);
  arc(400,250,50,25,PI,3*PI/2);
  arc(350,250,50,25,3*PI/2,2*PI);
  
  //Sun
  fill(#f9d71c);
  stroke(#f9d71c);
  ellipse(800,0,200,200);
}
void windsurfer(){
  //Pole
  fill(255);
  stroke(255);
  strokeWeight(5);
  line(450+x,350,450+x,450);
  
  //Board
  ellipse(400+x,450,200,25);
  strokeWeight(2);
  
  //Sails
  stroke(#00a4e7);
  fill(#00a4e7);
  triangle(450+x,350,450+x,400,475+x,375);
  stroke(#ff5b18);
  fill(#ff5b18);
  quad(450+x,400,475+x,375,475+x,425,450+x,450);
  
  //Head
  stroke(100);
  fill(100);
  ellipse(375+x,350,50,50);
  
  //Body arms and legs
  strokeWeight(10);
  line(375+x,375,375+x,425);
  line(375+x,425,350+x,450);
  line(375+x,425,400+x,450);
  line(375+x,400,350+x,375);
  line(375+x,400,400+x,375);
  
  //Sharkfin
  x=x-400;
  triangle(x+25,425,x+65,425,x+75,400);
  x=x+400;
  x=x+5;
}
