// Lines myLines1:
Lines [] myLines = new Lines [100];

void setup() {
  background(random(2, 50));
  size(500,500);
  frameRate(24);
  // myLines1 = new Lines(random(width),random(height),random(1,5),random(1,20));
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }
}

void draw() {
  //myLines1.display();
  if (frameCount == 300) {
    frameCount = 0;
    background(random(2, 20));
  } else {
    for (int i=0; i<myLines.length; i++) {
      Lines iLines = myLines[i];
      iLines.display();
    }
  }
} 
class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;

  // constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }

  void display() {
    strokeW = random(1, 2);
    lineLength = random(1, 50);
    // stroke(random(100,255));
    stroke(random(200), random(200), random(200));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>90) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(100)>80) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveUpRight(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveUpLeft(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveDownRight(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveDownLeft(xpos, ypos, lineLength);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      } 
    }
  }

  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX+i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX-i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY-i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY+i;
    }
  }
  
  void moveUpRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY-i);
      xpos = startX+i;
      ypos = startY-i;
    }
  }
  
  void moveUpLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY-i);
      xpos = startX-i;
      ypos = startY-i;
    }
  }
  
   void moveDownRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY+i);
      xpos = startX+i;
      ypos = startY+i;
    }
  }
  
  void moveDownLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY+i);
      xpos = startX-i;
      ypos = startY+i;
    }
  }
}

