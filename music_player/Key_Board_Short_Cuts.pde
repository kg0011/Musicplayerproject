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
  if ( key == '=' ) soundEffect0.play();
  if ( key == '-' ) soundEffect1.play();
  if ( key == 'w' ) song8.play();
  if ( key == 'e' ) song9.play();
  if ( key == 'r' ) song10.play();
  if ( key == 't' ) song11.play();
  if ( key == 'y' ) song12.play();
  if ( key == 'u' ) song13.play();
  if ( key == 'i' ) song14.play();
  if ( key == 'o' ) song15.play();
  if ( key == '[' ) soundEffect3.play();
  if ( key == ']' ) soundEffect4.play();
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
//End Key Board Short Cuts Sub Program
