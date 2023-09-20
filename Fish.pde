class Fish
{
  //Data
  float xPos;
  float yPos;
  
  float size;
  
  float xSpeed=random(-7,7);
  float ySpeed;
  
  
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
  void moveFish()
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
      xSpeed = random(-5,5);
    }
  }
}
