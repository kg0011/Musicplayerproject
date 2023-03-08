//Global Variables
float buttonReferenceMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX, pauseY, pauseX1, pauseY1, pauseX2, pauseY2;
float stopX, stopY, stopX1, stopY1, stopX2, stopY2, stopWidth, stopHeight;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3;                     //( X3 and Y3 are for the box where you click to pause instead of the arrow only )
//float mute
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6, ffX7, ffY7;
float rvrX1, rvrY1, rvrX2, rvrY2, rvrX3, rvrY3, rvrX4, rvrY4, rvrX5, rvrY5, rvrX6, rvrY6, rvrX7, rvrY7;  //( ffX7, ffY7, rvrX7, and rvrY7 are also boxes for clicking on )
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
  print("Confirming Center Y:", centerY); //Illustrates a character escape
  //
  pauseX = centerX - buttonReferenceMeasure * 0.5;
  pauseY = centerY - buttonReferenceMeasure * 0.5;
  pauseX1 = centerX - buttonReferenceMeasure * 0.5;
  pauseY1 = centerY - buttonReferenceMeasure * 0.5;
  pauseX2 = centerX - buttonReferenceMeasure * -0.2;
  pauseY2 = centerY - buttonReferenceMeasure * 0.5;
  stopX = pauseX - buttonReferenceMeasure * 0;
  stopY = pauseY - buttonReferenceMeasure * -1.5;
  playX = pauseX - buttonReferenceMeasure * 0;                                   //Figure out how to move fast forward arrows to center (look at this code to help)
  playY = pauseY - buttonReferenceMeasure * -1;
  playX1 = pauseX2 - buttonReferenceMeasure * -0.25;
  playY1 = pauseY2 - buttonReferenceMeasure * -0.50;
  playX2 = pauseX1 - buttonReferenceMeasure * 0;
  playY2 = pauseY1 - buttonReferenceMeasure * 0;                                    //Note: numbers such as 1 being put into the "*" field seem to invert the shape
  playX3 = pauseX - buttonReferenceMeasure * 0;
  playY3 = pauseY - buttonReferenceMeasure * 0;
  ffX1 = pauseX - buttonReferenceMeasure * -2;
  ffY1 = pauseY - buttonReferenceMeasure * -0.5;
  ffX2 = pauseX1 - buttonReferenceMeasure * -1.5;
  ffY2 = pauseY1 - buttonReferenceMeasure * -1;
  ffX3 = pauseX2 - buttonReferenceMeasure * -0.8;
  ffY3 = pauseY2 - buttonReferenceMeasure * 0;
  ffX4 = pauseX - buttonReferenceMeasure * -2.5;
  ffY4 = pauseY - buttonReferenceMeasure * -0.5;
  ffX5 = pauseX1 - buttonReferenceMeasure * -2;
  ffY5 = pauseY1 - buttonReferenceMeasure * -1;
  ffX6 = pauseX2 - buttonReferenceMeasure * -1.3;
  ffY6 = pauseY2 - buttonReferenceMeasure * 0;
  ffX7 = pauseX - buttonReferenceMeasure * -1.5;
  ffY7 = pauseY - buttonReferenceMeasure * 0;
  rvrX1 = pauseX - buttonReferenceMeasure * 1;
  rvrY1 = pauseY - buttonReferenceMeasure * -0.5;
  rvrX2 = pauseX1 - buttonReferenceMeasure * 0.5;
  rvrY2 = pauseY1 - buttonReferenceMeasure * -1;
  rvrX3 = pauseX2 - buttonReferenceMeasure * 1.2;
  rvrY3 = pauseY2 - buttonReferenceMeasure * 0;
  rvrX4 = pauseX - buttonReferenceMeasure * 1.5;
  rvrY4 = pauseY - buttonReferenceMeasure * -0.5;
  rvrX5 = pauseX1 - buttonReferenceMeasure * 1;
  rvrY5 = pauseY1 - buttonReferenceMeasure * 0;
  rvrX6 = pauseX2 - buttonReferenceMeasure * 1.7;
  rvrY6 = pauseY2 - buttonReferenceMeasure * -1;
  rvrX7 = pauseX - buttonReferenceMeasure * 1.5;
  rvrY7 = pauseY - buttonReferenceMeasure * 0;
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
  rect( stopX, stopY, buttonSide, buttonSide ); //Layout
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide );
  rect( pauseX, pauseY, buttonSide * 0.3, buttonSide ); //Layout
  rect( pauseX2, pauseY2, buttonSide * 0.3, buttonSide );
  //
  //Play Button
  //rect( playX3, playY3, buttonSide, buttonSide );
  triangle( playX, playY, playX1, playY1, playX2, playY2 ); //Layout
  //
  //Mute Button
  //Students to develop
  //
  //Fast Forawrd in the song
  //rect( ffX7, ffY7, buttonSide, buttonSide );
  triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3 ); //Layout
  triangle( ffX4, ffY4, ffX5, ffY5, ffX6, ffY6 );
  //
  //Reverse in the song
  //rect( rvrX7, rvrY7, buttonSide, buttonSide );
  triangle( rvrX1, rvrY1, rvrX2, rvrY2, rvrX3, rvrY3 ); //Layout
  triangle( rvrX4, rvrY4, rvrX5, rvrY5, rvrX6, rvrY6 );
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
