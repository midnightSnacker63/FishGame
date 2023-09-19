/**************************\
 first day out fishing trip   
              
             by
 Joshua Poppy Zayvein Dyre
         Eric Ortiz 

\**************************/

int fishCount = 12;
int startFishCount = 2;

boolean started = false;
boolean shopping = false;
boolean inAquarium = false;
//declares objects
Fish[] fish = new Fish[fishCount];
Rod r;
UI u;
Player p;
void setup()
{
  size(900,900);
  fish = new Fish[fishCount];
  r = new Rod(300,350,50);
  for(int i = 0; i < fishCount; i++)//declares fish objects 
  {
    fish[i]= new Fish(random(width),random(450,height-30),random(45,65));
  }
  r.startY = r.yPos;
  r.startX = r.xPos;
  u = new UI();
  p = new Player(200,375,100);
}
void draw()
{
  background(0);
   
  if(!started)// what to do if game not started
  {
    u.drawTitle();//draws title screen
  }
  if(started == true)// what to do when game starts 
  {
    p.drawPlayer();
    p.movePlayer();
    u.drawGame();
    for(int i = 0; i < fishCount; i++)// draws fish
    {
      fill(255);
      fish[i].drawFish();
      fish[i].moveFish();
    }
    r.drawRod();// draws fishing rod
    r.move();
  }
  if(shopping)//when in shop
  {
    u.drawShop();
  }
  if(inAquarium)//when in aquarium
  {
    u.drawAqua();
  }
  r.drop();
}
void keyPressed()
{
 if(key == ENTER)//starts the game
  {
     started = true;
  }
  if(key == ' ' )//&& !r.casted)
  {
    r.casted = true;
  }
  if(key == 'w' )
  {
    r.reel();
    r.casted = false;
  }
  if(key == 'a')
  {
    p.movingLeft = true;
  }
  if(key == 'd')
  {
    p.movingRight = true;
  }
}
void keyReleased()
{
  if(key == 'a')
  {
    p.movingLeft = false;
  }
  if(key == 'd')
  {
    p.movingRight = false;
  }
}
void mousePressed()
{
  
}
