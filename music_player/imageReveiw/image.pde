/* Background Image Example
*/
//Global Variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=true;
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
String upFolder = "..";
String openFolder = "/";
String folder1 = "ImagesUsed";
String folder2 = "Landscape and Square Images";
pathway = upFolder + openFolder + upFolder + openFolder + folder1 + openFolder + folder2 + openFolder;
fileName = "Screenshot_20230316-135254_Gallery.jpg";
pic = loadImage( pathway + fileName );
//
//Rectangle Layout and Image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==false ) tint(255, 128); //Day mode, gray scale, using half white (128/255=1/2)  *remember that computers count 0 as a number
if ( nightMode==true ) tint(64, 64, 40); //Night Mode, less blue
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//End Main Program
