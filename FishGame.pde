/**************************\
 first day out fishing trip   
              
             by
 Joshua Poppy Zayvein Dyer
         Eric Ortiz 

\**************************/

int fishCount = 12;
int startFishCount = 2;
int money = 0;

boolean started = false;
boolean shopping = false;
boolean inAquarium = false;
boolean onTitle = true;
boolean inGame = false;

PImage aquarium;
PImage lock;
PImage fishPic[] = new PImage[fishCount];

ArrayList<Fish> fishs = new ArrayList<Fish>();

//declares objects
//Fish[] fish = new Fish[fishCount];
Rod r;
UI u;
Player p;
void setup()
{
  size(900,900);
  //fish = new Fish[fishCount];
  r = new Rod(300,350,50);
  for(int i = 0; i < fishCount; i++)//declares fish objects 
  {
    fishs.add(new Fish(random(width),random(450,height-50),random(45,65)));
  }
  r.startY = r.yPos;
  r.startX = r.xPos;
  u = new UI();
  p = new Player(200,375,100);
  aquarium = loadImage("coral-reef.png");
  aquarium.resize(900,900);
  lock = loadImage("lock.png");
  lock.resize(50,50);
}
void draw()
{
  background(0);
  if(onTitle)// what to do if game not started
  {
    u.drawTitle();//draws title screen
  }
  if(started && inGame)// what to do when game starts 
  {
    p.drawPlayer();
    p.movePlayer();
    u.drawGame();
    for(Fish f: fishs)//draws fish
    {
      fill(255);
      f.drawFish();
      f.moveFish();
    }
    for(int i = 0; i < fishs.size(); i++)
    {
      Fish f = fishs.get(i);
      if(f.sellFish())
      {
         fishs.remove(i);
         fishs.add(new Fish(random(width),random(450,height-50),random(45,65)));
      }
      
    }
    r.drawRod();// draws fishing rod
    r.move();//moves fishing rod
    r.reel();// reel fishing rod
    r.grabFish();// grabbing fish
    
  }
  if(shopping && !inGame)//when in shop
  {
    u.drawShop();
  }
  if(inAquarium && !inGame)//when in aquarium
  {
    u.drawAqua();
  }
  r.drop();
  //circle(p.xPos+100,p.yPos,50);//placeholder graphic
}
void keyPressed()
{
 if(key == ENTER)//starts the game
  {
    started = true;
    onTitle = false;
    inGame = true;
  }
  if(key == ' ' )//cast line
  {
    r.casted = true;
  }
  if(key == 'w' )//reel line
  {
    r.casted = false;
    r.reeling = true;
  }
  if(key == 'a')//go left
  {
    p.movingLeft = true;
  }
  if(key == 'd')//go right
  {
    p.movingRight = true;
  }
  if(key == 'f')//add more fish
  {
    fishs.add(new Fish(random(width),random(450,height-30),random(45,65)));
  }
}
void keyReleased()
{
  if(key == 'a')//stop going left
  {
    p.movingLeft = false;
  }
  if(key == 'd')//stop going right
  {
    p.movingRight = false;
  }
  if(key == 'w' )//stop reeling
  {
    r.reeling = false;
  }
}
void mousePressed()
{
  if( dist(mouseX,mouseY,width-50,150) < 25 && started && !shopping)//open shop
  {
    shopping = true;
    inGame = false;
  }
  if( dist(mouseX,mouseY,width-50,50) < 25 && started && shopping)//close shop
  {
    shopping = false;
    inGame = true;
  }
  if( dist(mouseX,mouseY,width-50,250) < 25 && started && !inAquarium)//open aquarium
  {
    inGame = false;
    inAquarium = true;
  }
  if( dist(mouseX,mouseY,width-50,50) < 25 && started && inAquarium)//close aquarium
  {
    inGame = true;
    inAquarium = false;
  }

}
