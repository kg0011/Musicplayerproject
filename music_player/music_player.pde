import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
//
//Pre-array: AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
int numberOfSongs = 8;
AudioPlayer[] songs = new AudioPlayer[numberOfSongs]; //Play List data structure
//Pre-array: AudioPlayer soundEffect0, soundEffect1;
int numberOfSoundEffects = 2;
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = int ( random( numberOfSongs-1 ) );   //starts playlist from random song
//
int time = 7000;
//
Boolean activateWindow=false;
//
void setup() {
  size (300, 300);
  loadMusic();
  //songs[0].loop(0);
  //soundEffects[0].loop(0);
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  //
  //Debugging the Effective Length of the Sound Effect to code a delay
  //println ( soundEffects[0].position(), soundEffects[0].length() );
  //println ("When does the sound stop? Indicates delay");
  //Debugging a sound to shorten a file play
  println( soundEffects[0].position(), soundEffects[0].length() );
  //
} //End draw
//
void keyPressed() {
  //
  soundEffects[0].play();
  soundEffects[0].rewind();
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
