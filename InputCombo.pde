
void InputComboScene(){
  InputCombo.check1 = -1;
  InputCombo.check2 = (int)random(0,11);
  InputCombo.check3 = 0;
  InputCombo.bool1 = true;
  InputCombo.str3 = "";
  InputCombo.str1 = "";
  InputCombo.str2 = "";
  win = 0;
  background(0);
  
  
  
}

void InputComboRun(){
  background(0);
      fill(255);
    textAlign(CENTER);
    textSize(26);
  if(InputCombo.check2 == 0){
    text("Press Up four times after pressing Down", width/2,height/2);
     InputCombo.str1 = "duuuu";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
   
  if(InputCombo.check2 == 1){
    text("Press all the directional buttons clockwise, starting with up", width/2,height/2);
     InputCombo.str1 = "urdl";
     for(int i = 0; i < 4; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 2){
    text("Press Left twice, then A 3 times", width/2,height/2);
     InputCombo.str1 = "llaaa";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 3){
    text("Press down, left, then up, but first press up twice.", width/2,height/2);
     InputCombo.str1 = "uudlu";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 4){
    text("Press A 3 times, then press down, then A.", width/2,height/2);
     InputCombo.str1 = "aaada";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
    if(InputCombo.check2 == 5){
    text("Press the left, then right, then A, then left again, then right.", width/2,height/2);
     InputCombo.str1 = "lralr";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 6){
    text("Press A four times after pressing right.", width/2,height/2);
     InputCombo.str1 = "raaaa";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 7){
    text("Press down, then A, then down, then right.", width/2,height/2);
     InputCombo.str1 = "dadr";
     for(int i = 0; i < 4; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 8){
    text("Press left, then right. Repeat twice more, then press up.", width/2,height/2);
     InputCombo.str1 = "lrlrlru";
     for(int i = 0; i < 7; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 9){
    text("Press A 7 times, then press up.", width/2,height/2);
     InputCombo.str1 = "aaaaaaau";
     for(int i = 0; i < 8; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  if(InputCombo.check2 == 10){
    text("Press left twice, then don't press down, then press A twice.", width/2,height/2);
     InputCombo.str1 = "llaa";
     for(int i = 0; i < 4; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  
  textAlign(LEFT);
    textSize(12);
}