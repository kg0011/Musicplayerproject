/* Background Image Example
*/
//Global Variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=true;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value, not Null
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
if ( picWidth >= picHeight ) { //True if landscape or square
  largerDimension = picHeight;
  smallerDimension = picWidth;
  imageHeightRatio = float (largerDimension) / float (smallerDimension); //Ratio <1, fized by casting
  picWidthAdjusted = backgroundImageWidth; //Compression into rect()
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; //Calculated variable from compressed variable
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
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted );
//Has Aspect Ratio
//
//End Main Program
