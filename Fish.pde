class Fish
{
  //Data
  FishType type;
  
  float xPos;
  float yPos;
  
  float size;
  
  float xSpeed=random(-12,12);
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
    if(yPos > 5400 )
    {
      fishType = (int)random(4,10);
      if( fishType == 5)
      {
        fishType = (int)random(4,10);
      }
    }
    if(yPos > 5800)
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
      return FishType.FISH4;
    case 4:
      return FishType.BLOBFISH;
    case 5:
      return FishType.PIRANHA;
    
      
    default: return FishType.NONE; 
    }
  }
  void drawFish()
  {
    //fill(random(255),random(255),random(255));
    
    if(type == FishType.FISH)
    {
      fill(255);
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishValue = 10;
      fishType = 1;
      if( xSpeed < 0)
      {
        image(fishPic[fishType-1],xPos,yPos-r.yPos+height/2);
      }
      if( xSpeed > 0 )
      {
        image(fishPic[6],xPos,yPos-r.yPos+height/2);
      }
    }
    if(type == FishType.FISH2)
    {
      fill(100);
      fishValue = 20;
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 2;
      if( xSpeed < 0)
      {
        image(fishPic[fishType-1],xPos,yPos-r.yPos+height/2);
      }
      if( xSpeed > 0 )
      {
        image(fishPic[7],xPos,yPos-r.yPos+height/2);
      }
    }
    if(type == FishType.FISH3)
    {
      fill(100,150,250);
      fishValue = 50;
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 3;
      if( xSpeed > 0)
      {
        image(fishPic[fishType-1],xPos,yPos-r.yPos+height/2);
      }
      if( xSpeed < 0 )
      {
        image(fishPic[8],xPos,yPos-r.yPos+height/2);
      }
    }
    if(type == FishType.FISH4)
    {
      fill(255,192,203);
      fishValue = 100;
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 4;
      if( xSpeed < 0)
      {
        image(fishPic[fishType-1],xPos,yPos-r.yPos+height/2);
      }
      if( xSpeed > 0 )
      {
        image(fishPic[9],xPos,yPos-r.yPos+height/2);
      }
    }
    if(type == FishType.NONE)
    {
      catchable=false;
      fishValue = 00;
      //fill(255,00,00);
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 10;
    }
    if(type == FishType.BLOBFISH)
    {
      fill(255,00,203);
      fishValue = 1000;
      //circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 5;
      
      if( xSpeed < 0)
      {
        image(fishPic[fishType-1],xPos,yPos-r.yPos+height/2);
      }
      if( xSpeed > 0 )
      {
        image(fishPic[10],xPos,yPos-r.yPos+height/2);
      }
    }
    if(type == FishType.PIRANHA)
    {
      //catchable=false;
      fishValue = 1000000;
      fill(255,00,00);
      circle(xPos,yPos-r.yPos+height/2,size);
      fishType = 6;
    }
  }
  
  boolean sellFish()
  { 
    if(caught && !underwater)
    { 
      //println("selling");
      
      return true;
      
    } 
    return false;
  }
  
  boolean resetFish()
  {
    if(type == FishType.NONE)
    {
      return true;
    }
    return false;
  }
  void moveFish()
  {
    if(yPos < 400 )//what to do if above water
    {
      underwater = false;
    }
    if(yPos >= 400 )//what to do if above water
    {
      underwater = true;
    }
    if(yPos >= 6000)
    {
      ySpeed *= -1;
    }
    if(!caught && underwater)
    {
      xPos += xSpeed;
      yPos += ySpeed;
      ySpeed *= 0.97;
      if(xPos >= width)//turn around if they hit right side
      {
        xSpeed *= -1;
      }
      if(xPos <= 0)//turn around if they hit the left side
      {
        xSpeed *= -1;
      }
      if(xSpeed == 0)//resets speed if 0
      {
        xSpeed = random(-12,12);
      }
     
    }
    if(caught)//shouldnt have to explain this
    {
      xPos = r.xPos;//puts fish on rod position
      yPos = r.yPos+15;
      
    }
    
  }
  void snapRod()
  {
    r.rodSnapped = true;
    println("Snap!");
  }
}
public enum FishType
{
  FISH, FISH2, FISH3, BLOBFISH, NONE, FISH4, PIRANHA
}
