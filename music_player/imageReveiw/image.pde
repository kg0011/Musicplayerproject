/* Background Image Example
*/
//Global Variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=true;
float picX_Adjusted = 0.0, picY_Adjusted = 0.0, picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value, not Null
float whiteSpace=0.0;
Boolean imageCenter=false, imageRightBottom=true; //Developer level image justification
//
size(500, 100); //Landscape
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
String folder1 = "ImagesUsed";
String folder2 = "Landscape and Square Images";
pathway = folder1 + openFolder + folder2 + openFolder;
fileName = "Screenshot_20230316-135254_Gallery.jpg";
pic = loadImage( pathway + fileName );
int picWidth = 1080; //Original Dimension, 
int picHeight = 1409; //Original Dimension, 
//Larger dimension algorithm, aspect ratio
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picHeight >= picWidth ) { //True if landscape or square
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
  /*students to finish
  largerDimension = ;
  smallerDimension = ;
  imageWidthRatio = ;
  picWidthAdjusted = ;
  picHeightAdjusted = ;
  */
}
//
//Rectangle Layout and Image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==false ) tint(255, 128); //Day mode, gray scale, using half white (128/255=1/2)  *remember that computers count 0 as a number
if ( nightMode==true ) tint(64, 64, 40); //Night Mode, less blue
//No Aspect ratio
//image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
println ( picWidthAdjusted, picHeightAdjusted ); //View Juman Error on variables, zero values
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted );
//Has Aspect Ratio
//
//End Main Program
