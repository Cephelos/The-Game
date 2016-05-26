


  void ChopScene()
  {
    Chop.size1 = ((int)(random(0,500)/15))*15;
    Chop.posy = 0;
    Chop.posy2 = 0;
    Chop.check1 = 0;
    Chop.special1 = 0;
    Chop.special2 = 0;
    Chop.special3 = 0;
    win = 0;
  }
  
  void ChopRun()
  {
    {
      background( 0, 0, 0); 
    }
    //action
    {
      
      if(keyPressed) 
        {
          if(key == ENTER && Chop.check1 == 0)
          {
            
            if(Chop.size1 <= 150)
            {
              win =1;
              Chop.check1 = 1;
            }
            else
            {
              win =-1;
              Chop.check1 = 1;
            }
          }
        }
        
      
      if(win == 1)
      {
        if(Chop.posy < 100)
        {
          Chop.posy += 10;
        }
        if(Chop.posy == 100)
        {
          Chop.special2 += 20;
        }
      }
      if(win == -1)
      {
        if(Chop.posy < 100)
        {
          Chop.posy += 30;
        }
        if(Chop.posy ==120)
        {
          Chop.special1 = 10;
          Chop.posy = 115;
        }
        
      }
        
      if(Chop.check1 == 0)
      {
        if(Chop.size1 == 0)
        {
          Chop.posy2 =0;
        }
      
        if(Chop.size1 > 570)
        {
          Chop.posy2 =1;
        }
      
        if(Chop.posy2==1)
        {
          Chop.size1 -= 15;
        }
        else
        {
          Chop.size1 += 15;
        }
        Chop.special3 = Chop.size1 / 2;
      }
      
    }
    //draw shapes
    {    
      
      if(Chop.size1 <= 100) // work Chop.check2
       {
         Chop.check2 =1;
       }
       else
       {
         Chop.check2=0;
       }
       ////////everything else
       
       fill( 255, 255, 255 );
       rect(300, 450, 100, 200  ); // person
       rect(700, 100, 50, 600  ); // meter
       
       fill( 255, 255 -(Chop.special1*20), 255 -(Chop.special1*20) );
       rect(250, 480 + Chop.posy, 30, 30-Chop.special1); // hand
        
       fill( 0, 0, 0 );
       rect(705, 105, 40, 590); //inner meter  
       
       fill( 100, 255 - Chop.special3 -50, 0 );
       rect(707, 107, 36, 586); //Chop.size1 meter (adjust plez)    \
       
       fill( 0,0,0 );
       rect(707, 107, 36, Chop.size1); // the black (adjust plez) 
       
       ////////////// TABLE
       
       fill( 190, 190, 190 );
       rect(150, 620, 10, 70); //left leg
   
       rect(350, 620, 10, 70); //right leg
       
       rect(130 - Chop.special2, 610 - (Chop.special2/2), 170, 20); //top l
       rect(300 + Chop.special2, 610 - (Chop.special2/2), 80, 20); //top r
       
       ////////////
      
    }

}