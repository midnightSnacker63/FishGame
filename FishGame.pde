//TestComment
//New Comment

int fishCount = 12;
int startFishCount = 2;
boolean started = false;
Fish[] fish = new Fish[fishCount];
Rod r;
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
}
void draw()
{
  background(0);
   //draws title screen
  if(!started)// what to do if game not started
  {
    
    fill(93,53,53);//draws boat
    ellipse(200,375,100,100);
    fill(0);
    rect(150,275,100,100);
    
    fill(0,0,255);//draws water
    
    rect(0,400,900,800);
    fill(100);//draws fish
    for(int i = 0; i < startFishCount; i++)
    {
      fish[i].drawFish();
      fish[i].moveFish();
    }
      
    fill(233,233,197);//draws moon
    ellipse(875,10,100,100);
    
    textSize(50);
    text("press 'ENTER' to start",200,800);
    GameName();
  }
  if(started == true)// what to do when game starts 
  {
    
    
    fill(93,53,53);//draws boat
    ellipse(200,375,100,100);
    fill(0);
    rect(150,275,100,100);
    
    fill(0,0,255);//draws water
    rect(0,400,900,800);
    fill(233,233,197);//draws moon
    ellipse(875,10,100,100);
    
    
    
    for(int i = 0; i < fishCount; i++)// draws fish
    {
      fill(255);
      fish[i].drawFish();
      fish[i].moveFish();
    }
    r.drawRod();// draws fishing rod
    r.move();
  }
  
  //r.xPos = mouseX;
  //r.yPos = mouseY;
  r.drop();
}
void keyPressed()
{
 if(key == ENTER)//starts the game
  {
     started = true;
  }
  if(key == ' ' && !r.casted)
  {
    r.casted = true;
  }
  if(key == 'r' )
  {
    r.reel();
    r.casted = false;
  }
}
