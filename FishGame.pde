/**************************\
 first day out fishing trip
 
 by
 Joshua Poppy Zayvein Dyer
 Eric Ortiz
 
 \**************************/
import processing.sound.*;

SoundFile file;

int fishCount = 500;
int money = 0;
int maxStars = 100;
int boats = 1;

boolean started = false;
boolean shopping = false;
boolean inAquarium = false;
boolean onTitle = true;
boolean inGame = false;
boolean inInventory = false;
boolean debugMode = false;
boolean viewingControls = false;
boolean viewingQuests = false;

PImage moon;
PImage aquarium;
PImage lock;
PImage boat;
PImage eBoat;
PImage zBoat;
PImage jBoat;
PImage fishPic[] = new PImage[100];
PImage hook;
PImage rod;
PImage inventoryBack;
PImage shopCounterTop;
PImage shopArrows[] = new PImage[2];
PImage shopBackground;
PImage doorButton[] = new PImage[2];
PImage sack;
PImage cashIcon;
PImage storeIcon;
PImage fishBowl;
PImage shopKeeper;
PImage controlIcon;
PImage saveIcon;
PImage questIcon;
PImage questPaper;
PImage questBackground;
PImage questSign;
PImage tac;
PImage baitSign;

int starX [] = new int [maxStars];
int starY [] = new int [maxStars];
int currentDot = 0;
int fishType = 0;
int sellTime;
int sellWait = 1;
int questCount = 6;

ArrayList<Fish> fishs = new ArrayList<Fish>();
ArrayList<SellReport> sellReports = new ArrayList<SellReport>();
ArrayList<Quests> quests = new ArrayList<Quests>();

