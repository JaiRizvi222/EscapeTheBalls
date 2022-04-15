class frog {
  float x;
  float y;
  float vx;
  color frogCol;

frog(float startX,float startY,float startVX, color startCol){
  
  x = startX;
  y = startY;
  vx = startVX;
  frogCol = startCol;
}
void display(){
fill(#009900);
ellipse(x,y,50,20);
ellipse(x+8,y,10,10);
ellipse(x-8,y,10,10);
ellipse(x+8,y,3,3);
ellipse(x-8,y,3,3);
}

void crashesWith(){
  noFill();
  ellipse(0,0,0,0);
  
}
}
