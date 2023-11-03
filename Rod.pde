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
  boolean full;
  boolean selling;
  
  int rodLevel = 1;
  int hookLevel = 1;
  int fishOnHook = 0;
  int maxFish = 1;
  int hookRange = 50;
  
  color rodColor = color(150);
  color hookColor = color(100);
  
  public Rod(float x, float y, float s)
  {
    xPos = x;
    yPos = y;
    size = s;
    
  }
  
  void drawRod()
  {
    push();
    tint(hookColor);
    image(hook,xPos,height/2+5);
    pop();
    stroke(255);
    strokeWeight(2);
    line(p.xPos+150,p.yPos-175-r.yPos+height/2,xPos,height/2-size/2);//line
    stroke(rodColor);
    strokeWeight(5);
    //line(p.xPos+25,p.yPos-15-r.yPos+height/2,p.xPos+150,p.yPos-175-r.yPos+height/2);//rod
    push();
    tint(rodColor);
    image(rod,p.xPos+90,p.yPos-95-r.yPos+height/2);
    pop();
    stroke(0);
    strokeWeight(1);
    if(fishOnHook >= maxFish)
    {
      full = true;
    }
    if(fishOnHook <= 0)
    {
      full = false;
      selling = false;
    }
    maxFish = hookLevel * hookLevel * hookLevel ;
    maxDepth = rodLevel * 1000;
    //changing hook color
    if(hookLevel == 2)
    {
      hookColor = color(230,50,50);
    }
    if(hookLevel == 3)
    {
      hookColor = color(50,50,230);
    }
    if(hookLevel == 4)
    {
      hookColor = color(50,230,50);
    }
    if(hookLevel == 5)
    {
      hookColor = color(190,50,230);
    }
    if(hookLevel == 6)
    {
      hookColor = color(250,250,50);
    }
    //changing rod color
    if(rodLevel == 2)
    {
      rodColor = color(230,50,50);
    }
    if(rodLevel == 3)
    {
      rodColor = color(50,50,230);
    }
    if(rodLevel == 4)
    {
      rodColor = color(50,230,50);
    }
    if(rodLevel == 5)
    {
      rodColor = color(190,50,230);
    }
    if(rodLevel == 6)
    {
      rodColor = color(250,250,50);
    }
  }
  void grabFish()
  {
    for(Fish f: fishs)
    {
      if( f.catchable && !f.caught && !full && underwater && !selling && dist(xPos-size/2,yPos-size/2,f.xPos,f.yPos) < hookRange)
      {
        f.caught = true;
        fishOnHook++;
        
        println("on "+fishOnHook);
        println("max "+maxFish);
        return;
      }
    }
  }
  void drop()
  {
    if(dropping && yPos < maxDepth - 20)
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
    if(yPos > maxDepth-10)//stops you from going to far down
    {
      speedY = -0.5;
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
      //speedY-=0.6;
    }
  }
}
