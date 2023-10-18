class Rod
{
  float speedX;
  float speedY;
  float maxSpdY = 20;
  float maxSpdX;
  float xPos;
  float yPos;
  float startY,startX;
  float size;
  float maxDepth = 1000;
  
  boolean casted;
  boolean caughtFish;
  boolean reeling;
  boolean underwater;
  boolean dropping;
  
  int rodLevel = 1;
  int hookLevel = 1;
  int fishOnHook = 0;
  int maxFish = 1;
  
  color rodColor = color(150);
  color hookColor = color(100);
  
  public Rod(float x, float y, float s)
  {
    xPos = x;
    yPos = y;
    size = s;
    
  }
  void grabFish()
  {
    for(Fish f: fishs)
    {
      if( f.catchable && !f.caught && fishOnHook < maxFish && dist(xPos-size/2,yPos-size/2,f.xPos,f.yPos) < 50)
      {
        f.caught = true;
        fishOnHook++;
        println(fishOnHook);
        
      }
    }
  }
  void drawRod()
  {
    fill(hookColor);
    ellipse(xPos,height/2,size,size);//hook
    
    stroke(255);
    strokeWeight(2);
    line(p.xPos+150,p.yPos-175-r.yPos+height/2,xPos,height/2-size/2);//line
    stroke(rodColor);
    strokeWeight(5);
    line(p.xPos+25,p.yPos-15-r.yPos+height/2,p.xPos+150,p.yPos-175-r.yPos+height/2);//rod
    stroke(0);
    strokeWeight(1);
    maxFish = hookLevel * hookLevel;
    maxDepth = rodLevel * 1000;
  }
  void drop()
  {
    if(dropping && yPos < maxDepth - 100)
    {
      speedY += .5;
    }
  }
  void reel()
  {
    if(p.yPos-25 < yPos && reeling)
    {
      speedY -= .5;
    }
  }
  void move()
  {
    speedX *= 0.97;
    speedY *= 0.97;
    xPos+=speedX;
    yPos+=speedY;
    if(speedY >= maxSpdY  )
    {
      speedY = maxSpdY;
    }
    if(speedY <= -maxSpdY)
    {
      speedY = -maxSpdY;
    }
    
    if(p.yPos-150 > yPos)//brings hook down if it goes too far up
    {
      speedY += 5;
    }
    if(yPos <= 400 )//if above water say its above wtaer
    {
      underwater = false;
      speedY *= 0.95;
    }
    if(yPos >= 400 )//if underwater say its underwater
    {
      underwater = true;
    }
    if(yPos >= 400 && speedY >= 10)
    {
      speedY *= 0.97;
    }
    if(yPos > maxDepth+50)
    {
      speedY *= 0.98;
    }
    if(xPos < p.xPos + 150 )//move with boat underwater
    {
      speedX+= .15;
    }
    if(xPos > p.xPos + 150 )
    {
      speedX -= .15;
    }
    if(xPos < p.xPos + 150 && !underwater   )//move with boat above water
    {
      speedX+= .16;
    }
    if(xPos > p.xPos + 150 && !underwater && dist(xPos,yPos,p.xPos + 100,p.yPos) > 150  )
    {
      speedX -= .16;
    }
    if(yPos > maxDepth-100)
    {
      speedY -= 0.2;
    }
    if(casted)
    {
      if(yPos <= 50 )
      {
        speedY += .5;
      }
      else if(yPos < maxDepth -50)
      {
        speedY +=0.2;
      }
      if(yPos > maxDepth - 100)
      {
        speedY *= 0.95;
      }
    }
    if(fishOnHook == maxFish)
    {
      speedY-=0.6;
    }
  }
}
