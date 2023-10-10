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
  
  int fishType = 2;
  int fishValue;
  
  
  public Fish( float x, float y, float s, int f )
  {
    xPos = x;
    yPos = y;
    size = s;
    
    type = setType(f);
    
  }
  private FishType setType( int f )
  {
    println(f);
    switch(f)
    {
    case 0:
      return FishType.FISH;
    case 1:
      return FishType.FISH2;
    case 2:
      return FishType.FISH3;
    case 3:
      return FishType.BLOBFISH;
      
    default: return FishType.FISH; 
    }
  }
  void drawFish()
  {
    //fill(random(255),random(255),random(255));
    
    if(type == FishType.FISH)
    {
      fill(255);
      circle(xPos,yPos,size);
      fishValue = 10;
      fishType = 1;
      //println(type);
    }
    if(type == FishType.FISH2)
    {
      fill(100);
      fishValue = 20;
      circle(xPos,yPos,size);
      fishType = 2;
      //println(type);
    }
    if(type == FishType.FISH3)
    {
      fill(100,150,250);
      fishValue = 50;
      circle(xPos,yPos,size);
      fishType = 3;
      //println(type);
    }
    if(type == FishType.BLOBFISH)
    {
      fill(255,192,203);
      fishValue = 100;
      circle(xPos,yPos,size);
      fishType = 4;
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
  FISH, FISH2, FISH3, BLOBFISH
}
