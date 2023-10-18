class SellReport
{
  float x, y;
  String sells;
  boolean active;
 
  public SellReport( String sells )
  {
      this.sells = sells;
      x = random(r.xPos-200,r.xPos+200);
      y = random(400,500);
  }
 
  public void moveAndDraw()
  {
    y-=3;
    textSize(20);
    fill(255,y-50);
    text(sells,x,y-r.yPos+height/2);
    if(y<-20)
      active=false;
  }
}
