void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//End keyPressedShortcuts
//
void musicShortCuts() {
  //Key Board Short Cuts for Music, use numbers
  //Hint: notice human numbering vs. computer numbering
  if ( key == '1' ) song0.loop(0); //.rewind() is included in .loop()
  if ( key == '2' ) song1.loop(0);
  if ( key == '3' ) song2.loop(0);
  if ( key == '4' ) song3.loop(0);
  if ( key == '5' ) song4.loop(0);
  if ( key == '6' ) song5.loop(0);
  if ( key == '7' ) song6.loop(0);
  if ( key == '8' ) song7.loop(0);
  if ( key == '=' ) soundEffect0.loop(0);
  if ( key == '-' ) soundEffect1.loop(0);
  //
  //Students to make code smarter
  if ( key == 'U' || key=='u' ) autoPlay();     //psuedo code only
  if ( key == 'P' || key=='p' ) playPause();     //teacher started
  if ( key == 'M' || key=='m' ) mute();     //teacher started
  if ( key == 'S' || key=='s' ) stopSong();     //teacher started
  if ( key == 'F' || key=='f' ) fastForward();     //
  if ( key == 'R' || key=='r' ) fastRewind();     //
  if ( key == 'N' || key=='n' ) nextSong();     //psuedo code only
  if ( key == 'B' || key=='b' ) previousSong();     //psuedo code only
  if ( key == 'L' || key=='l' ) loopSong();     //loops current song infinitly
  if ( key == 'O' || key=='o' ) loopPlaylist();     //entire playlist
  if ( key == 'W' || key=='w' ) shufflePlaylist();     //shuffle
  if ( key == 'E' || key=='e' ) loopAndShuffle();     //loop and Shuffle
}//End musicShortCuts
//
void quitButtons() {
  //Quit Button Key Board Shortcut
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffect0.loop(0); //only need partial file, use millisecconds
  //Visual Image or Text of Goodbye
  delay(3000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
//
void autoPlay() {
  //Plays one song then the next automatically
  //Asks computer if song is playing constantlly
  //When current song ends, rewinds current song and plays the next
}//End AutoPlay
//
void playPause() 
{
  //error: song will not play if at the end
  if ( song0.isPlaying() ) {
    song0.pause();
  } else if ( song0.position() >= song0.length()*4/5 ) {
    song0.rewind();
    song0.play();
    //try using autoplay as it's better and better marks, also easier as it automatically plays next song
  } else {
    //autoPlay(), is better here
    song0.play(); //Interim solution                       (marked on interim, so do differently)
  }
}//End PlayPause
//
void mute() {
  //MUTE, not PAUSE, only affects the speakers
  //ERROR: this MUTE button only works when the song is playing
  //ERROR: user will spam mute if song is at end of file
  if ( song0.isMuted() ) 
  {
    song0.unmute();
  } else if ( song0.isMuted() && song0.position() >= song0.length()*4/5 ) {
  song0.rewind();
  song0.unmute();
  } else {
    song0.mute();
  }
}//End Mute
//
void stopSong() 
{
  //Based on a question: is the song playing
  //Hint: would this fix the error of the mute button
  //Note: stop basically rewinds
  if ( song0.isPlaying() ) {
    song0.pause();
    song0.rewind();
  } else {
    song0.rewind();
  }
}//End StopSong
//
void fastForward() {
  //asks computer if song is playing
  if ( song0.isPlaying() ) song0.skip(3000); //parameter in milliseconds
}//End FastForward
//
void fastRewind() {
  if ( song0.isPlaying() ) song0.skip(-3000); //parameter in milliseconds
}//End FastRewind
//
void nextSong() {
}//End NextSong
//
void previousSong() {
}//End previousSong
//
void loopSong() {
}//End loopSong
//
void loopPlaylist() {
}//End loopPlaylist
//
void shufflePlaylist() {
}//End shufflePlaylist
//
void loopAndShuffle() {
}//End loopAndShuffle
//
//End Key Board Short Cuts Sub Program
