
void InputComboScene(){
  InputCombo.check1 = -1;
  InputCombo.check2 = 2;//(int)random(0,5);
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
    text("Press Left twice, then A 3 times", width/2,height/2);
     InputCombo.str1 = "llaaa";
     for(int i = 0; i < 5; i++){
       if( InputCombo.check3 == 1) InputCombo.str2 = InputCombo.str2 + InputCombo.str3;  InputCombo.check3 = 0; 
     }
     if(InputCombo.str2.equals(InputCombo.str1)) win = 1;
  }
  
  textAlign(LEFT);
    textSize(12);
}