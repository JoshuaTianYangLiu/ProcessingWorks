
void setup() {
  size(800, 500);
  background(255);
  smooth();
  rectMode(CORNERS);
}
void draw(){
  //CHANGE THIS SO IT IS HARD CODED!!!
  for (int i=0; i < 200; i++) {
    stroke(lerpColor(#3f4c6b, #606c88, i/200.0));
    line(0, i, 800, i);
  }
  //Mountians
  fill(#D3E5F7);
  stroke(#D3E5F7);
  beginShape();
  arc(80, 160, 240, 200, PI, 3*PI/2);
  vertex(80, 60);
  bezierVertex(180, 60, 180, 160, 400, 180);
  vertex(400, 500);
  vertex(-40, 500);
  vertex(-40, 160);
  endShape(CLOSE);
  fill(0, 0);
  stroke(#ECF7FF);
  strokeWeight(40);
  bezier(80, 80, 180, 80, 180, 180, 400, 200);
  arc(80, 180, 240, 200, PI, 3*PI/2);
  strokeWeight(1);



  fill(#D8E1EA);
  stroke(#D8E1EA);
  arc(820, 300, 1000, 440, PI, 3*PI/2);
  rect(280, 300, 800, 500);
  fill(0, 0);
  stroke(#EBF0F7);
  strokeWeight(30);
  arc(820, 285, 1000, 440, 2*PI/3, 3*PI/2);
  strokeWeight(1);

  fill(#C9D2E0);
  stroke(#C9D2E0);
  beginShape();
  vertex(0, 240);
  bezierVertex(280, 240, 340, 370, 800, 360);
  vertex(800, 500);
  vertex(0, 500);
  endShape(CLOSE);
  fill(0, 0);
  stroke(#FAFBFD);
  strokeWeight(40);
  bezier(0, 260, 280, 260, 340, 390, 800, 380);
  strokeWeight(5);
  fill(#FAFBFD);
  beginShape();
  vertex(360, 350);
  bezierVertex(600, 400, 600, 440, 400, 460);
  bezierVertex(360, 467, 360, 485, 380, 500);
  vertex(800, 500);
  vertex(800, 400);
  endShape();
  ellipse(450,415,100,20);
  //

  //Snowman
  strokeWeight(10);
  stroke(#8d5c3e);
  line(700, 330, 759, 279);
  strokeWeight(7);
  line(755, 267, 760, 280);
  strokeWeight(4);
  line(760, 281, 775, 275);
  strokeWeight(10);
  line(580, 330, 500, 270);
  strokeWeight(8);
  line(485, 268, 500, 270);
  strokeWeight(6);
  line(500, 270, 505, 255);
  fill(#E4F2FF);
  stroke(#E6F3FB);
  strokeWeight(10);
  ellipse(640, 460, 150, 150);
  ellipse(640, 330, 110, 110);
  ellipse(640, 240, 70, 70);
  stroke(100);
  point(630, 230);
  point(650, 230);
  strokeWeight(6);
  bezier(620, 255, 635, 265, 645, 265, 660, 255);
  
  //Text
  PFont font;
  font = loadFont("Constantia-Bold-48.vlw");
  textFont(font);
  fill(0);
  fill(#00B32C);
  text("S",20,380);
  text("a",71,380);
  text("o",119,380);
  text("s",179,380);
  text("r",253,380);
  text("e",300,380);
  text("i",345,380);
  text("g",392,380);
  text("!",440,380);
  fill(#B3000C);
  text("e",45,380);
  text("s",97,380);
  text("n",148,380);
  text("G",217,380);
  text("e",274,380);
  text("t",326,380);
  text("n",361,380);
  text("s",418,380);
  font=loadFont("SegoeScript-Bold-20.vlw");
  textFont(font);
  fill(#394166);
  text("From: Joshua",200,480);
}
