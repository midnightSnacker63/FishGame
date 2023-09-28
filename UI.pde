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
    for(Fish f: fishs)
    {
      fill(255);
      f.drawFish();
      f.moveFish();
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
    
    
    textSize(30);
    text("$"+money,30,50);//your money
    textAlign(CENTER);
    fill(255);
    circle(width - 50,150,50);// the shop button
    circle(width - 50,250,50);// the aquarium button
    fill(0);
    textSize(17);
    text("Shop",width - 50, 155);  
    text("Aqua",width - 50, 255); 
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
    
    textSize(30);
    text("$"+money,30,50);//your cash
    textAlign(CENTER);
    fill(0);
    textSize(17);
    text("Leave",width - 50, 55);
    
    
    textAlign(CORNER);
  }
  void drawAqua()
  {
    rectMode(CORNER);
 
    //Coral Images
    image(aquarium, 450, 450);
   
    //Sand Color
    fill(#C2B280);
    rect(1,730,900,100);
   
    //Aquarium title screen
    fill(255);
    textSize(70);
    textAlign(CENTER);
    text("AQUARIUM", 450,800);
   
    fill(0);
    rect(285,810,320,10);
   
    //Locked Fish
    rectMode(CENTER);
    fill(#006994);
   
    imageMode(CENTER);
    //1st Row
    rect(225,180,80,80,30);
    image(lock,225,180);
    rect(450,180,80,80,30);
    image(lock,450,180);
    rect(675,180,80,80,30);
    image(lock,675,180);
   
    //2nd Row  
    rect(225,350,80,80,30);
    image(lock,225,350);
    rect(450,350,80,80,30);
    image(lock,450,350);
    rect(675,350,80,80,30);
    image(lock,675,350);
   
    //3rd Row
    rect(225,550,80,80,30);
    image(lock,225,550);
    rect(450,550,80,80,30);
    image(lock,450,550);
    rect(675,550,80,80,30);
    image(lock,675,550);
   
    //Return to Game Button
    fill(#C2B280);
    //rect(450,870,200,40);
    circle(width - 50,50,50);
    fill(255);
    //textSize(30);
    textSize(17);
    //text("Return to Game",450,880);
    text("Leave",width - 50, 55);
    rectMode(CORNER);
  }
}
