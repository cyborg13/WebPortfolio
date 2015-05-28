class Car {
  // member variable
  int cLength, cHeight, cWeight, cSpeed;
  float xpos, ypos;
  color cColor;
  float left;
  
  
  // constructor1
  Car(float tempX,float tempY) {
    xpos = tempX;
    ypos = tempY;
    cSpeed = 1;
    cColor = color(255,0,0);
  }
  
  // constructor2
  Car(float tempX,float tempY, int tempSpeed, int tempColor, float tempLeft) {
    xpos = tempX;
    ypos = tempY;
    cSpeed = tempSpeed;
    cColor = tempColor;
    left = tempLeft;
  }
  
// member methods
void display() {
  rectMode(CENTER);
  fill(cColor);
  rect(xpos,ypos,20,10);
 
   
  fill(255);
  rect(xpos+1,ypos,4,4);
  rect(xpos-7,ypos,4,4);
  fill(0);
  rect(xpos+8,ypos-5,3,3);
  fill(0,0,255);
  ellipse(xpos+5,ypos+6,5,5);
  ellipse(xpos-5,ypos+6,5,5);
  
}
  
void drive() {
  if (left <=5) {
    xpos = xpos + cSpeed;
    if(xpos > width) {
      xpos = 0;
     }
    } else {
      xpos = xpos-cSpeed;
      if(xpos < 0) {
       xpos = width;
      }
    } 
  }
}
