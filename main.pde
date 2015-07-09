int winX = 800;
int winY = 600;

boolean draw = false;
int[] fall = new int[winX];

void setup(){
  background(0,0,0);
  size(winX, winY);
  noStroke();
  noSmooth();
  
} // End Setup


void draw(){
  background(0, 0, 0);
  for(int x = 1; x < fall.length; x++){
      if(fall[x] < winY){
        fall[x]++;
      }
      fill(235,0,0);
      rect(x,fall[x],2,2);
  } //End For
  if(draw == true){
        fall[mouseX] = mouseY;
  }
} // End Draw
void mousePressed() { draw = true; } void mouseReleased() { draw = false; }
void keyPressed() {println(fall);}
