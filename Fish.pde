class Fish
{
  //Data
  FishType type;
  
  float xPos;
  float yPos;
  
  float size;
  
  float xSpeed=random(-7,7);
  float ySpeed;
  
  boolean underwater = true;
  boolean caught;
  boolean catchable = true;
  
  int fishType = 2;
  int fishValue;
  
  
  public Fish( float x, float y, float s )
  {
    xPos = x;
    yPos = y;
    size = s;
    
    type = setType(fishType);
    
  }
  private FishType setType( int fishType )
  {
    if(yPos < 1000)
    {
      fishType = 0;
    }
    if(yPos > 1000 && yPos<2000)
    {
      fishType = (int)random(0,2);
    }
    if(yPos > 2000 && yPos < 3000)
    {
      fishType = (int)random(1,3);
    }
    if(yPos > 3000 && yPos < 4000)
    {
      fishType = (int)random(2,4);
    }
    if(yPos > 4000)
    {
      fishType = 3;
    }
    if(yPos > 5500)
    {
      fishType = (int)random(4,10);
    }
    
    println(fishType);
    switch(fishType)
    {
    case 0:
      return FishType.FISH;
    case 1:
      return FishType.FISH2;
    case 2:
      return FishType.FISH3;
    case 3:
      return FishType.BLOBFISH;
    case 4:
      return FishType.FISH4;
      
    default: return FishType.NONE; 
    }
  }
  void drawFish()
  {
    //fill(random(255),random(255),random(255));
    
    if(type == FishType.FISH)
    {
      fill(255);
      circle(xPos,yPos-r.yPos+height/2,size);
      fishValue = 10;
      fishType = 1;
      //println(type);
    }
    if(type == FishType.FISH2)
    {
      fill(100);
      fishValue = 20;
      circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 2;
      //println(type);
    }
    if(type == FishType.FISH3)
    {
      fill(100,150,250);
      fishValue = 50;
      circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 3;
      //println(type);
    }
    if(type == FishType.BLOBFISH)
    {
      fill(255,192,203);
      fishValue = 100;
      circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 4;
    }
    if(type == FishType.NONE)
    {
      catchable=false;
      fishValue = 00;
      //fill(255,00,00);
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 6;
    }
    if(type == FishType.FISH4)
    {
      fill(255,00,203);
      fishValue = 1000;
      circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 5;
    }
  }
  
  boolean sellFish()
  { 
    if(caught && !underwater)
    { 
      //println("selling");
      money += fishValue;
      r.fishOnHook = 0;
      return true;
      
    } 
    return false;
  }
  void moveFish()
  {
    if(yPos <= 400 )
    {
      underwater = false;
    }
    if(!caught && underwater)
    {
      xPos += xSpeed;
      if(xPos >= width)
      {
        xSpeed *= -1;
      }
      if(xPos <= 0)
      {
        xSpeed *= -1;
      }
      if(xSpeed == 0)//resets speed if 0
      {
        xSpeed = random(-7,7);
      }
     
    }
    if(caught)
    {
      xPos = r.xPos;
      yPos = r.yPos;
    }
    
  }
}
public enum FishType
{
  FISH, FISH2, FISH3, BLOBFISH, NONE, FISH4
}
