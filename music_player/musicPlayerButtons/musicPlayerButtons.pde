//Global Variables
float buttonReferenceMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX, pauseY, pauseX1, pauseY1, pauseX2, pauseY2;
float stopX, stopY, stopX1, stopY1, stopX2, stopY2, stopWidth, stopHeight;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3;
float muteX, muteY, muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteX9, muteY9, muteX10, muteY10, muteX11, muteY11, muteX12, muteY12, muteX13, muteY13, muteY14, muteX14, muteY15, muteX15, muteY16, muteX16, muteWidthDiammeter, muteHeightDiammeter;
float ffX1, ffY1, ffX2, ffY2, ffX3, ffY3, ffX4, ffY4, ffX5, ffY5, ffX6, ffY6, ffX7, ffY7;
float rvrX1, rvrY1, rvrX2, rvrY2, rvrX3, rvrY3, rvrX4, rvrY4, rvrX5, rvrY5, rvrX6, rvrY6, rvrX7, rvrY7;
float nextX, nextY, nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextX4, nextY4;
float prevX, prevY, prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevX4, prevY4;
float loopX, loopY, loopX1, loopY1, loopX2, loopY2, loopX3, loopY3, loopX4, loopY4, loopX5, loopY5, loopWidthDiammeter, loopHeightDiammeter;
float loopInfX, loopInfY, loopInfX1, loopInfY1, loopInfX2, loopInfY2, loopInfX3, loopInfY3, loopInfX4, loopInfY4, loopInfX5, loopInfY5, loopInfWidthDiammeter, loopInfHeightDiammeter;
float loopPLX, loopPLY, loopPLX1, loopPLY1, loopPLX2, loopPLY2, loopPLX3, loopPLY3, loopPLX4, loopPLY4, loopPLX5, loopPLY5, loopPLWidthDiammeter, loopPLHeightDiammeter;
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
  //
  stopX = pauseX - buttonReferenceMeasure * 0;
  stopY = pauseY - buttonReferenceMeasure * 1.5;
  //
  playX = pauseX - buttonReferenceMeasure * 0;
  playY = pauseY - buttonReferenceMeasure * -1;
  playX1 = pauseX2 - buttonReferenceMeasure * -0.25;
  playY1 = pauseY2 - buttonReferenceMeasure * -0.50;
  playX2 = pauseX1 - buttonReferenceMeasure * 0;
  playY2 = pauseY1 - buttonReferenceMeasure * 0;
  playX3 = pauseX - buttonReferenceMeasure * 0;
  playY3 = pauseY - buttonReferenceMeasure * 0;
  //
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
  //
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
  nextX = pauseX - buttonReferenceMeasure * -3;
  nextY =  pauseY - buttonReferenceMeasure * 0;
  nextX1 = pauseX - buttonReferenceMeasure * -4;
  nextY1 =  pauseY - buttonReferenceMeasure * -0.5;
  nextX2 = pauseX - buttonReferenceMeasure * -3.5;
  nextY2 =  pauseY - buttonReferenceMeasure * 0;
  nextX3 = pauseX - buttonReferenceMeasure * -3.5;
  nextY3 =  pauseY - buttonReferenceMeasure * -1;
  nextX4 = pauseX - buttonReferenceMeasure * -3;
  nextY4 = pauseY - buttonReferenceMeasure * 0;
  //
  prevX = pauseX - buttonReferenceMeasure * 2.3;
  prevY = pauseY - buttonReferenceMeasure * 0;
  prevX1 = pauseX - buttonReferenceMeasure * 3;
  prevY1 = pauseY - buttonReferenceMeasure * -0.5;
  prevX2 = pauseX - buttonReferenceMeasure * 2.5;
  prevY2 = pauseY - buttonReferenceMeasure * 0;
  prevX3 = pauseX - buttonReferenceMeasure * 2.5;
  prevY3 = pauseY - buttonReferenceMeasure * -1;
  prevX4 = pauseX - buttonReferenceMeasure * 3;
  prevY4 = pauseY - buttonReferenceMeasure * 0;
  //
  muteX = muteX12 - buttonReferenceMeasure * 0;
  muteY = muteY12 - buttonReferenceMeasure * 0;
  muteX1 = muteX12 - buttonReferenceMeasure * -0.25;
  muteY1 = muteY12 - buttonReferenceMeasure * -1;
  muteX2 = muteX12 - buttonReferenceMeasure * -0.25;
  muteY2 = muteY12 - buttonReferenceMeasure * 0;              //first of three lines
  muteX3 = muteX12 - buttonReferenceMeasure * 0;
  muteY3 = muteY12 - buttonReferenceMeasure * 0;
  muteX4 = muteX12 - buttonReferenceMeasure * -0.45;
  muteY4 = muteY12 - buttonReferenceMeasure * -0.7;
  muteX5 = muteX12 - buttonReferenceMeasure * -0.45;
  muteY5 = muteY12 - buttonReferenceMeasure * -0.3;             //third of three lines
  muteX6 = muteX12 - buttonReferenceMeasure * 0;
  muteY6 = muteY12 - buttonReferenceMeasure * 0;
  muteX7 = muteX12 - buttonReferenceMeasure * -0.6;
  muteY7 = muteY12 - buttonReferenceMeasure * -0.95;
  muteX8 = muteX12 - buttonReferenceMeasure * -0.6;
  muteY8 = muteY12 - buttonReferenceMeasure * -0.05;          //speaker shape thing left side
  muteX14 = muteX12 - buttonReferenceMeasure * 0;
  muteY14 = muteY12 - buttonReferenceMeasure * 0;
  muteX15 = muteX12 - buttonReferenceMeasure * -0.615;
  muteY15 = muteY12 - buttonReferenceMeasure * -0.85;
  muteX16 = muteX12 - buttonReferenceMeasure * -0.615;
  muteY16 = muteY12 - buttonReferenceMeasure * -0.15;          //speaker shape thing right side
  muteX9 = muteX12 - buttonReferenceMeasure * 0;
  muteY9 = muteY12 - buttonReferenceMeasure * 0;
  muteX10 = muteX12 - buttonReferenceMeasure * -0.35;
  muteY10 = muteY12 - buttonReferenceMeasure * -0.85;
  muteX11 = muteX12 - buttonReferenceMeasure * -0.35;
  muteY11 = muteY12 - buttonReferenceMeasure * -0.15;      //second of three lines
  muteX12 = pauseX - buttonReferenceMeasure * 5.5;
  muteY12 = pauseY - buttonReferenceMeasure * 3;
  muteX13 = pauseX - buttonReferenceMeasure * 4.9;
  muteY13 = pauseY - buttonReferenceMeasure * 2.95;       //speaker shape thing seperate line
  muteWidthDiammeter = pauseX - buttonReferenceMeasure * -5;
  muteHeightDiammeter = pauseY - buttonReferenceMeasure * 1.75;     //seccond of three lines
  //
  loopX = pauseX - buttonReferenceMeasure * 0.175;
  loopY = pauseY - buttonReferenceMeasure * -1.5;
  loopX1 = pauseX - buttonReferenceMeasure * -0.8;
  loopY1 = pauseY - buttonReferenceMeasure * -2;
  loopX2 = pauseX - buttonReferenceMeasure * -0.3;
  loopY2 = pauseY - buttonReferenceMeasure * -2.25;
  loopX3 = pauseX - buttonReferenceMeasure * -0.3;
  loopY3 = pauseY - buttonReferenceMeasure * -1.75;
  loopX4 = pauseX - buttonReferenceMeasure * -0.5;
  loopY4 = pauseY - buttonReferenceMeasure * -2;
  loopX5 = pauseX - buttonReferenceMeasure * -0.5;
  loopY5 = pauseY - buttonReferenceMeasure * -2;
  loopWidthDiammeter = pauseX - buttonReferenceMeasure * 0;
  loopHeightDiammeter = pauseY - buttonReferenceMeasure * 0;
  //
  loopInfX = pauseX - buttonReferenceMeasure * 2;
  loopInfY = pauseY - buttonReferenceMeasure * -1.5;
  loopInfX1 = pauseX - buttonReferenceMeasure * 1;
  loopInfY1 = pauseY - buttonReferenceMeasure * -2;
  loopInfX2 = pauseX - buttonReferenceMeasure * 1.5;
  loopInfY2 = pauseY - buttonReferenceMeasure * -2.25;
  loopInfX3 = pauseX - buttonReferenceMeasure * 1.5;
  loopInfY3 = pauseY - buttonReferenceMeasure * -1.75;
  loopInfX4 = pauseX - buttonReferenceMeasure * 1.325;
  loopInfY4 = pauseY - buttonReferenceMeasure * -2;
  loopInfX5 = pauseX - buttonReferenceMeasure * 1.325;
  loopInfY5 = pauseY - buttonReferenceMeasure * -2;
  loopInfWidthDiammeter = pauseX - buttonReferenceMeasure * 0;
  loopInfHeightDiammeter = pauseY - buttonReferenceMeasure * 0;                          //Make this look different than loop once
  //
  loopPLX = pauseX - buttonReferenceMeasure * -1.65;
  loopPLY = pauseY - buttonReferenceMeasure * -1.5;
  loopPLX1 = pauseX - buttonReferenceMeasure * -2.325;
  loopPLY1 = pauseY - buttonReferenceMeasure * -2;
  loopPLX2 = pauseX - buttonReferenceMeasure * -2.325;
  loopPLY2 = pauseY - buttonReferenceMeasure * -2;
  loopPLX3 = pauseX - buttonReferenceMeasure * -2.65;
  loopPLY3 = pauseY - buttonReferenceMeasure * -2;
  loopPLX4 = pauseX - buttonReferenceMeasure * -2.15;
  loopPLY4 = pauseY - buttonReferenceMeasure * -2.25;
  loopPLX5 = pauseX - buttonReferenceMeasure * -2.15;
  loopPLY5 = pauseY - buttonReferenceMeasure * -1.75;
  loopPLWidthDiammeter = pauseX - buttonReferenceMeasure * 0;
  loopPLHeightDiammeter = pauseY - buttonReferenceMeasure * 0;
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
  //triangle( playX, playY, playX1, playY1, playX2, playY2 ); //Layout
  //
  //Mute Button
  rect( muteX12, muteY12, buttonSide, buttonSide );
  curve( muteX, muteY, muteX1, muteY1, muteX2, muteY2, muteWidthDiammeter * 0.25, muteHeightDiammeter * -1.5 );           //first of three lines
  curve( muteX9, muteY9, muteX10, muteY10, muteX11, muteY11, muteWidthDiammeter * 0.2, muteHeightDiammeter * -1.25 );     //second of three lines
  curve( muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteWidthDiammeter * 0.15, muteHeightDiammeter * -0.625 );       //third of three lines
  curve( muteX6, muteY6, muteX7, muteY7, muteX8, muteY8, muteWidthDiammeter * 0.25, muteHeightDiammeter * -2 );          //speaker shape thing left side
  curve( muteX14, muteY14, muteX15, muteY15, muteX16, muteY16, muteWidthDiammeter * -0.25, muteHeightDiammeter * -0.65 );  //speaker shape thing right side
  rect( muteX13, muteY13, buttonSide * 0.0075, buttonSide * 0.9 );                                                          //speaker shape thing seperate line
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
  //rect( nextX4, nextY4, buttonSide, buttonSide );
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 ); //Layout
  rect( nextX, nextY, buttonSide * 0.3, buttonSide );
  //
  //Previous Button
  //rect( prevX4, prevY4, buttonSide, buttonSide );
  rect( prevX, prevY, buttonSide * 0.3, buttonSide ); //Layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  //
  //Loop the song once
  //rect( loopX, loopY, buttonSide * 1.35, buttonSide );
  ellipse( loopX4, loopY4, loopWidthDiammeter * 0.25, loopHeightDiammeter * 0.25 ); //Layout
  ellipse( loopX5, loopY5, loopWidthDiammeter * 0.225, loopHeightDiammeter * 0.215 );
  triangle( loopX1, loopY1, loopX2, loopY2, loopX3, loopY3 );
  //
  //Loop the song infinitly
  //rect( loopInfX, loopInfY, buttonSide * 1.35, buttonSide );
  ellipse( loopInfX5, loopInfY5, loopInfWidthDiammeter * 0.25, loopInfHeightDiammeter * 0.25 ); //Layout
  ellipse( loopInfX4, loopInfY4, loopInfWidthDiammeter * 0.225, loopInfHeightDiammeter * 0.215 );
  triangle( loopInfX1, loopInfY1, loopInfX2, loopInfY2, loopInfX3, loopInfY3 );
  //
  //Loop the Playlist (infinitly)
  //rect( loopPLX, loopPLY, buttonSide * 1.35, buttonSide );
  ellipse( loopPLX1, loopPLY1, loopPLWidthDiammeter * 0.25, loopPLHeightDiammeter * 0.25 ); //Layout
  ellipse( loopPLX2, loopPLY2, loopPLWidthDiammeter * 0.225, loopPLHeightDiammeter * 0.215 );
  triangle( loopPLX3, loopPLY3, loopPLX4, loopPLY4, loopPLX5, loopPLY5 );
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
