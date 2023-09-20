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
    textAlign(CENTER);
    textSize(30);
    text("$"+money,30,50);//your money
    fill(255);
    circle(width - 50,150,50);// the shop button
    fill(0);
    textSize(17);
    text("Shop",width - 50, 155);  
    textAlign(CORNER);
  }
  void drawShop()
  {
    //banner
    textAlign(CORNER);
    background(0,0,255);
    fill(95,60,60);
    rect(0,10,900,200);
    textSize(200);
    fill(0);
    text("SHOP",200,175);
   
    textSize(100);  
    text("RODS",100,300);
    text("HOOKS",500,300);
   
    //RODS
    textSize(50);
    fill(0);
    rect(160,340,100,100,50);
    fill(255);
    text("100",175,400);
   
    fill(0);
    rect(160,440,100,100,50);
    fill(255);
    text("500",175,500);
   
   
    fill(0);
    rect(160,540,100,100,50);
    fill(255);
    text("750",175,600);
   
   
    fill(0);
    rect(160,640,100,100,50);
    fill(255);
    text("1000",175,700);  
   
   
    fill(0);
    rect(160,740,100,100,50);
    fill(255);
    text("1500",175,800);
   
    //HOOKS
   
    fill(0);
    rect(575,340,100,100,50);
    fill(255);
    text("10",600,400);
   
    fill(0);
    rect(575,440,100,100,50);
    fill(255);
    text("50",600,500);
   
    fill(0);
    rect(575,540,100,100,50);
    fill(255);
    text("75",600,600);
   
    fill(0);
    rect(575,640,100,100,50);
    fill(255);
    text("100",600,700);
   
    fill(0);
    rect(575,740,100,100,50);
    fill(255);
    text("150",600,800);
    
    fill(255);
    circle(width - 50,50,50);// the leave shop button
    textAlign(CENTER);
    fill(0);
    textSize(17);
    text("Leave",width - 50, 55);
    
    textSize(30);
    text("$"+money,30,50);//your cash
    textAlign(CORNER);
  }
  void drawAqua()
  {
  
  }
}
