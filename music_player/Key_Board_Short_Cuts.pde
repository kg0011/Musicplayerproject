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
  if ( key == '1' ) songs[0].loop(0); //.rewind() is included in .loop()
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == '4' ) songs[3].loop(0);
  if ( key == '5' ) songs[4].loop(0);
  if ( key == '6' ) songs[5].loop(0);
  if ( key == '7' ) songs[6].loop(0);
  if ( key == '8' ) songs[7].loop(0);
  if ( key == '=' ) soundEffects[0].loop(0);
  if ( key == '-' ) soundEffects[1].loop(0);
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
  soundEffects[0].loop(0); //only need partial file, use millisecconds
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
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind();
    songs[currentSong].play();
    //try using autoplay as it's better and better marks, also easier as it automatically plays next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution                       (marked on interim, so do differently)
  }
}//End PlayPause
//
void mute() {
  //MUTE, not PAUSE, only affects the speakers
  //ERROR: this MUTE button only works when the song is playing
  //ERROR: user will spam mute if song is at end of file
  if ( songs[currentSong].isMuted() ) 
  {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
  songs[currentSong].rewind();
  songs[currentSong].unmute();
  } else {
    songs[currentSong].mute();
  }
}//End Mute
//
void stopSong() 
{
  //Based on a question: is the song playing
  //Hint: would this fix the error of the mute button
  //Note: stop basically rewinds
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End StopSong
//
void fastForward() {
  //asks computer if song is playing
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(3000); //parameter in milliseconds
}//End FastForward
//
void fastRewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-3000); //parameter in milliseconds
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
