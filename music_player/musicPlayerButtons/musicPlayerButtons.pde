//Global Variables
float buttonReferenceMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX, pauseY, pauseX1, pauseY1, pauseX2, pauseY2;
float stopX, stopY, stopX1, stopY1, stopX2, stopY2, stopWidth, stopHeight;
float playX, playY, playX1, playY1, playX2, playY2;
//float mute
//float ff
//float rw
//float next
//float prev
//float loop1
//float loopInf
//float loopPlaylist
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

  //
  float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * 1/2;
  print("Confirming Center X:", centerX);
  print("/t Confirming Center Y:", centerY); //Illustrates a character escape
  //
  pauseX = centerX - buttonReferenceMeasure * 1/2;
  pauseY = centerY - buttonReferenceMeasure * 1/2;
  pauseX1 = centerX - buttonReferenceMeasure * 1/2;
  pauseY1 = centerY - buttonReferenceMeasure * 1/2;
  pauseX2 = centerX - buttonReferenceMeasure * -1/4;
  pauseY2 = centerY - buttonReferenceMeasure * 1/2;
  stopX = centerX - buttonReferenceMeasure * 1/2;
  stopY = centerY - buttonReferenceMeasure * 1/2;
  //playX = pauseX1 * 1/2;
  //playY = pauseY1 * 1/2;
  //playX1 = pauseX2 * 1/2;
  //playY1 = pauseY2 * 1/2;
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
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide );
  //rect( pauseX, pauseY, buttonSide * 1/4, buttonSide ); //Layout
  //rect( pauseX2, pauseY2, buttonSide * 1/4, buttonSide );
  //
  //Play Button
  //triangle( playX, playY, playX1, playY1, playX2, playY2 ); //Layout
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
