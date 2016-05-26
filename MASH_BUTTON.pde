



void MashButtonScene(){ 

  MashButton.size1 = 350;
  win = 0;
  fill(255);

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