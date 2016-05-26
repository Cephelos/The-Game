
void JumpOnFoeScene(){
  noStroke();

  JumpOnFoe.posx = 100;
  JumpOnFoe.posy = height*4/5 - 120;
  
  JumpOnFoe.bool1 = true;
  JumpOnFoe.bool2 = true;

  

  JumpOnFoe.posx2 = 300;// random(width/3, width -50);
  JumpOnFoe.posy2 = height*4/5 - 25;
   JumpOnFoe.spdx2 = 10;

     JumpOnFoe.posx3 = 10;//random(width/3, width -50);
  JumpOnFoe.posy3 = height*4/5 - 25;
   JumpOnFoe.spdx3 = -10;
 win = 0;

}

void JumpOnFoeRun(){
  
  background(0);
  fill(74,78,239);
  player();
  fill(200, 100, 50);
  enemy();
  fill(100, 0, 100);
  rect(0,height*4/5, width, height);
  
  if(JumpOnFoe.bool1 == false && JumpOnFoe.bool2 == false) win = 1;
}

void player(){
  rect(JumpOnFoe.posx, JumpOnFoe.posy, 100, 100);
  JumpOnFoe.posx += JumpOnFoe.spdx;
  JumpOnFoe.posy += JumpOnFoe.spdy;
  
  JumpOnFoe.spdy+= 2;
  if(JumpOnFoe.posy > height*4/5 - 100) JumpOnFoe.spdy = -30;
  if(JumpOnFoe.posx +100 > width) JumpOnFoe.spdx = abs(JumpOnFoe.spdx) *(-1);
       if(JumpOnFoe.posx < 0) JumpOnFoe.spdx = abs(JumpOnFoe.spdx);
       if(JumpOnFoe.posy > height -75) JumpOnFoe.spdy = 0;
       if(JumpOnFoe.posy < 0) JumpOnFoe.spdy = abs(JumpOnFoe.spdy);
  
  
}

void enemy(){
if (JumpOnFoe.bool1 == true){
rect(JumpOnFoe.posx2, JumpOnFoe.posy2, 25, 25);

JumpOnFoe.posx2 += JumpOnFoe.spdx2;
JumpOnFoe.posy2 += JumpOnFoe.spdy2;
}

  if(JumpOnFoe.posx2 + 25 > width) JumpOnFoe.spdx2 = abs(JumpOnFoe.spdx2) *(-1);
   if(JumpOnFoe.posx2 < 0) JumpOnFoe.spdx2 = abs(JumpOnFoe.spdx2);
 
   if(JumpOnFoe.bool2 == true){
   rect(JumpOnFoe.posx3, JumpOnFoe.posy3, 25, 25);
JumpOnFoe.posx3 += JumpOnFoe.spdx3;
JumpOnFoe.posy3 += JumpOnFoe.spdy3;
   }
 
  if(JumpOnFoe.posx3 + 25 > width) JumpOnFoe.spdx3 = abs(JumpOnFoe.spdx3) *(-1);
   if(JumpOnFoe.posx3 < 0) JumpOnFoe.spdx3 = abs(JumpOnFoe.spdx3);
  
  if(dist(JumpOnFoe.posx2 +12.5, JumpOnFoe.posy2+12.5, JumpOnFoe.posx + 50, JumpOnFoe.posy + 50) < 62.5) JumpOnFoe.bool1 = false;
  if(dist(JumpOnFoe.posx3 +12.5, JumpOnFoe.posy3+12.5,  JumpOnFoe.posx + 50, JumpOnFoe.posy + 50) < 62.5) JumpOnFoe.bool2 = false;
}