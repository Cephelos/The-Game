


  void CatchScene()
  {
    size( 800, 800 ); 

    Catch.special1 = random(0, 800);
    Catch.size1 = 00;
    Catch.size2 = 30;
    Catch.posy = 50;
    Catch.special1 = 0;
    Catch.check1 = 0;
    Catch.check2 = 0;
    Catch.check3 = 0;
    noStroke();
    win = 0;

  }



  void CatchRun()
  {
 

      
      background( 0, 0, 0); 

    {

        Catch.special1 += 1;
 
        if(Catch.special1 == (int)random(50,85))
        {
          Catch.size2 = 0;
        }
        
        if(Catch.size1 == 50)
        {
          if((Catch.posy + 120 >= 650 && Catch.posy +120 <= 830) && Catch.size1 == 50 && Catch.check3 ==0 )
          {
            Catch.check2 = 1;
            win = 1;
          }
          if(Catch.posy + 120 < 650)
          {
            Catch.check3 = 1;
          }
        }

        if(Catch.size2 == 0 && Catch.check2 ==0) //let go and not catchd
        {
          Catch.posy += 9;
        }

    }

    //// SHOW:    Draw objects
    {       
       
        fill( 255, 255, 255 );
        rect( 350,50 ,100 - Catch.size2 ,70  ); // top hand
        
        fill( 200, 200, 200 );
        rect( 390,Catch.posy ,20 ,120 ); // baton
        
        fill( 255, 255, 255 );
        rect( 365,650 ,100 - Catch.size1 ,70  ); // bottom hand
        
        
        
        fill( 200, 200, 200 );
        rect( Catch.posx, -100,20 ,20 ); //counter
        
    }

}