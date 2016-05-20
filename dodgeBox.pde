
void dodgeBoxScene(){
  
  dodgeBox.bool1 = false;
  size(800,800);
  dodgeBox.posx = 100;  
  dodgeBox.posy=725;  
  dodgeBox.spdx=0; 
  dodgeBox.spdy=0;
  dodgeBox.posx2=random(1300, 3700);
  dodgeBox.posy2 = 625; 
  dodgeBox.spdy2 = 0;
   win = 0;
   
  
}


void dodgeBoxRun(){
  frameRate(gameSpeed);
  fill(0,250);
  rect(0,0,width,height);
  fill(255);
  fill(155);
  rect(0,750, width, 50);
  //rect(600, 0, 2, height);
  noStroke();
  ball();
  boxq();
  if(dodgeBox.posx2 < dodgeBox.posx && dodgeBox.bool1 == false) win = 1;

}

void ball(){

 
    fill(255);
  ellipse(dodgeBox.posx,dodgeBox.posy, 50, 50);
    if (dodgeBox.bool1 == false){
  dodgeBox.posx += dodgeBox.spdx;
  dodgeBox.posy += dodgeBox.spdy;
    }

 
 

       if(dodgeBox.posy > height -75) dodgeBox.spdy = 0;
       else   dodgeBox.spdy = dodgeBox.spdy + 1;
      if( dist(dodgeBox.posx, dodgeBox.posy, dodgeBox.posx2, dodgeBox.posy2) < 150) dodgeBox.bool1 = true;

      
    
  
}

void boxq(){
  dodgeBox.spdx2 = random(-18, -12);
  dodgeBox.spdx2 = dodgeBox.spdx2;

    
    
  ellipse(dodgeBox.posx2,dodgeBox.posy2,250,250);
    if (dodgeBox.bool1 == false){
  dodgeBox.posx2 += dodgeBox.spdx2;
  dodgeBox.posy2 += dodgeBox.spdy2;
 
    }
 
}