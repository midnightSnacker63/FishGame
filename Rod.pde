class Rod
{
  float speedX;
  float speedY;
  float xPos;
  float yPos;
  float startY,startX;
  float size;
  
  boolean casted;
  boolean onFish;
  boolean caughtFish;
  boolean full;
  boolean reeling;
  
  int rodLevel = 1;
  int hookLevel = 1;
  int fishOnHook;
  
  
  
  public Rod(float x, float y, float s)
  {
    xPos = x;
    yPos = y;
    size = s;
  }
  
  void grabFish()
  {
  
  }
  void drawRod()
  {
    fill(200,50,50);
    ellipse(xPos,yPos,size,size);//hook
    stroke(255);
    strokeWeight(2);
    line(p.xPos+100,p.yPos-175,xPos,yPos-size/2);//line
    stroke(142,86,17);
    strokeWeight(5);
    line(p.xPos+25,p.yPos,p.xPos+100,p.yPos-175);//rod
    stroke(0);
    strokeWeight(1);
    
  }
  void drop()
  {
    if(casted)
    {
      if(yPos <= 50 )
      {
        speedY += .5;
      }
      else if(yPos < height-50)
      {
        speedY +=0.2;
      }
      if(yPos > height - 100)
      {
        speedY -= 0.2;
      }
      if(yPos > height - 50)//stops dropping after a certain point
      {
        speedY = 0;
      }
      
      //if(xPos >= width/2)
      //{
      //  speedX -= .1;
      //}
    }
    
    //casted = true;
  }
  void reel()
  {
    if(p.yPos-25 < yPos && reeling)
    {
      speedY -= .5;
    }
    //if(p.xPos-100 < xPos)
    //{
    //  xPos -= 3;
    //}
  }
  void move()
  {
    speedX *= 0.97;
    
    if(p.yPos-150 > yPos)//brings hook down if it goes too far up
    {
      speedY += 5;
    }
    if(yPos <= 400 )
    {
      speedY *= 0.96;
    }
    if(yPos >= 400 )
    {
      speedY *= 0.93;
    }
    if(xPos < p.xPos + 100)//move with boat underwater
    {
      speedX+= .15;
    }
    if(xPos > p.xPos + 100)
    {
      speedX -= .15;
    }
    if(xPos < p.xPos + 100 && yPos <= 400  )//move with boat above water
    {
      speedX+= .16;
    }
    if(xPos > p.xPos + 100 && yPos <= 400  )
    {
      speedX -= .16;
    }
    
    xPos+=speedX;
    yPos+=speedY;
  }
}
