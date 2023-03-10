import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7, song8, song9, song10, song11, song12, song13, song14, song15;
AudioPlayer soundEffect0, soundEffect1, soundEffect3, soundEffect4;
//
Boolean activateWindow=false;
//
void setup() {
  size (300, 300);
  loadMusic();
  //song0.loop(0);
  //soundEffect0.loop(0);
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  //
  //Debugging the Effective Length of the Sound Effect to code a delay
  //println ( soundEffect0.position(), soundEffect0.length() );
  //println ("When does the sound stop? Indicates delay");
  //Debugging a sound to shorten a file play
  println( soundEffect0.position(), soundEffect0.length() );
  //
} //End draw
//
void keyPressed() {
  //
  //soundEffect0.play();
  //soundEffect0.rewind();
  delay(4000); //millisecconds read from draw() println() debugging
  //println ( "KeyPressed:", soundEffect0.length() );
  //
  keyPressedShortCuts();
  //
} //End keyPressed
//
void mousePressed() {
  if ( activateWindow==false ) activateWindow = true;
} // End mousePressed
//
//End MAIN Program
