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
  void drawStars()
  {
    //draws stars
    fill(255);
    for(int i = 0; i < maxStars; i++ )
    {
     circle(starX[i],starY[i]-r.yPos+height/2,5);
     currentDot++;
    }
  }
  void drawGame()
  {
    
    fill(0,0,255);//draws water
    rect(0,400-r.yPos+height/2,width,height+r.maxDepth);
    //draws moon
    imageMode(CENTER);  
    fill(233,233,197);//draws moon
    image(moon,width-45,30-r.yPos+height/2);
    
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
  void drawInfo()
  {
    fill(255);
    if(r.underwater)
    {
      rect(20,r.yPos/7.1,10,10);
    }
    else
    {
      rect(20,56,10,10);
    }
    textSize(30);
    image(cashIcon,1365,40);
    text(money,1385,50);//your money
    if(r.underwater)
    {
      text("current depth "+ ((int)r.yPos-400)/10,1350,80);//your current depth
    }
    else
    {
      text("current depth 0",1350,80);//your current depth
    }
    
    textAlign(CENTER);
    fill(255);
    //circle(width - 50,150,50);// the shop button
    image(storeIcon,width - 50, 150);
    image(fishBowl,width-50,250);// the aquarium button
    image(sack,width - 50, 350);//bag icon
    image(controlIcon,width - 50, 450);//controls icon
    image(saveIcon,width - 50, height-50);//save button
    image(questIcon,width-50,550);//Quest buttom
    //circle(width - 50,350,50);// inventory button
    if(a.somethingNew)
    {
      text("!",width - 80,260);
    }
    for(Quests q: quests)
    {
      if(q.completed())
        text("!",width - 80,560);
    }
    fill(0);
    textSize(17);
    fill(255);
    text("Aqua",width - 50, 255); 
    
    text("Shop",width - 50, 155);  
    
    text("Bag",width - 50, 355);

    
  }
  void drawShop()
  {
    //banner
    textAlign(CORNER);
    //background(shopBackground);
    push();
    imageMode(CORNER);
    image(shopBackground,0,0);
    pop();
    //fill(95,60,60);
    //rect(0,10,width,200);
    //textSize(200);
    //fill(0);
    //text("SHOP",550,175);
    push();
    imageMode(CENTER);

    image(shopKeeper,width/2,height/3);
    image(baitSign,300,120);
    push();
    translate(710,230);
    fill(255);
    noStroke();
    circle(0,0,50);
    rotate( atan2( 230-mouseY, 710-mouseX ) );
    fill(0);
    circle(-10,0,15);
    pop();
    push();
    translate(890,230);
    fill(255);
    noStroke();
    circle(0,0,50);
    rotate( atan2( 230-mouseY, 890-mouseX ) );
    fill(0);
    circle(-10,0,15);
    pop();
    image(shopCounterTop,width/2,height/2);
    pop();
    
    textSize(100);  
    push();
    fill(255);
    textAlign(CENTER);
    if(s.shopPage == 1)//first page
    {
      text("RODS",450,630);
      text("HOOKS",width-450,630);
        //RODS
      textSize(50);
      // rod 1
      fill(0);
      rect(150,700,100,100,50);
      fill(255);
      push();
      textAlign(CENTER);
      if(!s.rodBought[0])//if not bought
      {
        text(s.rodPrice[0],200,765);
      }
      if(s.rodBought[0])//if bought
      {
        push();
        textSize(30);
        text("bought",200,760);
        pop();
      }
      // rod 2
      fill(0);
      rect(275,700,100,100,50);
      fill(255);
      if(!s.rodBought[1])//if not bought
      {
        text(s.rodPrice[1],325,765);
      }
      if(s.rodBought[1])//if bought
      {
        push();
        textSize(30);
        text("bought",325,760);
        pop();
      }
      // rod 3
      fill(0);
      rect(400,700,100,100,50);
      fill(255);
      if(!s.rodBought[2])//if not bought
      {
        text(s.rodPrice[2],450,765);
      }
      if(s.rodBought[2])//if bought
      {
        push();
        textSize(30);
        text("bought",450,760);
        pop();
      }
     
      // rod 4
      fill(0);
      rect(525,700,100,100,50);
      fill(255);
      if(!s.rodBought[3])//if not bought
      {
        text(s.rodPrice[3],575,765);  
      }
      if(s.rodBought[3])//if bought
      {
        push();
        textSize(30);
        text("bought",575,760);
        pop();
      }
     
      // rod 5
      fill(0);
      rect(650,700,100,100,50);
      fill(255);
      if(!s.rodBought[4])//if not bought
      {
        text(s.rodPrice[4],700,765);
      }
      if(s.rodBought[4])//if bought
      {
        push();
        textSize(30);
        text("bought",700,760);
        pop();
      }
     
      //HOOKS
      //hook 1
      fill(0);
      rect(850,700,100,100,50);
      fill(255);
      if(!s.hookBought[0])//if not bought
      {
        text(s.hookPrice[0],900,765);
      }
      if(s.hookBought[0])//if bought
      {
        push();
        textSize(30);
        text("bought",900,760);
        pop();
      }
      //hook 2
      fill(0);
      rect(975,700,100,100,50);
      fill(255);
      if(!s.hookBought[1])//if not bought
      {
        text(s.hookPrice[1],1025,765);
      }
      if(s.hookBought[1])//if bought
      {
        push();
        textSize(30);
        text("bought",1025,760);
        pop();
      }
      //hook 3
      fill(0);
      rect(1100,700,100,100,50);
      fill(255);
      if(!s.hookBought[2])//if not bought
      {
        text(s.hookPrice[2],1150,765);
      }
      if(s.hookBought[2])//if bought
      {
        push();
        textSize(30);
        text("bought",1150,760);
        pop();
      }
      //hook 4
      fill(0);
      rect(1225,700,100,100,50);
      fill(255);
      if(!s.hookBought[3])//if bought
      {
        text(s.hookPrice[3],1275,765);
      }
      if(s.hookBought[3])//if bought
      {
        push();
        textSize(30);
        text("bought",1275,760);
        pop();
      }
      //hook 5
      fill(0);
      rect(1350,700,100,100,50);
      fill(255);
      if(!s.hookBought[4])//if bought
      {
        text(s.hookPrice[4],1400,765);
      }
      if(s.hookBought[4])//if bought
      {
        push();
        textSize(30);
        text("bought",1400,760);
        pop();
      }
      pop();
    }
    if(s.shopPage == 9)
    {
      push();
      text("POWER-UPS", width/2, 630);
      textSize(20);
      //Powerup 1
      fill(0);
      rect(900,700,100,100,50);
      fill(255);
      
      text("×2 Speed", 905,750);
      text("$2000",920,775);
      
      //Powerup 2
      fill(0);
      rect(1050,700,100,100,50);
      fill(255);
      
      text("×2 Money", 1058,750);
      text("$3000",1070 ,775);
      
      //Powerup 3
      fill(0);
      rect(1200,700,100,100,50);
      fill(255);
      
      text("×2 Fish Cap.", 1205,750);
      text("$2000",1220 ,775);
      
      //Powerup 4
      fill(0);
      rect(1350,700,100,100,50);
      fill(255);
      
      text("TBA", 1365,750);
      text("??",1370 ,775);
      pop();
      }
    if(s.shopPage == 2)
    {
      push();
      text("BOATS", width/2, 630);
      textAlign(CENTER);
      textSize(20);
      //Boats
      //Josh's Boat
      fill(0);
      rect(400,700,100,100,50);
      fill(255);
      if(!s.boatBought[0])
      {
        text("Josh's Boat", 450,750);
        text("$10,000",450 ,775);
      }
      if(s.boatBought[0])
      {
        push();
        textSize(30);
        text("bought",450,760);
        pop();
      }
       //Zayvein's Boat
      fill(0);
      rect(750,700,100,100,50);
      fill(255);
      if(!s.boatBought[1])
      {
        text("Zay's Boat", 800,750);
        text("$100,000",800 ,775);
      }
      if(s.boatBought[1])
      {
        push();
        textSize(30);
        text("bought",800,760);
        pop();
      }
      //Erick's Boat
      fill(0);
      rect(1050,700,100,100,50);
      fill(255);
      if(!s.boatBought[2])
      {
        text("Erick's Boat", 1100,750);
        text("$15,000",1100 ,775);
      }
      if(s.boatBought[2])
      {
        push();
        textSize(30);
        text("bought",1100,760);
        pop();
      }
      
      pop();
    }
    
    pop();
    
    fill(255);
    if(dist(mouseX,mouseY,width-50,50) < 25)// the leave shop button
    {
      image(doorButton[1],width-50,55);
    }
    else
    {
      image(doorButton[0],width-50,50);
    }
    if(s.shopPage != 2)
    {
      image(shopArrows[1],width-50,height-50);//next page
    }
    
    if(s.shopPage != 1)
    {
      image(shopArrows[0],width-150,height-50);//previous page
    }
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
    //circle(width - 50,50,50);
    if(dist(mouseX,mouseY,width-50,50) < 25)// the leave aquarium button
    {
      image(doorButton[1],width-50,55);
    }
    else
    {
      image(doorButton[0],width-50,50);
    }
    fill(255);
    //textSize(30);
    textSize(17);
    //text("Return to Game",450,880);
    text("Leave",width - 50, 55);
    rectMode(CORNER);
    //debug placholders below
    
  }
  void drawInventory()
  {
    background(inventoryBack);
    
    push();
    
    textSize(100);
    fill(0);
    text("boats",width/2,100);
    text("hooks",width/2,500);
    pop();
    fill(0);
    //boats
    circle(400,300,200);
    circle(650,300,200);
    circle(width-650,300,200);
    circle(width-400,300,200);
    push();
    imageMode(CENTER);
    textAlign(CENTER);
    image(boat,410,280);
    if(s.boatBought[0])//zays
    {
      image(jBoat,650,300);
    }
    if(s.boatBought[1])//zays
    {
      image(zBoat,width-660,300);
    }
    
    if(s.boatBought[2])//ericks
    {
      image(eBoat,width-400,300);
    }
    push();
    fill(255);
    textAlign(CORNER);
    if(boats == 1)
    {
      
      text("selected",370,380);
    }
    if(boats == 2)
    {
      text("selected",620,380);
    }
    if(boats == 3)
    {
      text("selected",width-680,380);
    }
    if(boats == 4)
    {
      text("selected",width-430,380);
    }

    pop();
    //image()
    pop();
    //hooks
    circle(400,700,200);
    circle(650,700,200);
    circle(width-650,700,200);
    circle(width-400,700,200);

    push();
    textSize(17);
    fill(0);
    textAlign(CENTER);
    if(dist(mouseX,mouseY,width-50,50) < 25)// the leave aquarium button
    {
      image(doorButton[1],width-50,55);
    }
    else
    {
      image(doorButton[0],width-50,50);
    }
    text("Leave",width - 50, 55);
    pop();
  }
  void debugInfo()
  {
    push();
    textAlign(CORNER);
    textSize(20);
    fill(150);
    text("underwater: "+ r.underwater,50,50 );
    text("full: "+ r.full,50,75 );
    text("selling: "+ r.selling,50,100 );
    text("fish on: "+ r.fishOnHook,50,125 );
    text("max fish: "+ r.maxFish,50,150 );
    text("rod snapped: "+ r.rodSnapped,50,175 );
    text("current boat: "+ boats,50,200 );
    text("hook x position: "+ r.xPos,50,225 );
    text("hook y position: "+ r.yPos,50,250 );
    text("hook x speed: "+ r.speedX,50,275 );
    text("hook y speed: "+ r.speedY,50,300 );
    text("player x position: "+ p.xPos,50,325 );
    text("player y position: "+ p.yPos,50,350 );
    text("player x speed: "+ p.xSpeed,50,375 );
    text("player y speed: "+ p.ySpeed,50,400 );
    text("hook range multiplier: " + r.hookRangeMultiplier,50,425);
    pop();
  }
  void controlScreen()
  {
    background(100,200,100);
    fill(0);
    
    rect(0,100,width,150);
    push();
    textSize(100);
    fill(255);
    text("controls",width/2,200);
    pop();
    
    rect(20,270,width-40,610);
    push();
    textAlign(CORNER);
    textSize(75);
    fill(255);
    text("W - Reel in",50,375);
    text("A - Go left",50,500);
    text("S - Reel out",50,625);
    text("D - Go right",50,750);
    text("1 - save game",500,375);
    text("2 - load save",500,500);
    pop();
    push();
    textSize(17);
    fill(0);
    textAlign(CENTER);
    if(dist(mouseX,mouseY,width-50,50) < 25)// the leave aquarium button
    {
      image(doorButton[1],width-50,55);
    }
    else
    {
      image(doorButton[0],width-50,50);
    }
    text("Leave",width - 50, 55);
    pop();
  }
  void cheatControls()
  {
    push();
    textAlign(CORNER);
    fill(255);
    textSize(100);
    text("cheats",1000,375);
    textSize(75);
    text("M - add money",1000,500);
    text("3 - range power",1000,600);
    //text("4 - fish frenzy",1000,700);
    pop();
  }
  void drawQuests()
  {
    
    background(questBackground);
    
    image(questSign,width/2,120);
    
    image(questPaper,400,400);
    push();
    tint(255,0,0);
    image(tac,400,290);
    pop();
    image(questPaper,width/2,400);
    push();
    tint(0,255,0);
    image(tac,width/2,290);
    pop();
    image(questPaper,1200,400);
    push();
    tint(255,0,255);
    image(tac,1200,290);
    pop();
    image(questPaper,400,700);
    push();
    tint(255,255,0);
    image(tac,400,590);
    pop();
    image(questPaper,width/2,700);
    push();
    tint(255,125,0);
    image(tac,width/2,590);
    pop();
    image(questPaper,1200,700);
    push();
    tint(0,255,255);
    image(tac,1200,590);
    pop();
    push();
    textSize(17);
    fill(0);
    textAlign(CENTER);
    if(dist(mouseX,mouseY,width-50,50) < 25)// the leave aquarium button
    {
      image(doorButton[1],width-50,55);
    }
    else
    {
      image(doorButton[0],width-50,50);
    }
    text("Leave",width - 50, 55);
    pop();
  }
}
