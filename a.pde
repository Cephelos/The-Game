float ballX, ballY, dx, dy;

float ball2X, ball2Y, dx2, dy2;

float ball3X, ball3Y, dx3, dy3;


  


  

void scene(){
  background(200);
  fill(100);
  rect(0, 700, width, 100);
  
}



void balloop(){
  fill(0, 100, 0);
  ellipse(ballX, ballY, 50, 50);
  
  ballX = ballX + dx;
  ballY = ballY + dy;
  
  if(ballX > 800 || ballX < 0)
      {
        dx = dx * -1;
      }
  
  
  if(ballY > 700 || ballY < 0)
      {
        dy = dy * -1;
      }
  
  dy = dy + .5;
  
}

void ball2(){
  fill(100, 0 ,0);
  ellipse(ball2X, ball2Y, 50, 50);
  
  ball2X = ball2X + dx2;
  ball2Y = ball2Y + dy2;
  
  if(ball2X > 800 || ball2X < 0)
      {
        dx2 = dx2 * -1;
      }
  
  
  if(ball2Y > 700 || ball2Y < 0)
      {
        dy2 = dy2 * -1;
      }
  
  dy2 = dy2 + .5;
  
}

void ball3(){
  fill(0, 0 ,100);
  ellipse(ball3X, ball3Y, 50, 50);
  
  ball3X = ball3X + dx3;
  ball3Y = ball3Y + dy3;
  
  if(ball3X > 800 || ball3X < 0)
      {
        dx3 = dx3 * -1;
      }
  
  
  if(ball3Y > 700 || ball3Y < 0)
      {
        dy3 = dy3 * -1;
      }
  
  dy3 = dy3 + .5;
  
}

void collide(){
  if (dist(ballX, ballY, ball2X, ball2Y) < 35){
    
    dy *= -1;
    dx *= -1;
    dy2 *= -1;
    dx2 *= -1;
  
  
  
}

if (dist(ballX, ballY, ball3X, ball3Y) < 35){
    
    dy *= -1;
    dx *= -1;
    dy3 *= -1;
    dx3 *= -1;
  
  
  
}

if (dist(ball3X, ball3Y, ball2X, ball2Y) < 35){
    
    dy3 *= -1;
    dx3 *= -1;
    dy2 *= -1;
    dx2 *= -1;
  
  
  
}
}