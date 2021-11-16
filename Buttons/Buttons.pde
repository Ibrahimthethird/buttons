//Global Variable 

float buttonX, buttonY, buttonWidth, buttonHeight;
color  buttonColor, yellow=#FFF700, purple=#E334F7, white=#FFFFFF, resetColor=white;

void setup() {
  //Geometry
  fullScreen();
  //popularion
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) {
    buttonColor = color(random(255), random(255), random(255));
  } else {
    buttonColor = purple;
  }//End IF Button Colour
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetColor);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()

void keyPressedO() {
}//End keyPressed()
