//Global Variable 

float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
color  buttonColor, yellow=#FFF700, purple=#E334F7, white=#FFFFFF, resetColor=white, red=#FF0009;
String title = "X";
int titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
void setup() {
  //Geometry
  fullScreen();
  noStroke();
  //popularion
  titleFont = createFont ("Arial", 5);
  buttonX = displayWidth*124/128;
  buttonY = displayHeight*0/128;
  buttonWidth = displayWidth*128/128;
  buttonHeight = displayHeight*4/128;
  buttonX1 = displayWidth*2/8;
  buttonY1 = displayHeight*3/8;
  buttonWidth1 = displayWidth*4/8;
  buttonHeight1 = displayHeight*6/24;
  titleX = displayWidth*125/128;
  titleY = displayHeight*2/128;
  titleWidth = displayWidth*127/128;
  titleHeight = displayHeight*3/128;
}//End setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
  if (mouseX >= buttonX1 && mouseY >= buttonY1 && mouseX <= buttonX1+buttonWidth1 &&  mouseY <= buttonY1+buttonHeight1) {
    buttonColor = color(random(255), random(255), random(255));  //color(random(255), random(255), random(255));
  } else {
    buttonColor = purple;
  }//End IF Button Colour
  fill(buttonColor);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(resetColor);
  println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) {
    buttonColor = red; //color(random(255), random(255), random(255));
  } else {
    buttonColor = white;
  }//End IF Button Colour
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetColor);
  fill(red);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  text(titleX, titleY, titleWidth, titleHeight);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()

void keyPressedO() {
}//End keyPressed()
