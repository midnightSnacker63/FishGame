class Player
{
  float xPos;
  float yPos;
  
  float size;
  
  float xSpeed;
  float ySpeed;
  
  boolean movingLeft;
  boolean movingRight;
  
  public Player( float x, float y, float s )
  {
    xPos = x;
    yPos = y;
    size = s;
  }
  void drawPlayer()
  {
    fill(93,53,53);//draws boat
    circle(xPos,yPos,size);
    fill(0);
    square(xPos-50,yPos-100,size);
  }
  void movePlayer()
  {
    xPos += xSpeed;
    xSpeed *= 0.96;
    if(movingLeft)
    {
      xSpeed-=0.3;
    }
    if(movingRight)
    {
      xSpeed+=0.3;
    }
    
    if(xPos+size/2 > width)
    {
      xPos = width-size/2;
    }
    if(xPos-size/2 < 0)
    {
      xPos = size/2;
    }
  }
}
