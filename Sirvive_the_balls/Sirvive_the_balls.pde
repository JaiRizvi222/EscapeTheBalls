Ball blueBall;
Ball greenBall;
Ball redBall;
Ball yellowBall;

int level = 0;
int x = 10;
float h = 500;
int vx = 1;
int y = 205;
color frogcol = (#009900);
void setup(){
  size(399,411);
  background(#DBC868);
  greenBall = new Ball(300,100,1.5,1.5,#39c157,30);
  redBall = new Ball(100,300,1.5,1.5,#DE141B,30);
  yellowBall = new Ball (100,150,1.5,1.5,#E8E160,30);
  blueBall = new Ball (200,300,1.5,1.5,#239FB7,30);
}


void draw(){

  background(#DBC868);

yellowBall.display();
yellowBall.move();
greenBall.display();
greenBall.move();
redBall.display();
redBall.move();
greenBall.collidesWith(redBall);
greenBall.collidesWith(yellowBall);
yellowBall.collidesWith(redBall);


 textSize(13);
  fill(1);
textAlign (BOTTOM);
textLeading(15);
text("If you touch the balls, you die. Try to survive for 10 seconds. ",10,20);
 
 textSize(10);
  fill(1);
textAlign (BOTTOM);
textLeading(10);
text("Click W to change direction",10,40);

 textSize(13);
  fill(1);
textAlign (BOTTOM);
textLeading(10);
text("Change direction with the up arrow key.",10,60);

 textSize(40);
  fill(10);
textAlign (BOTTOM);
textLeading(10);
text("Level 1",120,200);

if (h == 0){
      background(#FC5254);
textSize(25);
text("Survive for 10 seconds!",10,240);
textSize(13);
  fill(1);
textAlign (BOTTOM);
textLeading(10);
text("Level 2 will now begin.",10,60);
blueBall.display();
blueBall.move();
yellowBall.display();
yellowBall.move();
greenBall.display();
greenBall.move();
redBall.display();
redBall.move();
greenBall.collidesWith(redBall);
greenBall.collidesWith(yellowBall);
yellowBall.collidesWith(redBall);
blueBall.collidesWith(redBall);
blueBall.collidesWith(greenBall);
blueBall.collidesWith(yellowBall);
}

else{

  h--;
}
x+=vx;
  makefrog();
   if(x-20>width){
x= -20 ;
  }
  if(x+20<0){
x=width+20;
  }
}


 


void makefrog(){
  fill(#009900);
  ellipse(x,y,50,20);
  ellipse(x+8,y,10,10);
   ellipse(x-8,y,10,10);
    ellipse(x+8,y,3,3);
   ellipse(x-8,y,3,3);
}

void mousePressed(){
  if (vx < 0){
    vx -= 1;
  }
  else{
    vx+=2;
  }
  
}


void keyPressed(){
  if(key == 'w'){
  vx = -vx;
  }
if(key == 'g'){
  frogcol = #009900;

}
if(keyCode == UP){

}
if (keyCode == DOWN){
  vx = vx/abs(vx);
}
if(keyCode == RIGHT){
textSize(50);
fill(1);
textAlign (BOTTOM);
textLeading(10);
text("game over.",10,200);
}


}
