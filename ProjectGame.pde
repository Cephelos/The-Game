ArrayList games;
float gameSpeed = 60;
boolean init = true, trans = false;
int curGame;
int timer;
int countdown = 4;
int score, win, lives = 4;
int transcount = 5;


Game CutLog, JumpOnFoe, MashButton, dodgeBox, Needle, Catch, Chop, InputCombo, Pick;

class Game{
  
  int gamenum;
  
  
  float posx, posy, posx2, posy2, posx3, posy3, posx4, posy4;
  float spdx, spdy, spdx2, spdy2, spdx3, spdy3;
  float size1, size2, size3;
  int check1, check2, check3, check4;
  float special1, special2, special3;
  boolean bool1, bool2, bool3, bool4;
  String str1, str2, str3;

}

void setup(){
    textSize(12);
    noStroke();
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
  
  Chop = new Game();
  Chop.gamenum = 7;
  games.add(Chop);
  
   InputCombo = new Game();
  InputCombo.gamenum = 8;
  games.add(InputCombo);
  
  Pick = new Game();
  Pick.gamenum = 9;
  games.add(Pick);
  
  
  
  
    ballX = random(0, 800);
  ballY = random(0, 200);
  ball2X = random(0, 800);
  ball2Y = random(0, 200);
  ball3X = random(0, 800);
  ball3Y = random(0, 200);
  dx = 5;
  dy = 0;
  dx2 = 3;
  dy2 = 0;
  dx3 = 7;
  dy3 = 0;

  


}


void draw(){
  
textAlign(LEFT);
  
          frameRate(gameSpeed);
  if(trans == false){
  if(init == true){
    curGame = (int)random(1,9);
  if(curGame == 1) CutLogScene();
  if(curGame == 2) JumpOnFoeScene();
  if(curGame == 3) MashButtonScene();
  if(curGame == 4) NeedleScene();
  if(curGame == 5) dodgeBoxScene();
  if(curGame == 6) CatchScene();
  if(curGame == 7) ChopScene();
  if(curGame == 8) InputComboScene();
 //if(curGame == 9) PickScene();
    init = false;
    
  }
  

  if(curGame == 1) CutLogRun();
  if(curGame == 2) JumpOnFoeRun();
  if(curGame == 3) MashButtonRun();
  if(curGame == 4) NeedleRun();
  if(curGame == 5) dodgeBoxRun();
  if(curGame == 6) CatchRun();
  if(curGame == 7) ChopRun();
  if(curGame == 8) InputComboRun();
  //if(curGame == 9) PickRun();
  timer++;

  text(countdown, 10 , 10);
   text("score: " + score + " and lives: " + lives, 10 ,50);

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
      textSize(800);
  rect(0,0, width, height);
  
  fill(0);
  {
     scene();
  balloop();
  ball2();
  ball3();
  collide();
    
  }
    
    
    
    
  timer++;
  if(timer % 30 == 0) {
    transcount -= 1;
    
  }
  if(transcount == 0) {
    textSize(12);
  trans = false;
  init = true;
  countdown = 5;
  transcount = 5;
  gameSpeed = gameSpeed * 1.03;
  if(lives == 0) exit();
  }
  }
}
       

  


void keyPressed(){
  
  if((CutLog.posx == 270 || CutLog.posx == 250) && key == 'a'){ CutLog.posx2 = -20; CutLog.posy  += 10;}
  if(CutLog.posx == 20 && key == 'd'){ CutLog.posx2 = 20; CutLog.posy += 10;}
  
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
          
  
            
            

void keyReleased(){
  
 if(key == ENTER && MashButton.size1 != 0) MashButton.size1 -= 25; 
 
 
  if(key == ENTER) InputCombo.str3 = "a"; InputCombo.check3 = 1;//A
  if(key == 'w') InputCombo.str3 = "u"; InputCombo.check3 = 1;//Up
  if(key == 'a') InputCombo.str3 = "l"; InputCombo.check3 = 1;//Left
  if(key == 's') InputCombo.str3 = "d"; InputCombo.check3 = 1;//Down
  if(key == 'd') InputCombo.str3 = "r"; InputCombo.check3 = 1; //Right
  
  
}



  