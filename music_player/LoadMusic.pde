void loadMusic() {
  //
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "Music/"; //From Sketch to Music Folder
  String soundEffectPathway = "Music/"; //From Sketch to Sound Effect Folder             *******Maybe add a message for each song so the song's picture will show, put each image in a new tab
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
  songs[0] = minim.loadFile( musicPathway + tillNoonFileName );
  songs[1] = minim.loadFile( musicPathway + runAwayFileName );
  songs[2] = minim.loadFile( musicPathway + odysseyFileName );
  songs[3] = minim.loadFile( musicPathway + gardenFileName );
  songs[4] = minim.loadFile( musicPathway + luckyCharmFileName );
  songs[5] = minim.loadFile( musicPathway + timeFileName );
  songs[6] = minim.loadFile( musicPathway + fallingFileName );
  songs[7] = minim.loadFile( musicPathway + loveMeFileName );
  soundEffects[0] = minim.loadFile( soundEffectPathway + soundEffect3FileName );
  soundEffects[1] = minim.loadFile( soundEffectPathway + soundEffect4FileName );
} //End loadMusic
