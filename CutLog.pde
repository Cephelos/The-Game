

void CutLogScene(){
  noStroke();
  size(800,800);
  CutLog.posx = 270;
  CutLog.posy = 250;
  CutLog.size1 = 500;
  win = 0;

}

void CutLogRun(){

  background(0);
  CutLog.posx = constrain(CutLog.posx, 050, 250);
  saw();
  wood();
  if(CutLog.posy >= 360) win = 1;

}

void saw(){
  fill(150, 150,100);
  rect(CutLog.posx,CutLog.posy, 500, 50);
  CutLog.posx += CutLog.posx2;
  CutLog.posy += CutLog.posy2;
  fill(255);

  if(keyPressed == false) CutLog.posy2 = 0;

}

void wood(){
fill(150,100,100);
  ellipse(300, 350, 100, 100);
  
}