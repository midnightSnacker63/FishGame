class Fish
{
  //Data
  float xPos;
  float yPos;
  
  float size;
  
  float xSpeed=random(-7,7);
  float ySpeed;
  
  boolean underwater = true;
  boolean caught;
  
  
  public Fish( float x, float y, float s )
  {
    xPos = x;
    yPos = y;
    size = s;
  }
  void drawFish()
  {
    //fill(random(255),random(255),random(255));
    circle(xPos,yPos,size);
  }
  boolean sellFish()
  { 
    if(caught && !underwater)
    { 
      println("selling");
      money += 10;
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
