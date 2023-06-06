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
  if ( key == '4' ) songs[3].loop(0);                                               //get rid of these shortcuts if coding still does not work through these shortcuts
  if ( key == '5' ) songs[4].loop(0);    //fix loop() to 0 if code still does not work
  if ( key == '6' ) songs[5].loop(0);
  if ( key == '7' ) songs[6].loop(0);
  if ( key == '8' ) songs[7].loop(0);
  if ( key == '=' ) soundEffects[0].loop(0);
  if ( key == '-' ) soundEffects[1].loop(0);
  //
  //Students to make code smarter
  if ( key == 'U' || key=='u' ) autoPlay();         //***
  if ( key == 'P' || key=='p' ) playPause();        //finished + works
  if ( key == 'M' || key=='m' ) mute();             //finished + works
  if ( key == 'S' || key=='s' ) stopSong();         //finished + works
  if ( key == 'F' || key=='f' ) fastForward();      //finished + works
  if ( key == 'R' || key=='r' ) fastRewind();       //finished + works
  if ( key == 'N' || key=='n' ) nextSong();         //finished + works
  if ( key == 'B' || key=='b' ) previousSong();     //finished + works
  if ( key == 'L' || key=='l' ) loopSong();         //finished         ***test
  if ( key == 'I' || key=='i' ) loopInfinite();     //finished         ***test
  if ( key == 'W' || key=='w' ) shufflePlaylist();  //***
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
  
  delay(1000); //alternate way of playing sound once: mercers sound effect, not current one
  exit();
}//End quitButtonCode
//
//void musicFeaturesCode () {               //find out how to make code that allows for this code to work or make all code seperate tabs
  //
void autoPlay() {
  //Plays one song then the next automatically
    if ( autoPlay==false ) {
      songs[currentSong].pause();
      songs[currentSong].rewind();
      if ( key == 'U' || key=='u' ) autoPlay=true;
    } else if ( autoPlay==true ) {        //fix******swap false and true statements if still not working
    songs[currentSong].play();
    if ( songs[currentSong].isPlaying()==false ) {
      songs[currentSong].skip(9999999);
      if ( key == 'U' || key=='u' ) autoPlay=false;
    }
  }
  //Asks computer if song is playing constantlly
  //When current song ends, rewinds current song and plays the next
}//End AutoPlay

//
void playPause() {
  //error: song will not play if at the end
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind();
    songs[currentSong].play();
    //try using autoplay as it's better and better marks, also easier as it automatically plays next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution       (marked on interim, so do differently) 
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
 if ( songs[currentSong].isPlaying() ) {
   songs[currentSong].pause();
   songs[currentSong].rewind();
   currentSong++;
   songs[currentSong].play();
 } else {
   songs[currentSong].rewind();
   currentSong++;
   songs[currentSong].play();
 }
} //End NextSong
//
void previousSong() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    currentSong--;
    songs[currentSong].play();
  } else {
    songs[currentSong].rewind();
    currentSong--;
    songs[currentSong].play();
  }
}//End previousSong
//
void loopSong() {
  if ( loopSong==true ) {
    songs[currentSong].loop(1);
    if ( key == 'L' || key=='l' ) loopSong=false;
  } else {
    loopSong=false;
    songs[currentSong].loop(0);
    if ( key == 'L' || key=='l' ) loopSong=true;
  }
}//End loopSong
//
void loopInfinite() {
  if ( loopInfinite==true ) {
    songs[currentSong].loop(99999999);
    if ( key == 'I' || key=='i' ) loopInfinite=false;
  } else { 
    loopInfinite=false;
    songs[currentSong].loop(0);
    if ( key == 'I' || key=='i' ) loopInfinite=true;
  }
}//End loopPlaylist
//
void shufflePlaylist() { 
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    random( numberOfSongs );
    songs[currentSong].play();
  } else {
    songs[currentSong].rewind();
    random( numberOfSongs );     //test and fix    ***may not be possible
    songs[currentSong].play();
} //End shufflePlaylist
} //End music features code
//
//End Key Board Short Cuts Sub Program
