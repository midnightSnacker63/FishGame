class UI
{
  public UI()
  {
  
  }
  void drawTitle()
  {
    fill(93,53,53);//draws boat
    ellipse(200,375,100,100);
    fill(0);
    rect(150,275,100,100);
    
    fill(0,0,255);//draws water
    
    rect(0,400,900,800);
    fill(100);//draws fish
    for(int i = 0; i < startFishCount; i++)
    {
      fish[i].drawFish();
      fish[i].moveFish();
    }
      
    fill(233,233,197);//draws moon
    ellipse(875,10,100,100);
    
    textSize(50);
    text("press 'ENTER' to start",200,800);
    GameName();
  }
  void drawGame()
  {
    fill(0,0,255);//draws water
    rect(0,400,900,800);
    fill(233,233,197);//draws moon
    ellipse(875,10,100,100);
  }
  void drawShop()
  {
  
  }
  void drawAqua()
  {
  
  }
}
