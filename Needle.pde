


  void NeedleScene()
  {
 
    frameRate(gameSpeed);
    Needle.special1 = random(50, 550);
    noStroke();
    Needle.posx = 700;
    Needle.posy = 500;

    Needle.check2 = 0;
    win = 0;
  }


  void NeedleRun()
  {
  
    {
        background( 0, 0, 0); 
    }


    
    {

        
       if(win == 0)
       {
        if(Needle.check2 == 1)
        {
          Needle.posy -= 1.5;
        }
        else if(Needle.check2 == 2) 
        {
          Needle.posy += 1.5;
        }
        else
        {
          Needle.posy += 0;
        }
       }
       
       if(win == -1)
       {
         Needle.posx-= 0;
       }
       if(win == 0)
       {
         Needle.posx-= 1.5;
       }
       if(win == 1 && Needle.posx > 50)
       {
         Needle.posx-= .5;
       }
       
       if(Needle.posx <= 360 && win == 0)
       {
         if(Needle.posy >= Needle.special1 + 10 && Needle.posy <= Needle.special1 + 50)// 1st: below top pin 2nd: above bottom
         {
           win = 1;
         }
         else
         {
           win = -1;
         }
       }    
 
    }


    //// SHOW:    Draw objects
    {     
      
      fill(255, 255, 255);
      rect(350, Needle.special1, 10, 10); // top
      rect(350, Needle.special1 + 50, 10, 350); // bottom of pin
      
      rect(Needle.posx, Needle.posy, 350, 2.5); // string
  

    }

}