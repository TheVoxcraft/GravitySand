int winX = 800;
int winY = 600;

boolean draw = false;
int[][] fall = new int[winX][winY];
int v = 0;
boolean falls = true;

void setup(){
  background(0,0,0);
  size(winX, winY);
  noStroke();
  //noSmooth();
  
} // End Setup


void draw(){
  background(0);
  fill(255, 255, 120);
  for(int i = 1; i < fall.length; i++){
    for(int j = 1; j < fall[i].length; j++){
      //v = fall[i][j];
      if(draw == true){
        fall[mouseX][mouseY] = 1;
      } if(fall[i][j] == 1){
        rect(i,j,2,2);
      } if(fall[i][j] == 1 && j < winY-1 && falls == true){ fall[i][j] = 0; fall[i][j+1] = 1; falls = false; }
    }
    falls = true;
  }
} // End Draw
void mousePressed() { draw = true; } void mouseReleased() { draw = false; }
void keyPressed() {println(fall);}
