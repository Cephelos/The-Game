ArrayList games;
float gameSpeed = 60;
boolean init = true, trans = false;
int curGame;
int timer;
int countdown = 5;
int score, win, lives = 4;



Game CutLog, JumpOnFoe, MashButton, dodgeBox, Needle, Catch;

class Game{
  
  int gamenum;
  
  
  float posx, posy, posx2, posy2, posx3, posy3, posx4, posy4;
  float spdx, spdy, spdx2, spdy2, spdx3, spdy3;
  float size1, size2, size3;
  int check1, check2, check3, check4;
  float special1, special2, special3;
  boolean bool1, bool2, bool3;

}

void setup(){
    
  size(800,800);
  games = new ArrayList();
  
  CutLog = new Game();
  CutLog.gamenum = 1;
   games.add(CutLog);

  JumpOnFoe = new Game();
  JumpOnFoe.gamenum = 2;
  games.add(JumpOnFoe);

  
  MashButton = new Game();
  MashButton.gamenum = 3;
  games.add(MashButton);
  
    Needle = new Game();
  Needle.gamenum = 4;
  games.add(Needle);
  
  dodgeBox = new Game();
  dodgeBox.gamenum = 5;
  games.add(dodgeBox);
  
  Catch = new Game();
  Catch.gamenum = 6;
  games.add(Catch);
  

  


}


void draw(){
  
          frameRate(gameSpeed);
  if(trans == false){
  if(init == true){
    curGame = 4;//(int)random(1,7);
  if(curGame == 1) CutLogScene();
  if(curGame == 2) JumpOnFoeScene();
  if(curGame == 3) MashButtonScene();
  if(curGame == 4) NeedleScene();
  if(curGame == 5) dodgeBoxScene();
  if(curGame == 6) CatchScene();
    init = false;
  }
  

  if(curGame == 1) CutLogRun();
  if(curGame == 2) JumpOnFoeRun();
  if(curGame == 3) MashButtonRun();
  if(curGame == 4) NeedleRun();
  if(curGame == 5) dodgeBoxRun();
  if(curGame == 6) CatchRun();
  timer++;

  text(countdown, 10 , 10);
   text(score + "   and   " + lives, 50 ,50);
  if(countdown == 0){ 
    trans = true;
    if( win != 1) lives -= 1;
    score++;
  
  
  }
  if(timer % 60 == 0) {
  countdown = countdown - 1;
   }

  }
  
  else{
      fill(255);
  rect(0,0, width, height);
  timer++;
  if(timer % 90 == 0) {
trans = false;
 init = true;
 countdown = 4;
  }
  }
}
       

  


void keyPressed(){
  
  if((CutLog.posx == 270 || CutLog.posx == 250) && key == 'a'){ CutLog.posx2 = -20;CutLog.posy  += 7;}
  if(CutLog.posx == 20 && key == 'd'){ CutLog.posx2 = 20; CutLog.posy += 7;}
  
  if(key == 'a') JumpOnFoe.spdx = -4;
  else if(key == 'd') JumpOnFoe.spdx = 4;
  else JumpOnFoe.spdx = 0;
  
  if(key == ENTER && 800 - dodgeBox.posy < 200) dodgeBox.spdy = -27;

    if(key == ENTER)
          {
            Catch.size1 = 50;
          }

  if(key == 'w' || key == 'W')
          {
            Needle.check2 = 1; // 1 is up . 2 is down

          }
        
          if(key == 's' || key == 'S')
          {
            Needle.check2 = 2;

          }
}



  