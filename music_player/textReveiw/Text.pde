//Global variables
float textRectX1, textRectY1, textRectWidth1, textRectHeight1;
float textRectX2, textRectY2, textRectWidth2, textRectHeight2;
float textRectX3, textRectY3, textRectWidth3, textRectHeight3;
PFont font;
color purpleInk=#AF00FF, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, blue content
String string1 = "ugly umburger";
String string2 = "Bottom of the page";
String string3 = "Middle";
//
void allText() {
  textDraw1();
  textDraw2();
  textDraw3();
}//End all text
//
void textSetup() { //Executed once
  //Population, from display
  //Must have CASE STUDY
  textRectX1 = textRectX2 = textRectX3 = width*1/5;
  textRectWidth1 = textRectWidth2 = textRectWidth3 = width*3/5;
  textRectHeight1 = textRectHeight2 = textRectHeight3 = height*1/10;
  textRectY1 = height*1/10;
  textRectY2 = height*8/10;
  textRectY3 = height*5/10;
  //
  //rect(textRectX1, textRectY1, textRectWidth1, textRectHeight1);
  rect(textRectX2, textRectY2, textRectWidth2, textRectHeight2);
  rect(textRectX3, textRectY3, textRectWidth3, textRectHeight3);
  //
  /*
  println("Start of Consol");
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
  */
  font = createFont ("verdana bold", 55); //Verify font exists
  //Tools / create font / find font / do not press "ok", known bug
  //
}//End text setup
//
void preTextDraw() {
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see processing.org / reference
  //Horizontal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  int textSize = 25; //Change the number until it fits, largest font size
  textFont(font, textSize);
  //
} //End pre text draw
void textDraw1() {
  preTextDraw();
  //
  //Paste here is text size will change depending on String
  textSize(25); //Change the number until it fits, largest font size
  //
  //Printing text on the screen (CANVAS)
  text(string1, textRectX1, textRectY1, textRectWidth1, textRectHeight1);
  //
  fill(resetWhiteInk); //reset
  //
}//End text draw 1
//
void textDraw2() {
  preTextDraw();
  //
  //Paste here is text size will change depending on String
  textSize(25); //Change the number until it fits, largest font size
  //
  //Printing text on the screen (CANVAS)
  text(string2, textRectX2, textRectY2, textRectWidth2, textRectHeight2);
  //
  fill(resetWhiteInk); //reset
  //
}//End text draw 2
//
void textDraw3() {
  preTextDraw();
  //
  //Paste here is text size will change depending on String
  textSize(25); //Change the number until it fits, largest font size
  //
  //Printing text on the screen (CANVAS)
  text(string3, textRectX3, textRectY3, textRectWidth3, textRectHeight3);
  //
  fill(resetWhiteInk); //reset
  //
}//End text draw 3
//
//End text Subprogram
