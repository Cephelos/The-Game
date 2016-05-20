



void MashButtonScene(){ 
  size(800,800);
  MashButton.size1 = 350;
  win = 0;

}
void MashButtonRun(){
  background(0);

  frameRate(gameSpeed);
circle();
if(MashButton.size1 <= 0) win = 1;
}

void circle(){
  ellipse(width/2,height/2, MashButton.size1,MashButton.size1);
  
}

void keyReleased(){
  
 if(key == ENTER && MashButton.size1 != 0) MashButton.size1 -= 25; 
  
  
  
}