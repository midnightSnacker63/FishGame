class UI
{
  public UI()
  {
  
  }
  void drawTitle()
  {
    fill(255);
    //draws stars
    for(int i = 0; i < maxStars; i++ )
    {
     circle(starX[i],starY[i],5);
     currentDot++;
    }
    
    
    //fill(93,53,53);//draws boat
    imageMode(CENTER);
    image(boat, 200,340);
    //ellipse(200,375,100,100);
    //fill(0);
    //rect(150,275,100,100);
    
    fill(0,0,255);//draws water
    rect(0,400,width,height+r.maxDepth);
    
    fill(100);//draws fish
    for(Fish f: fishs)
    {
      //fill(255);
      f.drawFish();
      f.moveFish();
    }
    
    //draws moon
    imageMode(CENTER);  
    fill(233,233,197);
    image(moon,width-45,30);
    //Prints Press enter
    textSize(50);
    text("press 'ENTER' to start",530,800);
    GameName();
  }
  
  void drawGame()
  {
    fill(0,0,255);//draws water
    rect(0,400-r.yPos+height/2,width,height+r.maxDepth);
    
    
    //draws stars
    fill(255);
    for(int i = 0; i < maxStars; i++ )
    {
     circle(starX[i],starY[i]-r.yPos+height/2,5);
     currentDot++;
    }
    
    //draws moon
    imageMode(CENTER);  
    fill(233,233,197);//draws moon
    image(moon,width-45,30-r.yPos+height/2);
    
    textSize(30);
    text("$"+money,30,50);//your money
    text("current depth "+ (int)r.yPos/10,30,80);//your current depth
    textAlign(CENTER);
    fill(255);
    circle(width - 50,150,50);// the shop button
    circle(width - 50,250,50);// the aquarium button
    if(a.somethingNew)
    {
      text("!",width - 80,260);
    }
    fill(0);
    textSize(17);
    text("Shop",width - 50, 155);  
    text("Aqua",width - 50, 255); 
    for(int i = 0; i < 10;i++)// dark bottom fade
    {
      fill(0,0,255-i*30);
      noStroke();
      rect(0,6000+i*20-r.yPos+height/2,width,1000);
    }
    rect(0,7000-r.yPos+height/2,width,10000);
    stroke(1);
    textAlign(CORNER);
  }
  void drawShop()
  {
    //banner
    textAlign(CORNER);
    background(0,0,255);
    fill(95,60,60);
    rect(0,10,width,200);
    textSize(200);
    fill(0);
    text("SHOP",550,175);
   
    textSize(100);  
    text("RODS",100,300);
    text("HOOKS",450,300);
    text("POWER-UPS", 850, 300);
    text("BOATS", 850, 550);
   
    //RODS
    textSize(50);
    // rod 1
    fill(0);
    rect(160,340,100,100,50);
    fill(255);
    if(!s.rodBought[0])//if not bought
    {
      text(s.rodPrice[0],175,400);
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
      text(s.rodPrice[1],175,500);
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
      text(s.rodPrice[2],175,600);
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
      text(s.rodPrice[3],175,700);  
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
      text(s.rodPrice[4],175,800);
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
    
    textSize(20);
    //Powerup 1
    fill(0);
    rect(900,340,100,100,50);
    fill(255);
    
    text("×2 Speed", 905,380);
    text("$2000",920,410);
    
    //Powerup 2
    fill(0);
    rect(1050,340,100,100,50);
    fill(255);
    
    text("×2 Money", 1058,380);
    text("$3000",1070 ,410);
    
    //Powerup 3
    fill(0);
    rect(1200,340,100,100,50);
    fill(255);
    
    text("×2 Fish Cap.", 1205,380);
    text("$2000",1220 ,410);
    
    //Powerup 4
    fill(0);
    rect(1350,340,100,100,50);
    fill(255);
    
    text("TBA", 1365,380);
    text("??",1370 ,410);
    
    //Boats
    //Josh's Boat
    fill(0);
    rect(900,600,100,100,50);
    fill(255);
    
    text("Josh's Boat", 900,650);
    text("$10,000",920 ,670);
    
     //Zayvein's Boat
    fill(0);
    rect(1150,600,100,100,50);
    fill(255);
    
    text("Zays's Boat", 1150,650);
    text("$100,000",1160 ,670);
    
    //Erick's Boat
    fill(0);
    rect(1400,600,100,100,50);
    fill(255);
    
    text("Erick's Boat", 1400,650);
    text("$15,000",1420 ,670);
    
    //
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
    rect(1,730,2300,100);
   
    //Aquarium title screen
    fill(255);
    textSize(70);
    textAlign(CENTER);
    text("AQUARIUM", 800,800);
   
    fill(0);
    rect(600,810,395,10);
   
    //Locked Fish
    rectMode(CENTER);
    fill(#006994);
   
    imageMode(CENTER);
    //1st Row
    rect(400,180,80,80,30);
    if(!a.unlocked[0])//first in row
    {
      image(lock,400,180);
    }
    if(a.unlocked[0])
    {
      fill(255);
      //circle(400,180,50);
      image(fishPic[0],400,180);
      fill(#006994);
    }
    
    rect(800,180,80,80,30);
    if(!a.unlocked[1])//second in row
    {
      image(lock,800,180);
    }
    if(a.unlocked[1])
    {
      fill(100);
      image(fishPic[1],800,180);
      fill(#006994);
    }

    rect(1200,180,80,80,30);
    if(!a.unlocked[2])//third in row
    {
      image(lock,1200,180);
    }
    if(a.unlocked[2])
    {
      fill(100,150,250);
      image(fishPic[8],1200,180);
      fill(#006994);
    }
   
    //2nd Row  
    rect(400,350,80,80,30);
    if(!a.unlocked[3])//first in row
    {
      image(lock,400,350);
    }
    if(a.unlocked[3])
    {
      fill(255,192,203);
      image(fishPic[3],400,350);

      fill(#006994);
    }
    rect(800,350,80,80,30);
    if(!a.unlocked[4])//second in row
    {
      image(lock,800,350);
    }
    if(a.unlocked[4])
    {
      fill(255,00,203);
      image(fishPic[4],800,350);
      fill(#006994);
    }
    rect(1200,350,80,80,30);
    image(lock,1200,350);
   
    //3rd Row
    rect(400,550,80,80,30);
    image(lock,400,550);
    rect(800,550,80,80,30);
    image(lock,800,550);
    rect(1200,550,80,80,30);
    image(lock,1200,550);
   
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
    //debug placholders below
    
  }
}
