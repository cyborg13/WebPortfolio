import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ColDet extends PApplet {

// global variables
int xspeed, yspeed;
int xpos, ypos, wdth, ht;
// runs one time
public void setup(){
  size(displayWidth, displayHeight);
  line(0,0, width, height);
  background(0);
  xspeed = 0;
  yspeed = 5;
  wdth = 10;
  ht = 10;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(30);
}
// runs on loop 
public void draw() {
  // background(0);
  fill(255);
  ellipse(xpos, ypos, wdth, ht);
  ellipse(xpos+10, ypos+10, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2){
   xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2){
   yspeed =yspeed * -1;
  }
}
 


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ColDet" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
