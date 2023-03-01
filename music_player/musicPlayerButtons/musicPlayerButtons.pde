//Global Variables
float buttonReferenceMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX, pauseY, pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float stopX, stopY;
//
void setup() {
  //Display
  size(1200, 700); //width, height
  //fullScreen(); //displaywidth, displayheight
  //
  //Population: visual data
  buttonReferenceMeasure = width * 1/12;
  buttonSide = buttonReferenceMeasure;
  spaceWidth = buttonReferenceMeasure * 1/2;
  spaceHeight = buttonReferenceMeasure;
  pauseWidth = buttonReferenceMeasure; //<----(remove?)
  //
  float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * 1/2;
  print("Confirming Center X:", centerX);
  print("/t Confirming Center Y:", centerY); //Illustrates a character escape
  //
  pauseX = centerX - buttonReferenceMeasure * 1/2;
  pauseY = centerY - buttonReferenceMeasure * 1/2;
  stopX = centerX - buttonReferenceMeasure * 1/2;
  stopY = centerY - buttonReferenceMeasure * 1/2;
  //
} //End setup
//
void draw() {
  //
  /*Note: draw the pause button first, in the middle
  All other buttons are drawn around it
  All pseudocode starts like rect( X, Y, Width, Height )
  */
  //
  //Confirming Local Variable Center X & Y garbage collected from setup()
  //print("Confirming Center X;", centerX);
  //println("/t Confirming Center Y:", centerY);
  //
  //Button Space
  //rect( spaceX, spaceY, spaceWidth, spaceHeight );
  //
  //Stop Button
  //rect( stopX, stopY, buttonSide, buttonSide ); //Layout
  //rect( stopX, stopY, buttonSide, buttonSide );
  //
  //Pause Button
  rect( pauseX, pauseY, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  //
  //Play Button
  //triangle( X1, Y1, X2, Y2, X3, Y3 ); //Layout
  //
  //Mute Button
  //Students to develop
  //
  //Fast Forawrd in the song
  //triangle( X1, Y1, X2, Y2, X3, Y3 ); //Layout
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Reverse in the song
  //triangle( X1, Y1, X2, Y2, X3, Y3 ); //Layout
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Next Button, skip file
  //triangle( X1, Y1, X2, Y2, X3, Y3 ); //Layout
  //rect( X, Y, Width, Height );
  //
  //Previous Button
  //rect( X, Y, Width, Height ); //Layout
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the song once
  //Students to develop
  //ellipse( X, Y, WidthDiammeter, HeigthDiammeter ); //Layout
  //ellipse( X, Y, WidthDiammeter, HeigthDiammeter );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the song infinitly
  //Students to develop
  //ellipse( X, Y, WidthDiammeter, HeigthDiammeter ); //Layout
  //ellipse( X, Y, WidthDiammeter, HeigthDiammeter );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Playlist (infinitly)
  //Student to develop
  //ellipse( X, Y, WidthDiammeter, HeigthDiammeter ); //Layout
  //ellipse( X, Y, WidthDiammeter, HeigthDiammeter );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
} //End draw
  //
  void keyPressed() {} //End keyPressed
  //
  void mousePressed() {} //End mousePressed
  //
  //End MAIN Program
