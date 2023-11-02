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
    
    
    
  
    // Josh's Boat
    if (boats == 0)
    {
      defBoat = false;
      image(boat, xPos,yPos-35-r.yPos+height/2);  
    }
      
    // Zay's Boat
    if (boatBought[1] == true)
    {
      defBoat = false;
      image(zBoat, xPos,yPos-35-r.yPos+height/2);  
    }
      
    //Erick's boat
    if (boatBought[2] == true)
    {
      defBoat = false;
      image(eBoat, xPos,yPos-35-r.yPos+height/2);     
    }
    
    if (defBoat == true);
    {
      image(boat, xPos,yPos-35-r.yPos+height/2);
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
    }
    if(xPos-size/2 < 0)
    {
      xPos = size/2;
    }
  }
}
