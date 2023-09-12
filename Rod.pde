class Rod
{
  float speedX;
  float speedY;
  float xPos;
  float yPos;
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
    line(300,200,xPos,yPos-size/2);
    stroke(142,86,17);
    line(225,375,300,200);
    stroke(0);
    strokeWeight(1);
  }
  void drop()
  {
    if(casted)
    {
      if(yPos <= 150 )
      {
        speedY += .5;
      }
      else if(yPos <= height-150)
      {
        speedY +=0.2;
      }
      if(yPos > height - 150)
      {
        speedY -=0.15;
      }
      
      if(xPos <= width/2)
      {
        speedX += 1;
      }
      //if(xPos >= width/2)
      //{
      //  speedX -= .1;
      //}
    }
    //casted = true;
  }
  void cast()
  {
  
  }
  void reel()
  {
    
  }
  void move()
  {
    speedX *= 0.96;
    
    if(yPos <= 400 )
    {
      speedY *= 0.97;
    }
    if(yPos >= 400 )
    {
      speedY *= 0.93;
    }
    xPos+=speedX;
    yPos+=speedY;
  }
}
