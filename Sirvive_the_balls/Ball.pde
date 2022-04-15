class Ball {
  float x;
  float y;
  float vx;
  float vy;
  color ballColor;
  float size;


Ball(float startX,float startY,float startVX, float startVY, color startColor, float startSize){
  
  x = startX;
  y = startY;
  vx = startVX;
  vy = startVY;
  ballColor = startColor;
  size = startSize;
}


void display(){
  fill(ballColor);
  ellipse(x,y,size,size);
}
  
  void move(){
    x=x+vx;
    y = y +vy;
    
    
    if (x -size/2 < 0){
      vx = -vx;
    }
         if (x + size/2 > width){
      vx = -vx;
         }
         if (y -size/2 < 0){
      vy = -vy;
         }
      
         if (y + size/2 > height){
      vy = -vy;
  }
  }
  
  
  void collidesWith(Ball other){
  
    float distance = dist(x,y,other.x,other.y);
    
    if(distance < size/2 + other.size/2){
      vx = vx*-1;
      vy = vy*-1;
      other.vx = other.vx*-1;
      other.vy = other.vy*-1;
    }
  }
}
