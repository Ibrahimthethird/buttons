//Global Variable 

float buttonX, buttonY, buttonWidth, buttonHeight;
color  buttonColor, yellow=#FFF700, purple=#E334F7, white=#FFFFFF, resetColor=white, red=#FF0009;

void setup() {
  //Geometry
  fullScreen();
  noStroke();
  //popularion
  buttonX = displayWidth*124/128;
  buttonY = displayHeight*0/128;
  buttonWidth = displayWidth*128/128;
  buttonHeight = displayHeight*4/128;
}//End setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) {
    buttonColor = red; //color(random(255), random(255), random(255));
  } else {
    buttonColor = white;
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
