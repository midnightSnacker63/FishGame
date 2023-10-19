class SellReport
{
  float x, y;
  float ySpd = 3;
  
  String sells;
  
  boolean active;
  
  
 
  public SellReport( String sells )
  {
      this.sells = sells;
      x = random(r.xPos-250,r.xPos+250);
      y = random(400,500);
      
  }
 
  public void moveAndDraw()
  {
    y-=ySpd;
    textSize(20);
    fill(255,255);
    text(sells,x,y-r.yPos+height/2);
    
  }
  boolean active()
  {
    if(y<-200)
      return false;
    else
      return true;
  }
}
