// ! = not
// & = and &&
// | = or  ||


void setup() {
  size(900,400);
  smooth();
  background(255,204,0);
  
 
    
}

void draw() {
  background(255,204,0);
  strokeWeight(4);
  stroke(0,0,255);
  line(100,250,800,250);
  histEvent("ENIAC - 1946","First electronic general-purpose computer", 100,200, true);
  histEvent("Manchester Mark 1 - 1949", "Earliest stored-program computers",170,300,false);
  histEvent("EDVAC - 1951","The earliest electronic computers",250,200, true);
  histEvent("Magnetic Storage - 1954", "Magnetic storage in the form of wire recording",330,300,false);
  histEvent("Supercomputers - 1962","Most powerful computer",400,200, true);
  histEvent("CDC 6600 - 1964", "The first Super Computer",480,300,false);
  histEvent("P6060 - 1975","First computer with a built-in floppy disk",550,200, true);
  histEvent("KIM-1 - 1976", "Based single-board computer",630,300,false);

    
}  
  // lines on top
  
void histEvent(String eventName, String details, int xpos, int ypos, boolean top) {
  if (top) {
    line(xpos,ypos,xpos+50,ypos+50);
    fill(0,150,0);
    text(eventName,xpos-10,ypos-10);
  
    if (mouseX > xpos - 50 && mouseX < xpos+100 && 
      mouseY > ypos-20 && mouseY < ypos+10) {
      fill(0,155,0);
      text(details, xpos+80, ypos +20);
    }
  } else if (!top) {
      line(xpos,ypos,xpos+50,ypos-50);
      fill(0,150,0);
      text(eventName,xpos-10,ypos+10);
  
    if (mouseX > xpos - 50 && mouseX < xpos+100 && 
      mouseY > ypos-20 && mouseY < ypos+10) {
      fill(0,150,0);
      text(details, xpos+80, ypos+30);
    }
  }
  
}

  