//declares objects
Rod r;
UI u;
Player p;
Shop s;
Aquarium a;
SaveGame S;
Inventory i;
PowerUps P;
void setup()
{
  size(1600, 900);
  //fullScreen();
  //load classes
  r = new Rod(350, 350, 50);
  u = new UI();
  p = new Player(200, 375, 100);
  s = new Shop();
  a = new Aquarium();
  S = new SaveGame();
  i = new Inventory();
  P = new PowerUps();
  file = new SoundFile(this, "coins.wav");
  for (int i = 0; i < maxStars; i++ )
  {
    starX[currentDot] = int(random(width));
    starY[currentDot] = int(random(-250,350));
    currentDot++;
  }  
  for (int i = 0; i < fishCount; i++)//declares fish objects
  {
    fishs.add(new Fish(random(width), random(450, 6000), 50));
  }
  for(int i = 0; i < questCount; i++)
  {
    int x = 400*(i%3+1);
    int y = 400+(300*(i/3));

    quests.add(new Quests(x,y));
  }
  //initialize variable
  r.startY = r.yPos;
  r.startX = r.xPos;
  sellTime = millis();
  
  //load images
  aquarium = loadImage("coral-reef.png");
  aquarium.resize(2400, 900);
  
  inventoryBack = loadImage("bagBackground.png");
  inventoryBack.resize(width,height);
  
  lock = loadImage("lock.png");
  lock.resize(50, 50);
  moon = loadImage("moon.png");
  moon.resize(150, 150);
  boat = loadImage("boat2.png");
  boat.resize(240, 160);
  
  eBoat = loadImage("eboat.png");
  eBoat.resize(440, 360);
  
  zBoat = loadImage("zboat.png");
  zBoat.resize(240, 160);
  
  jBoat = loadImage("tugBoat.png");
  jBoat.resize(176,128);
  
  shopCounterTop = loadImage("shopCounter.png");
  shopCounterTop.resize(1600,900);
  
  shopBackground = loadImage("bigWoodWall.png");
  shopBackground.resize(width,0);
  
  questBackground = loadImage("questBoard.png");
  questBackground.resize(width,0);
  
  hook = loadImage("hook.png");
  hook.resize(60,0);
  rod = loadImage("rod.png");
  rod.resize(130,170);
  
  sack = loadImage("Sack.png");
  sack.resize(50,0);
  
  cashIcon = loadImage("coin.png");
  cashIcon.resize(30,0);
  
  storeIcon = loadImage("cashIcon.png");
  storeIcon.resize(50,0);
  
  fishBowl = loadImage("fishBowl.png");
  fishBowl.resize(50,0);
  
  controlIcon = loadImage("WASD.png");
  controlIcon.resize(50,0);
  
  saveIcon = loadImage("floppy.png");
  saveIcon.resize(50,0);
  
  questIcon = loadImage("questBoardIcon.png");
  questIcon.resize(50,0);
  
  shopArrows[0] = loadImage("arrowleft.png");
  shopArrows[0].resize(75,0);
  shopArrows[1] = loadImage("arrow.png");
  shopArrows[1].resize(75,0);
  
  doorButton[0] = loadImage("doorClosed.png");
  doorButton[0].resize(50,0);
  doorButton[1] = loadImage("doorOpen.png");
  doorButton[1].resize(50,0);
  
  questSign = loadImage("questSign.png");
  questSign.resize(800,0);
  
  baitSign = loadImage("baitSign2.png");
  baitSign.resize(500,0);
  
  shopKeeper = loadImage("oldMan.png");
  shopKeeper.resize(650,0);
  
  questPaper = loadImage("questPaper.png");
  questPaper.resize(200,0);
  
  tac = loadImage("thumbTac.png");
  tac.resize(20,0);
  
  fishPic[0] = loadImage("fish.png");
  fishPic[1] = loadImage("yellowFish.png");
  fishPic[2] = loadImage("blueFish.png");
  fishPic[3] = loadImage("yellowStripeFish.png");
  fishPic[4] = loadImage("blobFish.png");
  fishPic[5] = loadImage("greenFish.png");
  fishPic[6] = loadImage("fishRight.png");
  fishPic[7] = loadImage("yellowFishRight.png");
  fishPic[8] = loadImage("blueFishLeft.png");
  fishPic[9] = loadImage("yellowStripeFishRight.png");
  fishPic[10] = loadImage("blobFishRight.png");
  fishPic[11] = loadImage("greenFish.png");
  fishPic[12] = loadImage("oldAnchor.png");
  fishPic[13] = loadImage("piranhaLeft.png");
  fishPic[14] = loadImage("piranhaRight.png");
  fishPic[0].resize(75,0);
  fishPic[1].resize(60,0);
  fishPic[2].resize(65,0);
  fishPic[3].resize(65,0);
  fishPic[4].resize(75,0);
  fishPic[5].resize(650,0);
  fishPic[6].resize(75,0);
  fishPic[7].resize(60,0);
  fishPic[8].resize(65,0);
  fishPic[9].resize(65,0);
  fishPic[10].resize(75,0);
  fishPic[11].resize(65,0);
  fishPic[12].resize(65,0);
  fishPic[13].resize(40,0);
  fishPic[14].resize(40,0);
}
void draw()
{
  background(0);
  for( SellReport s: sellReports)
  {
    s.moveAndDraw();
  }
  if (onTitle)// what to do if game not started
  {
    u.drawTitle();//draws title screen
  }
  if (started && inGame)// what to do when game starts
  {
    u.drawStars();
    p.drawPlayer();
    p.movePlayer();
    u.drawGame();
    
    for (Fish f : fishs)//draws fish
    {
      //fill(255);
      f.drawFish();
      f.moveFish();
    }
    for (int i = 0; i < fishs.size(); i++)
    {
      Fish f = fishs.get(i);
      if (f.sellFish())//sells fish
      {
        if(millis() - sellTime >= sellWait)
        {
          fishs.remove(i);//removes fish above water
          money += f.fishValue;
          r.fishOnHook -= 1;
          r.selling = true;
          sellReports.add( new SellReport("+"+f.fishValue) );//little ghost number
          sellTime = millis();//also update the stored time
          fishs.add(new Fish(random(width), random(450,6000), 50));//puts new fish in
          for(Quests q: quests)
          {
            if(q.fishType == f.fishType-1 && q.fishCaught < q.fishAmount)
            {
              q.fishCaught += 1;
            }
          }
          if(!a.unlocked[f.fishType-1])
          {
            a.somethingNew = true;
          }
          a.unlocked[f.fishType-1] = true;
          println(f.fishType);
        }
      }
      if(f.resetFish())//if fish type in NONE reset to something else
      {
        fishs.remove(i);
        fishs.add(new Fish(random(width), random(450,6000), 50));//puts new fish in
      }
    }
     for (int i = 0; i < sellReports.size(); i++)
    {
      SellReport S = sellReports.get(i);
      if(!S.active())
      {
        sellReports.remove(i);
      }
    }
    u.drawInfo();
    r.drawRod();// draws fishing rod
    r.move();//moves fishing rod
    r.reel();// reel fishing rod
    r.drop();
    r.grabFish();// grabbing fish
    a.unlockFish();
    P.rangePower();
    P.fishFrenzy();
  }
  if (shopping && !inGame)//when in shop
  {
    
    u.drawShop();
    s.oldManYapping();
    
  }
  if (inAquarium && !inGame)//when in aquarium
  {
    u.drawAqua();
  }
  if( inInventory && !inGame)//when in inventory
  {
    u.drawInventory();
  }
  if(debugMode)//debug info
  {
    u.debugInfo();
  }
  if( viewingControls )//if viewing controls 
  {
    u.controlScreen();
    if(debugMode)
    {
      u.cheatControls();
    }
  }
  if( viewingQuests )//when viewing quests 
  {
    u.drawQuests();
    for(Quests q : quests)
    {
      q.drawQuest();
      q.createNewQuest();
      
    }
  }
  //r.drop();
  //debug stuff
  //fill(255);
  //circle(210,390,110);
  //println(mouseX + ", " + mouseY);

}
void keyPressed()
{
  if (key == ENTER && !started)//starts the game
  {
    started = true;
    onTitle = false;
    inGame = true;
  }
  if (key == 'w' || key == 'W')//reel line
  {
    r.casted = false;
    r.reeling = true;
  }
  if (key == 'a'||key == 'A')//go left
  {
    p.movingLeft = true;
  }
  if (key == 'd' || key == 'D')//go right
  {
    p.movingRight = true;
  }
  if(key == 's' || key == 'S')
  {
    r.dropping = true;
  }

  //debug controls
  if (key == 'f')//add more fish
  {
    fishs.add(new Fish(random(width), random(450, 6000), 50));
  }
  if (key == 'm' )//add money
  {
    money += 100000;
  }
  if (key == '1' )//save game
  {
    S.saveGame();
    println("saved");
  }
  if (key == '2' )//load game
  {
    S.loadGame();
    println("loaded");
  }
  if(key == '3')//debug power activator
  {
    P.usingPower[4] = true;
  }
  if(key == '4')//debug power activator
  {
    P.usingPower[3] = true;
  }
  if(key == 'p')//debug mode
  {
    debugMode = true;
  }
}
void keyReleased()
{
  if (key == 'a'||key == 'A')//stop going left
  {
    p.movingLeft = false;
  }
  if (key == 'd' || key == 'D')//stop going right
  {
    p.movingRight = false;
  }
  if (key == 'w' || key == 'W')//stop reeling
  {
    r.reeling = false;
  }
  if(key == 's' || key == 'S')
  {
    r.dropping = false;
  }
}
void mousePressed()
{
  if ( dist(mouseX, mouseY, width-50, 150) < 25 && started && !shopping && !inAquarium && !inInventory && !viewingControls)//open shop
  {
    shopping = true;
    inGame = false;
    s.phrase = int(random(0,s.oldManPhrases.length));
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && shopping)//close shop
  {
    shopping = false;
    inGame = true;
  }
  if ( dist(mouseX, mouseY, width-50, 250) < 25 && started && !inAquarium && !shopping && !inInventory && !viewingControls && !viewingQuests)//open aquarium
  {
    inGame = false;
    inAquarium = true;
    a.somethingNew = false;
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && inAquarium)//close aquarium
  {
    inGame = true;
    inAquarium = false;
  }
  if ( dist(mouseX, mouseY, width-50, 350) < 25 && started && !inAquarium && !shopping && !inInventory && !viewingControls && !viewingQuests)//open inventory
  {
    inGame = false;
    inInventory = true;
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && inInventory)//close inventory
  {
    inGame = true;
    inInventory = false;
  }
  if ( dist(mouseX, mouseY, width-50, 450) < 25 && started && !inAquarium && !shopping && !inInventory && !viewingControls && !viewingQuests)//open control screen
  {
    inGame = false;
    viewingControls = true;
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && viewingControls)//close control screen
  {
    inGame = true;
    viewingControls = false;
  }
  if ( dist(mouseX, mouseY, width-50, 550) < 25 && started && !inAquarium && !shopping && !inInventory && !viewingControls && !viewingQuests)//open control screen
  {
    inGame = false;
    viewingQuests = true;
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && viewingQuests)//close control screen
  {
    inGame = true;
    viewingQuests = false;
  }
  if ( shopping )
  {
    s.buyRod();
    s.buyHook();
    s.buyBoat();
    s.swapPage();
  }
  if(inInventory)
  {
    i.selectBoat();
  }
  if( dist(mouseX,mouseY,width-50,height-50) < 25 && inGame)
  {
    S.saveGame();
  }
  println(mouseX+", "+mouseY);
  for(Quests q: quests)
  {
    q.finishQuest();
  }
}
