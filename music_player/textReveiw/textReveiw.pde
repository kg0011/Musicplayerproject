//Global Variables
float textRectX, textRectY, textRectWidth, textRectHeight;
PFont font;
color purpleInk=#AF00FF, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, blue content
String string = "ugly umburger";
//
void setup() {
  size(700, 500); //fullscreen(); //displayWidth & displayHeight
  //
  //Population, from display
  textRectX = width*1/5;
  textRectY = height*1/10;
  textRectWidth = width*3/5;
  textRectHeight = height*1/10;
  //
  rect(textRectX, textRectY, textRectWidth, textRectHeight);
  /*
  println("Start of Consol");
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
  */
  font = createFont ("verdana bold", 55); //Verify font exists
  //Tools / create font / find font / do not press "ok", known bug
  //
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see processing.org / reference
  //Horizontal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  int textSize = 25; //Change the number until it fits, largest font size
  textFont(font, textSize);
  //
  //Printing text on the screen (CANVAS)
  text(string, textRectX, textRectY, textRectWidth, textRectHeight);
  //
  fill(resetWhiteInk); //reset
  //
}//End setup
//
void draw() {}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {}//end mousePressed
//
//End Main Program
