void loadMusic() {
  //
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "Music/"; //From Sketch to Music Folder
  String soundEffectPathway = "Music/"; //From Sketch to Sound Effect Folder
  String tillNoonFileName = "Sleeping_till_noon.mp3";
  String runAwayFileName = "Let's_Run_Away.mp3";
  String odysseyFileName = "Odyssey.mp3";
  String gardenFileName = "The_Garden.mp3";
  String luckyCharmFileName = "Lucky_Charm.mp3";
  String timeFileName = "Time.mp3";
  String fallingFileName = "Falling.mp3";
  String loveMeFileName = "Love_Me.mp3";
  String soundEffect3FileName = "soundeffect3.wav";
  String soundEffect4FileName = "soundeffect4.wav";
  song0 = minim.loadFile( musicPathway + tillNoonFileName );
  song1 = minim.loadFile( musicPathway + runAwayFileName );
  song2 = minim.loadFile( musicPathway + odysseyFileName );
  song3 = minim.loadFile( musicPathway + gardenFileName );
  song4 = minim.loadFile( musicPathway + luckyCharmFileName );
  song5 = minim.loadFile( musicPathway + timeFileName );
  song6 = minim.loadFile( musicPathway + fallingFileName );
  song7 = minim.loadFile( musicPathway + loveMeFileName );
  soundEffect0 = minim.loadFile( soundEffectPathway + soundEffect3FileName );
  soundEffect1 = minim.loadFile( soundEffectPathway + soundEffect4FileName );
}//End loadMusic
