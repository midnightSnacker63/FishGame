/**************************\
 first day out fishing trip
 
 by
 Joshua Poppy Zayvein Dyer
 Eric Ortiz
 
 \**************************/

int fishCount = 500;
int money = 0;
int maxStars = 100;

boolean started = false;
boolean shopping = false;
boolean inAquarium = false;
boolean onTitle = true;
boolean inGame = false;

PImage moon;
PImage aquarium;
PImage lock;
PImage boat;
PImage fishPic[] = new PImage[fishCount];

int starX [] = new int [maxStars];
int starY [] = new int [maxStars];
int currentDot = 0;
int fishType = 0;

ArrayList<Fish> fishs = new ArrayList<Fish>();
ArrayList<SellReport> sellReports = new ArrayList<SellReport>();

//declares objects
//Fish[] fish = new Fish[fishCount];
Rod r;
UI u;
Player p;
Shop s;
Aquarium a;
void setup()
{
  size(1600, 900);
  //fullScreen();
  for (int i = 0; i < maxStars; i++ )
  {
    starX[currentDot] = int(random(width));
    starY[currentDot] = int(random(-250,350));
    currentDot++;
  }

  //fish = new Fish[fishCount];
  r = new Rod(350, 350, 50);
  for (int i = 0; i < fishCount; i++)//declares fish objects
  {
    fishs.add(new Fish(random(width), random(450, 6000), random(45, 65)));
  }
  r.startY = r.yPos;
  r.startX = r.xPos;
  u = new UI();
  p = new Player(200, 375, 100);
  s = new Shop();
  a = new Aquarium();
  aquarium = loadImage("coral-reef.png");
  aquarium.resize(2400, 900);
  lock = loadImage("lock.png");
  lock.resize(50, 50);
  moon = loadImage("moon.png");
  moon.resize(150, 150);
  boat = loadImage("boat2.png");
  boat.resize(240, 160);
}
void draw()
{
  background(0);
  for( SellReport s: sellReports)
    s.moveAndDraw();
  if (onTitle)// what to do if game not started
  {
    u.drawTitle();//draws title screen
  }
  if (started && inGame)// what to do when game starts
  {
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
        fishs.remove(i);//removes fish above water
        sellReports.add( new SellReport("+"+f.fishValue) );
        fishs.add(new Fish(random(width), random(450,6000), random(45, 65)));//puts new fish in
        a.unlocked[f.fishType] = true;
        println(a.unlocked[0]);
        println(f.fishType);
      }
    }
    r.drawRod();// draws fishing rod
    r.move();//moves fishing rod
    r.reel();// reel fishing rod
    r.drop();
    r.grabFish();// grabbing fish
    a.unlockFish();
    
  }
  if (shopping && !inGame)//when in shop
  {
    u.drawShop();
  }
  if (inAquarium && !inGame)//when in aquarium
  {
    u.drawAqua();
 
  }
  //r.drop();
  //debug stuff
  //fill(255);
  //circle(210,390,110);
  //println(mouseX + ", " + mouseY);

}
void keyPressed()
{
  if (key == ENTER)//starts the game
  {
    started = true;
    onTitle = false;
    inGame = true;
  }
  if (key == ' ' )//cast line
  {
    r.casted = true;
  }
  if (key == 'w' )//reel line
  {
    r.casted = false;
    r.reeling = true;
  }
  if (key == 'a')//go left
  {
    p.movingLeft = true;
  }
  if (key == 'd')//go right
  {
    p.movingRight = true;
  }
  if(key == 's')
  {
    r.dropping = true;
  }

  //debug controls
  if (key == 'f')//add more fish
  {
    fishs.add(new Fish(random(width), random(450, 6000), random(45, 65)));
  }
  if (key == 'm' )//add money
  {
    money += 100;
  }
}
void keyReleased()
{
  if (key == 'a')//stop going left
  {
    p.movingLeft = false;
  }
  if (key == 'd')//stop going right
  {
    p.movingRight = false;
  }
  if (key == 'w' )//stop reeling
  {
    r.reeling = false;
  }
  if(key == 's')
  {
    r.dropping = false;
  }
}
void mousePressed()
{
  if ( dist(mouseX, mouseY, width-50, 150) < 25 && started && !shopping && !inAquarium)//open shop
  {
    shopping = true;
    inGame = false;
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && shopping)//close shop
  {
    shopping = false;
    inGame = true;
  }
  if ( dist(mouseX, mouseY, width-50, 250) < 25 && started && !inAquarium && !shopping)//open aquarium
  {
    inGame = false;
    inAquarium = true;
  }
  if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && inAquarium)//close aquarium
  {
    inGame = true;
    inAquarium = false;
  }
  if ( shopping )
  {
    s.buyRod();
    s.buyHook();
  }
}
