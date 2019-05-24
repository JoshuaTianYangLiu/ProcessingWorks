int currentWindow=1;
int sineWaveT=0;
PGraphics foreGround;
int mainMenuBoxes=150;
PImage bg;

//character
int h=0, s=100, b=100;
int colourSquareX=400, colourSquareY=150;
int characterX=0, characterY=0;
color characterHairOne=color(152, 104, 88);
color characterHairTwo=color(104, 72, 56);
color characterPantsOne=color(99, 173, 242);
color characterPantsTwo=color(72, 104, 176);
color characterPantsThree=color(56, 104, 176);
boolean chosenHair=true;
//0 is splash screen
//1 is main menu
//2 is play
//3 is levels
//4 is character
//5 is instructions
//6 is quit
//https://www.youtube.com/watch?v=j-ZLDEnhT3Q 12:37
void setup() {
  size(800, 500);
  smooth();
  foreGround=createGraphics(800, 500);
  bg = loadImage("splashScreenBG.jpg");
}
void draw() {
  if (currentWindow==0) {
    splashScreen();
    if (currentWindow==1) {
      //setup code for mainMenu
    }
  } else if (currentWindow==1) {
    mainMenu();
    if (currentWindow==2) {
    } else if (currentWindow==3) {
    } else if (currentWindow==4) {
      strokeWeight(1);
      background(200);
      stroke(200);
      fill(200);
      rect(colourSquareX, colourSquareY, 255, 255);
      colorMode(HSB);
      drawColourSquare();
    } else if (currentWindow==5) {
    } else if (currentWindow==6) {
    }
  } else if (currentWindow==2) {
  } else if (currentWindow==3) {
  } else if (currentWindow==4) {
    colourPicker();
  }
}
void drawColourSquare() {
  for (int i=0; i<256; i++) {
    for (int j=0; j<256; j++) {
      stroke(h, j, 255-i);
      point(j+colourSquareX, i+colourSquareY);
    }
  }
}
void colourPicker() {
  characterX=0;
  characterY=100;
  stroke(200);
  fill(200);
  rect(colourSquareX+s-3, colourSquareY+255-b+3, 6, -6);

  //This is to match the pixels that the pointer was on
  colorMode(HSB);
  for (int i=max(s-3, 0); i<=min(s+3, 255); i++) {
    for (int j=max(b-3, 0); j<=min(b+3, 255); j++) {
      stroke(h, i, j);
      point(i+colourSquareX, 255+colourSquareY-j);
    }
  }
  stroke(100, 100, 200);
  fill(100, 100, 200);
  rect(450, 90, 200, 50);
  rect(450, 15, 200, 50);
  if (mousePressed) {
    if (mouseX<=650&&mouseX>=450&&mouseY<=65&&mouseY>=15) {
      h=(int)hue(characterHairOne);
      s=(int)saturation(characterHairOne);
      b=(int)brightness(characterHairOne);
      chosenHair=true;
      drawColourSquare();
      colorMode(RGB);
      stroke(200);
      fill(200);
      rect(colourSquareX, colourSquareY, 255, 255);
      colorMode(HSB);
      drawColourSquare();
    } else if (mouseX<=650&&mouseX>=450&&mouseY<=140&&mouseY>=90) {
      h=(int)hue(characterPantsOne);
      s=(int)saturation(characterPantsOne);
      b=(int)brightness(characterPantsOne);
      chosenHair=false;
      colorMode(RGB);
      stroke(200);
      fill(200);
      rect(colourSquareX, colourSquareY, 255, 255);
      colorMode(HSB);
      drawColourSquare();
    }
  }

  if (chosenHair) {
    characterHairOne=color(h, s, b);
    characterHairTwo=color(h, s, b*.9);
    stroke(150, 255, 255);
    fill(150, 255, 255);
    rect(450, 15, 200, 50);//TODO change it to a more appeasing colour
  } else {
    characterPantsOne=color(h, s, b);
    characterPantsTwo=color(h, s, b*.65);
    characterPantsThree=color(h, s, b*.6);
    stroke(150, 255, 255);
    fill(150, 255, 255);
    rect(450, 90, 200, 50);
  }
  fill(200, 100, 100);
  textSize(48);
  text("Hair", 450, 65);
  text("Pants", 450, 140);
  colorMode(RGB);
  colourPickerSample();

  colorMode(HSB);
  for (int i=0; i<256; i++) {
    stroke(i, 255, 255);
    line(colourSquareX+300, i+colourSquareY, colourSquareX+325, i+colourSquareY);
  }
  if (mousePressed) {
    if (mouseX<=colourSquareX+255&&mouseX>=colourSquareX&&mouseY<=colourSquareY+255&&mouseY>=colourSquareY) {  //The square
      s=mouseX-colourSquareX;
      b=255-mouseY+colourSquareY;
    } else if (mouseX<=colourSquareX+325&&mouseX>=colourSquareX+300&&mouseY<=colourSquareY+255&&mouseY>=colourSquareY) {  //The slide
      h=mouseY-colourSquareY;

      //To redraw a neutral background
      colorMode(RGB);
      stroke(200);
      fill(200);
      rect(colourSquareX, colourSquareY, 255, 255);

      //Redraw square
      colorMode(HSB);
      drawColourSquare();
    }
  }

  //Draws the pointer to where the mouse is
  colorMode(RGB);
  stroke(255);
  fill(255);
  line(colourSquareX+300, h+colourSquareY, colourSquareX+325, h+colourSquareY);
  ellipse(s+colourSquareX, colourSquareY+255-b, 5, 5);

  //Main menu
  if (mouseX>=550&&mouseX<=750&&mouseY>=425&&mouseY<=475) {
    fill(100,200,200);
    stroke(100,200,200);
    if (mousePressed) currentWindow=1;
  }
  textSize(30);
  rect(550, 425, 200, 50);
  fill(100, 100, 200);
  text("Main Menu", 575, 460);
}
void mainMenu() {
  background(bg);
  //Do a background gameplay of your character
  PFont font = loadFont("YuGothicUI-Bold-48.vlw");
  stroke(100);
  strokeWeight(3);
  noFill();
  rect(300, 100, 200, 50);
  rect(300, 175, 200, 50);
  rect(300, 250, 200, 50);
  rect(300, 325, 200, 50);
  rect(300, 400, 200, 50);
  fill(255);
  textFont(font);
  text("Escape Room", 250, 50);
  textSize(30);
  text("Play", 370, 135);
  text("Levels", 355, 210);
  text("Character", 335, 285);
  text("Instructions", 320, 360);
  text("Quit", 370, 435);
  if (mouseX<=500&&mouseX>=300&&mouseY<=150&&mouseY>=100) {
    if (mainMenuBoxes+3<=255)mainMenuBoxes+=3;
    fill(mainMenuBoxes);
    stroke(mainMenuBoxes);
    rect(300, 100, 200, 50);
    fill(255-mainMenuBoxes);
    text("Play", 370, 135);
    if (mousePressed) currentWindow=2;
  } else if (mouseX<=500&&mouseX>=300&&mouseY<=225&&mouseY>=175) {
    if (mainMenuBoxes+3<=255)mainMenuBoxes+=3;
    fill(mainMenuBoxes);
    stroke(mainMenuBoxes);
    rect(300, 175, 200, 50);
    fill(255-mainMenuBoxes);
    text("Levels", 355, 210);
    if (mousePressed) currentWindow=3;
  } else if (mouseX<=500&&mouseX>=300&&mouseY<=300&&mouseY>=250) {
    if (mainMenuBoxes+3<=255)mainMenuBoxes+=3;
    fill(mainMenuBoxes);
    stroke(mainMenuBoxes);
    rect(300, 250, 200, 50);
    fill(255-mainMenuBoxes);
    text("Character", 335, 285);
    if (mousePressed) currentWindow=4;
  } else if (mouseX<=500&&mouseX>=300&&mouseY<=375&&mouseY>=325) {
    if (mainMenuBoxes+3<=255)mainMenuBoxes+=3;
    fill(mainMenuBoxes);
    stroke(mainMenuBoxes);
    rect(300, 325, 200, 50);
    fill(255-mainMenuBoxes);
    text("Instructions", 320, 360);
    if (mousePressed) currentWindow=5;
  } else if (mouseX<=500&&mouseX>=300&&mouseY<=450&&mouseY>=400) {
    if (mainMenuBoxes+3<=255)mainMenuBoxes+=3;
    fill(mainMenuBoxes);
    stroke(mainMenuBoxes);
    rect(300, 400, 200, 50);
    fill(255-mainMenuBoxes);
    text("Quit", 370, 435);
    if (mousePressed) currentWindow=6;
  } else {
    mainMenuBoxes=100;
  }
}
void splashScreen() {

  float lightAngle=30*sin(radians(sineWaveT))+90;
  sineWaveT+=3;
  float lampX=200*cos(radians(lightAngle))+400, lampY=200*sin(radians(lightAngle));
  textSize(50);
  PFont font = loadFont("YuGothicUI-Bold-48.vlw");
  PImage lantern=loadImage("lantern.png");
  foreGround.beginDraw();
  foreGround.smooth();
  foreGround.background(bg);
  foreGround.stroke(255);
  foreGround.fill(255);
  foreGround.textFont(font);
  foreGround.text("Josh's", 50, 50);
  foreGround.text("Escape", 150, 100);
  foreGround.text("Room", 250, 150);
  foreGround.text("Click \"Play\" to continue", 150, 250);
  foreGround.textSize(24);
  foreGround.text("Good Luck, Have Fun!", 50, 450);
  foreGround.stroke(100);
  if (mouseX<=750&&mouseX>=600&mouseY<=75&&mouseY>=25) foreGround.fill(100, 200, 100);//TODO change colour to nicer colour
  foreGround.rect(600, 25, 150, 50);
  foreGround.fill(100);
  foreGround.textSize(48);
  foreGround.text("Play", 625, 63);
  foreGround.endDraw();
  foreGround.loadPixels();
  //Cite 1
  for (int i=0; i<800; i++) {
    for (int j=0; j<500; j++) {
      int loc=i+j*800;
      float r=red(foreGround.pixels[loc]);
      float g=green(foreGround.pixels[loc]);
      float b=blue(foreGround.pixels[loc]);
      float d = min(dist(lampX, lampY, i, j), dist(mouseX, mouseY, i, j));
      float f=map(d, 0, 100, 1.5, 0);
      foreGround.pixels[loc]=color(r*f, g*f, b*f);
    }
  }
  image(foreGround, 0, 0);
  stroke(255);
  line(400, 0, lampX, lampY);
  translate(lampX, lampY);
  rotate(radians(lightAngle-90));
  image(lantern, -16, -17, 32, 34);
  if (mousePressed) {
    if (mouseX<=750&&mouseX>=600&mouseY<=75&&mouseY>=25) {
      currentWindow=1;
    }
  }
}
void colourPickerSample() {
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(70+characterX, 100+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(70+characterX, 110+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 80+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(80+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(80+characterX, 110+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 120+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 130+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 140+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 210+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(80+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(90+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(90+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(90+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(90+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(90+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(90+characterX, 120+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(90+characterX, 130+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(90+characterX, 140+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(90+characterX, 150+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(90+characterX, 200+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(90+characterX, 210+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(90+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(90+characterX, 230+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(100+characterX, 60+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(100+characterX, 70+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(100+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(100+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(100+characterX, 100+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(100+characterX, 110+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(100+characterX, 120+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(100+characterX, 130+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(100+characterX, 140+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(100+characterX, 150+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(100+characterX, 160+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(100+characterX, 190+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(100+characterX, 200+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(100+characterX, 210+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(100+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(100+characterX, 230+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(110+characterX, 50+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(110+characterX, 60+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(110+characterX, 70+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(110+characterX, 80+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(110+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(110+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(110+characterX, 110+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(110+characterX, 120+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(110+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(110+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(110+characterX, 150+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(110+characterX, 160+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(110+characterX, 170+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(110+characterX, 180+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(110+characterX, 190+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(110+characterX, 200+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(110+characterX, 210+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(110+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(110+characterX, 230+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(110+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(110+characterX, 250+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(120+characterX, 50+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(120+characterX, 60+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(120+characterX, 70+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(120+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(120+characterX, 90+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(120+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(120+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(120+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(120+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(120+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(120+characterX, 150+characterY, 9, 9);
  stroke(152, 152, 160);
  fill(152, 152, 160);
  rect(120+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(120+characterX, 170+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(120+characterX, 180+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(120+characterX, 190+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(120+characterX, 200+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(120+characterX, 210+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(120+characterX, 220+characterY, 9, 9);
  stroke(characterPantsTwo);
  fill(characterPantsTwo);
  rect(120+characterX, 230+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(120+characterX, 240+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(120+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(120+characterX, 260+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(130+characterX, 40+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(130+characterX, 50+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(130+characterX, 60+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(130+characterX, 70+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(130+characterX, 80+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(130+characterX, 90+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(130+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(130+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(130+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(130+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(130+characterX, 140+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(130+characterX, 150+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(130+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(130+characterX, 170+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(130+characterX, 180+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(130+characterX, 190+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(130+characterX, 200+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(130+characterX, 210+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(130+characterX, 220+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(130+characterX, 230+characterY, 9, 9);
  stroke(characterPantsTwo);
  fill(characterPantsTwo);
  rect(130+characterX, 240+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(130+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(130+characterX, 260+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(140+characterX, 40+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(140+characterX, 50+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(140+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(140+characterX, 70+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(140+characterX, 80+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(140+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(140+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(140+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(140+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(140+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(140+characterX, 140+characterY, 9, 9);
  stroke(152, 152, 160);
  fill(152, 152, 160);
  rect(140+characterX, 150+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(140+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(140+characterX, 170+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(140+characterX, 180+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(140+characterX, 190+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(140+characterX, 200+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(140+characterX, 210+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(140+characterX, 220+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(140+characterX, 230+characterY, 9, 9);
  stroke(characterPantsTwo);
  fill(characterPantsTwo);
  rect(140+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(140+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(150+characterX, 40+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(150+characterX, 50+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(150+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(150+characterX, 70+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(150+characterX, 80+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(150+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(150+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(150+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(150+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(150+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(150+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(150+characterX, 150+characterY, 9, 9);
  stroke(152, 152, 160);
  fill(152, 152, 160);
  rect(150+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(150+characterX, 170+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(150+characterX, 180+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(150+characterX, 190+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(150+characterX, 200+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(150+characterX, 210+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(150+characterX, 220+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(150+characterX, 230+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(150+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(160+characterX, 40+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(160+characterX, 50+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(160+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(160+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(160+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(160+characterX, 90+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(160+characterX, 100+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(160+characterX, 110+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(160+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(160+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(160+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(160+characterX, 150+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(160+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(160+characterX, 170+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(160+characterX, 180+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(160+characterX, 190+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(160+characterX, 200+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(160+characterX, 210+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(160+characterX, 220+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(160+characterX, 230+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(160+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(170+characterX, 40+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(170+characterX, 50+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(170+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(170+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(170+characterX, 80+characterY, 9, 9);
  stroke(characterHairOne);
  fill(characterHairOne);
  rect(170+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(170+characterX, 100+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(170+characterX, 110+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(170+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(170+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(170+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(170+characterX, 150+characterY, 9, 9);
  stroke(152, 152, 160);
  fill(152, 152, 160);
  rect(170+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(170+characterX, 170+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(170+characterX, 180+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(170+characterX, 190+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(170+characterX, 200+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(170+characterX, 210+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(170+characterX, 220+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(170+characterX, 230+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(170+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(180+characterX, 50+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(180+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(180+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(180+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(180+characterX, 90+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(180+characterX, 100+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(180+characterX, 110+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(180+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(180+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(180+characterX, 140+characterY, 9, 9);
  stroke(152, 152, 160);
  fill(152, 152, 160);
  rect(180+characterX, 150+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(180+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(180+characterX, 170+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(180+characterX, 180+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(180+characterX, 190+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(180+characterX, 200+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(180+characterX, 210+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(180+characterX, 220+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(180+characterX, 230+characterY, 9, 9);
  stroke(characterPantsTwo);
  fill(characterPantsTwo);
  rect(180+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(180+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(190+characterX, 50+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(190+characterX, 60+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(190+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(190+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(190+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(190+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(190+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(190+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(190+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(190+characterX, 140+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(190+characterX, 150+characterY, 9, 9);
  stroke(232, 232, 248);
  fill(232, 232, 248);
  rect(190+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(190+characterX, 170+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(190+characterX, 180+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(190+characterX, 190+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(190+characterX, 200+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(190+characterX, 210+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(190+characterX, 220+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(190+characterX, 230+characterY, 9, 9);
  stroke(characterPantsTwo);
  fill(characterPantsTwo);
  rect(190+characterX, 240+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(190+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(190+characterX, 260+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(200+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(200+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(200+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(200+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(200+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(200+characterX, 110+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(200+characterX, 120+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(200+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(200+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(200+characterX, 150+characterY, 9, 9);
  stroke(152, 152, 160);
  fill(152, 152, 160);
  rect(200+characterX, 160+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(200+characterX, 170+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(200+characterX, 180+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(200+characterX, 190+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(200+characterX, 200+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(200+characterX, 210+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(200+characterX, 220+characterY, 9, 9);
  stroke(characterPantsTwo);
  fill(characterPantsTwo);
  rect(200+characterX, 230+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(200+characterX, 240+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(200+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(200+characterX, 260+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(210+characterX, 60+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(210+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(210+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(210+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(210+characterX, 100+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(210+characterX, 110+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(210+characterX, 120+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(210+characterX, 130+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(210+characterX, 140+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(210+characterX, 150+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(210+characterX, 160+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(210+characterX, 170+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(210+characterX, 180+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(210+characterX, 190+characterY, 9, 9);
  stroke(characterPantsOne);
  fill(characterPantsOne);
  rect(210+characterX, 200+characterY, 9, 9);
  stroke(characterPantsThree);
  fill(characterPantsThree);
  rect(210+characterX, 210+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(210+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(210+characterX, 230+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(210+characterX, 240+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(210+characterX, 250+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(220+characterX, 70+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(220+characterX, 80+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(220+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(220+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(220+characterX, 110+characterY, 9, 9);
  stroke(48, 40, 40);
  fill(48, 40, 40);
  rect(220+characterX, 120+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(220+characterX, 130+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(220+characterX, 140+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(220+characterX, 150+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(220+characterX, 160+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(220+characterX, 190+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(220+characterX, 200+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(220+characterX, 210+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(220+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(220+characterX, 230+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(230+characterX, 80+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(230+characterX, 90+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(230+characterX, 100+characterY, 9, 9);
  stroke(characterHairTwo);
  fill(characterHairTwo);
  rect(230+characterX, 110+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(230+characterX, 120+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(230+characterX, 130+characterY, 9, 9);
  stroke(216, 160, 120);
  fill(216, 160, 120);
  rect(230+characterX, 140+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(230+characterX, 150+characterY, 9, 9);
  stroke(120, 64, 64);
  fill(120, 64, 64);
  rect(230+characterX, 200+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(230+characterX, 210+characterY, 9, 9);
  stroke(248, 208, 184);
  fill(248, 208, 184);
  rect(230+characterX, 220+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(230+characterX, 230+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(240+characterX, 100+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(240+characterX, 110+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(240+characterX, 130+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(240+characterX, 140+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(240+characterX, 210+characterY, 9, 9);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(240+characterX, 220+characterY, 9, 9);
}
