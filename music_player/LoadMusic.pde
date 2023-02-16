void loadMusic() {
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "Music/"; //From Sketch to Music Folder
  String soundEffectPathway = "Music/"; //From Sketch to Sound Effect Folder
  String grooveFileName = "Music_groove.mp3";
  String eurekaFileName = "Eureka.mp3";
  String competitionFileName = "Beat_Your_Competition.mp3";
  String cyclesFileName = "Cycles.mp3";
  String ghostFileName = "Ghost_Walk.mp3";
  String newsRoomFileName = "Newsroom.mp3";
  String enginesFileName = "Start_Your_Engines.mp3";
  String simplestFileName = "The_Simplest.mp3";
  String stingFileName = "Sound Effects_The_Simplest_Sting.mp3";
  String clodeDoorFileName = "Sound Effects_Wood_Door_Open_and_Close_Series.mp3";
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
  song0 = minim.loadFile( musicPathway + grooveFileName );
  song1 = minim.loadFile( musicPathway + competitionFileName );
  song2 = minim.loadFile( musicPathway + cyclesFileName );
  song3 = minim.loadFile( musicPathway + eurekaFileName );
  song4 = minim.loadFile( musicPathway + ghostFileName );
  song5 = minim.loadFile( musicPathway + newsRoomFileName );
  song6 = minim.loadFile( musicPathway + enginesFileName );
  song7 = minim.loadFile( musicPathway + simplestFileName );
  soundEffect0 = minim.loadFile( soundEffectPathway + stingFileName );
  soundEffect1 = minim.loadFile( soundEffectPathway + clodeDoorFileName );
  song8 = minim.loadFile( musicPathway + FileName );
  song9 = minim.loadFile( musicPathway + FileName );
  song10 = minim.loadFile( musicPathway + FileName );
  song11 = minim.loadFile( musicPathway + FileName );
  song12 = minim.loadFile( musicPathway + FileName );
  song13 = minim.loadFile( musicPathway + FileName );
  song14 = minim.loadFile( musicPathway + FileName );
  song15 = minim.loadFile( musicPathway + FileName );
  soundEffect3 = minim.loadFile( soundEffectPathway + FileName );
  soundEffect4 = minim.loadFile( soundEffectPathway + FileName );
}//End loadMusic
