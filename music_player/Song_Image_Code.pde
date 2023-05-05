/* void imageCode() {                             //fix this tab so picture of song will be brought up when it's song is played
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
float picX_Adjusted = 0.0, picY_Adjusted = 0.0, picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value, not Null
float whiteSpace=0.0;
Boolean imageCenter=false, imageRightBottom=true; //Developer level image justification
//
size(440, 440); //Landscape
appWidth = width;
appHeight = height;
//
//Population
//
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Pathway & Files
String upFolder = "..";
String openFolder = "/";
String folder1 = "music_player";
String folder2 = "songPictures";
pathway = folder1 + openFolder + folder2 + openFolder;
//
falling = "falling.jpg";
garden = "garden.jpg";
lets_run_away = "lets_run_away.jpg";
love_me = "love_me.jpg";
odyssey = "odyssey.jpg";
lucky_charm = "ovsky.jpg";
time = "ovsky.jpg";
times_two = "times_two.jpg";               //add pictures for soundeffects if consdiered
//
pic = loadImage( pathway + fileName );
int picWidth = 440;   //Original Dimension, 
int picHeight = 440;   //Original Dimension, 
//Larger dimension algorithm, aspect ratio
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth = picHeight ) { //True if landscape or square
  largerDimension = picHeight;
  smallerDimension = picWidth;
  imageHeightRatio = float (largerDimension) / float (smallerDimension); //Ratio <1, fized by casting
  picWidthAdjusted = backgroundImageWidth; //Compression into rect()
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; //Calculated variable from compressed variable
  //If image fits, no changes are needed
  picX_Adjusted = backgroundImageX;
  picY_Adjusted = backgroundImageY;
  //Justify Image
  whiteSpace = backgroundImageHeight - picHeightAdjusted;
  if ( imageCenter==true ) picX_Adjusted = backgroundImageY + whiteSpace*1/2;
  if ( imageRightBottom==true ) picX_Adjusted = backgroundImageY + whiteSpace;
  //
  if ( picHeightAdjusted > backgroundImageHeight ) {   //error catch: adjusted height is bigger than rect()
    picHeightAdjusted = backgroundImageHeight; //Uses automatic compression algorithm
    picWidthAdjusted = picWidthAdjusted * imageHeightRatio; //New calculated value
    whiteSpace = backgroundImageWidth - picWidthAdjusted;
    if ( imageCenter==true ) picX_Adjusted = backgroundImageX + whiteSpace*1/2;
    if ( imageRightBottom==true ) picX_Adjusted = backgroundImageX + whiteSpace;
  }
} else { //False if portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  imageWidthRatio = picHeight*1/2;
  picWidthAdjusted = backgroundImageWidth;
  picHeightAdjusted = backgroundImageHeight;
}
//
//Rectangle Layout and Image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//No Aspect ratio
//
//image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
println ( picWidthAdjusted, picHeightAdjusted ); //View Juman Error on variables, zero values
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted );
//Has Aspect Ratio
} //end image code */
