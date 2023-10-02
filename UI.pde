class UI
{
  public UI()
  {
  
  }
  void drawTitle()
  {
    fill(93,53,53);//draws boat
    ellipse(200,375,100,100);
    fill(0);
    rect(150,275,100,100);
    
    fill(0,0,255);//draws water
    rect(0,400,width,height);
    
    fill(100);//draws fish
    for(Fish f: fishs)
    {
      fill(255);
      f.drawFish();
      f.moveFish();
    }
    
    //draws moon
    imageMode(CENTER);  
    fill(233,233,197);
    image(moon,855,30);
    
    //draws stars
    
    for(int i = 0; i < maxStars; i++ )
    {
     circle(starX[i],starY[i],5);
     currentDot++;

    }
    
    
    
    //Prints Press enter
    textSize(50);
    text("press 'ENTER' to start",200,800);
    GameName();
  }
  void drawGame()
  {
    fill(0,0,255);//draws water
    rect(0,400,width,height);
    
    //draws moon
    imageMode(CENTER);  
    fill(233,233,197);//draws moon
    image(moon,855,30);
    
    
    
    textSize(30);
    text("$"+money,30,50);//your money
    textAlign(CENTER);
    fill(255);
    circle(width - 50,150,50);// the shop button
    circle(width - 50,250,50);// the aquarium button
    fill(0);
    textSize(17);
    text("Shop",width - 50, 155);  
    text("Aqua",width - 50, 255); 
    textAlign(CORNER);
  }
  void drawShop()
  {
    //banner
    textAlign(CORNER);
    background(0,0,255);
    fill(95,60,60);
    rect(0,10,900,200);
    textSize(200);
    fill(0);
    text("SHOP",200,175);
   
    textSize(100);  
    text("RODS",100,300);
    text("HOOKS",500,300);
   
    //RODS
    textSize(50);
    // rod 1
    fill(0);
    rect(160,340,100,100,50);
    fill(255);
    if(!s.rodBought[0])//if not bought
    {
      text("100",175,400);
    }
    if(s.rodBought[0])//if bought
    {
      text("bought",175,400);
    }
    // rod 2
    fill(0);
    rect(160,440,100,100,50);
    fill(255);
    if(!s.rodBought[1])//if not bought
    {
      text("500",175,500);
    }
    if(s.rodBought[1])//if bought
    {
      text("bought",175,500);
    }
    // rod 3
    fill(0);
    rect(160,540,100,100,50);
    fill(255);
    if(!s.rodBought[2])//if not bought
    {
      text("750",175,600);
    }
    if(s.rodBought[2])//if bought
    {
      text("bought",175,600);
    }
   
    // rod 4
    fill(0);
    rect(160,640,100,100,50);
    fill(255);
    if(!s.rodBought[3])//if bought
    {
      text("1000",175,700);  
    }
    if(s.rodBought[3])//if bought
    {
      text("bought",175,700);
    }
   
    // rod 5
    fill(0);
    rect(160,740,100,100,50);
    fill(255);
    if(!s.rodBought[4])//if bought
    {
      text("1500",175,800);
    }
    if(s.rodBought[4])//if bought
    {
      text("bought",175,800);
    }
   
    //HOOKS
    //hook 1
    fill(0);
    rect(575,340,100,100,50);
    fill(255);
    if(!s.hookBought[0])//if bought
    {
      text("10",600,400);
    }
    if(s.hookBought[0])//if bought
    {
      text("bought",600,400);
    }
    //hook 2
    fill(0);
    rect(575,440,100,100,50);
    fill(255);
    if(!s.hookBought[1])//if bought
    {
      text("50",600,500);
    }
    if(s.hookBought[1])//if bought
    {
      text("bought",600,500);
    }
    //hook 3
    fill(0);
    rect(575,540,100,100,50);
    fill(255);
    if(!s.hookBought[2])//if bought
    {
      text("75",600,600);
    }
    if(s.hookBought[2])//if bought
    {
      text("bought",600,600);
    }
    //hook 4
    fill(0);
    rect(575,640,100,100,50);
    fill(255);
    if(!s.hookBought[3])//if bought
    {
      text("100",600,700);
    }
    if(s.hookBought[3])//if bought
    {
      text("bought",600,700);
    }
    //hook 5
    fill(0);
    rect(575,740,100,100,50);
    fill(255);
    if(!s.hookBought[4])//if bought
    {
      text("150",600,800);
    }
    if(s.hookBought[4])//if bought
    {
      text("bought",600,800);
    }
    
    fill(255);
    circle(width - 50,50,50);// the leave shop button
    
    textSize(30);
    text("$"+money,30,50);//your cash
    textAlign(CENTER);
    fill(0);
    textSize(17);
    text("Leave",width - 50, 55);
    
    
    textAlign(CORNER);
  }
  void drawAqua()
  {
    rectMode(CORNER);
 
    //Coral Images
    image(aquarium, 450, 450);
   
    //Sand Color
    fill(#C2B280);
    rect(1,730,900,100);
   
    //Aquarium title screen
    fill(255);
    textSize(70);
    textAlign(CENTER);
    text("AQUARIUM", 450,800);
   
    fill(0);
    rect(285,810,320,10);
   
    //Locked Fish
    rectMode(CENTER);
    fill(#006994);
   
    imageMode(CENTER);
    //1st Row
    rect(225,180,80,80,30);
    image(lock,225,180);
    rect(450,180,80,80,30);
    image(lock,450,180);
    rect(675,180,80,80,30);
    image(lock,675,180);
   
    //2nd Row  
    rect(225,350,80,80,30);
    image(lock,225,350);
    rect(450,350,80,80,30);
    image(lock,450,350);
    rect(675,350,80,80,30);
    image(lock,675,350);
   
    //3rd Row
    rect(225,550,80,80,30);
    image(lock,225,550);
    rect(450,550,80,80,30);
    image(lock,450,550);
    rect(675,550,80,80,30);
    image(lock,675,550);
   
    //Return to Game Button
    fill(#C2B280);
    //rect(450,870,200,40);
    circle(width - 50,50,50);
    fill(255);
    //textSize(30);
    textSize(17);
    //text("Return to Game",450,880);
    text("Leave",width - 50, 55);
    rectMode(CORNER);
  }
}
