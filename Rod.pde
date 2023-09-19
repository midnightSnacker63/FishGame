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
    ellipse(xPos,yPos,size,size);
    stroke(255);
    strokeWeight(5);
    line(p.xPos+100,p.yPos-175,xPos,yPos-size/2);//line
    stroke(142,86,17);
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
    if(p.yPos-25 < yPos)
    {
      yPos -= 5;
    }
    //if(p.xPos-100 < xPos)
    //{
    //  xPos -= 3;
    //}
  }
  void move()
  {
    speedX *= 0.97;
    
    if(yPos <= 400 )
    {
      speedY *= 0.97;
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
    if(xPos < p.xPos + 100 && yPos <= 400)//move with boat above water
    {
      speedX+= .16;
    }
    if(xPos > p.xPos + 100 && yPos <= 400)
    {
      speedX -= .16;
    }
    xPos+=speedX;
    yPos+=speedY;
  }
}
