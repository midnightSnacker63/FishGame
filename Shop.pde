class Shop
{
  boolean rodBought[] = {false,false,false,false,false};
  boolean hookBought[] = {false,false,false,false,false};
  
  public Shop()
  {
  
  }
  void buyRod()
  {
    if(dist(mouseX, mouseY, 210, 390) < 50 && money >= 100 && !rodBought[0])
    {
      rodBought[0] = true;
      money -= 100;
      r.rodLevel += 1;//adds level
      r.rodColor = color(230,50,50);//changes color of rod
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 490) < 50 && money >= 500 && !rodBought[1] && rodBought[0])
    {
      rodBought[1] = true;
      money -= 500;
      r.rodLevel += 1;//adds level
      r.rodColor = color(50,50,230);//changes color of rod
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 590) < 50 && money >= 750 && !rodBought[2] && rodBought[1])
    {
      rodBought[2] = true;
      money -= 750;
      r.rodLevel += 1;//adds level
      r.rodColor = color(50,230,50);//changes color of rod
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 690) < 50 && money >= 1000 && !rodBought[3] && rodBought[2])
    {
      rodBought[3] = true;
      money -= 1000;
      r.rodLevel += 1;//adds level
      r.rodColor = color(190,50,230);//changes color of rod
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 790) < 50 && money >= 1500 && !rodBought[4] && rodBought[3])
    {
      rodBought[4] = true;
      money -= 1500;
      r.rodLevel += 1;//adds level
      r.rodColor = color(250,250,50);//changes color of rod
    }
  }
  void buyHook()
  {
    if(dist(mouseX, mouseY, 625, 390) < 50 && money >= 10 && !hookBought[0])
    {
      hookBought[0] = true;
      money -= 10;
      r.hookLevel += 1;//adds level
      r.hookColor = color(230,50,50);//changes color of hook
    }
    //                                                        if not bought     if bought previous
    if(dist(mouseX, mouseY, 625, 490) < 50 && money >= 50 && !hookBought[1] && hookBought[0])
    {
      hookBought[1] = true;
      money -= 50;
      r.hookLevel += 1;//adds level
      r.hookColor = color(50,50,230);//changes color of hook
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 590) < 50 && money >= 75 && !hookBought[2] && hookBought[1])
    {
      hookBought[2] = true;
      money -= 75;
      r.hookLevel += 1;//adds level
      r.hookColor = color(50,230,50);//changes color of hook
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 690) < 50 && money >= 100 && !hookBought[3] && hookBought[2])
    {
      hookBought[3] = true;
      money -= 100;
      r.hookLevel += 1;//adds level
      r.hookColor = color(190,50,230);//changes color of hook
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 790) < 50 && money >= 150 && !hookBought[4] && hookBought[3])
    {
      hookBought[4] = true;
      money -= 150;
      r.hookLevel += 1;//adds level
      r.hookColor = color(250,250,50);//changes color of hook
    }
  }
}
