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
    imageMode(CENTER);
    //default boat
    if (boats == 1)
    {
      image(boat, xPos,yPos-35-r.yPos+height/2);
    }
    // Josh's Boat
    else if(boats == 2)
    {
      image(jBoat, xPos-10,yPos-30-r.yPos+height/2);  
    }
    // Zay's Boat
    else if (boats == 3)
    {
      image(zBoat, xPos,yPos-r.yPos+height/2);  
    }
    //Erick's boat
    else if (boats == 4)
    {
      image(eBoat, xPos,yPos-10-r.yPos+height/2);     
    }
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
      xSpeed = 0;
    }
    if(xPos < -10)
    {
      xPos = -10;
      xSpeed = 0;
    }
  }
}
