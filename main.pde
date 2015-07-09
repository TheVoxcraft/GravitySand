int winX = 800;
int winY = 600;

boolean draw = false;
int[] fallX = new int[winX];
int[] fallY = new int[winY];

void setup(){
  background(0,0,0);
  size(winX, winY);
  noStroke();
  noSmooth();
  
} // End Setup


void draw(){
  background(0, 0, 0);
  fill(235,0,0);
  draw = false;
  for(int i = 1; i < fallX.length; i++){
    for(int j = 1; j < fallY.length; j++){
      if(fallY[j] > 0){
        fallY[j] -= 1;
      }
      point(fallX[i],fallY[j]);
    }
  } //End For
  
  if(draw == true){
    for(int i = 1; i < fallX.length; i++){
      for(int j = 1; j < fallY.length; j++){
        fallX[i] = mouseX;
        fallY[j] = mouseY;
      }
    }
  }

} // End Draw

void mousePressed() {
  draw = true;
}
