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
      r.rodLevel += 1;
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 490) < 50 && money >= 500 && !rodBought[1] && rodBought[0])
    {
      rodBought[1] = true;
      money -= 500;
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 590) < 50 && money >= 750 && !rodBought[2] && rodBought[1])
    {
      rodBought[2] = true;
      money -= 750;
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 690) < 50 && money >= 1000 && !rodBought[3] && rodBought[2])
    {
      rodBought[3] = true;
      money -= 1000;
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 790) < 50 && money >= 1500 && !rodBought[4] && rodBought[3])
    {
      rodBought[4] = true;
      money -= 1500;
    }
  }
  void buyHook()
  {
    if(dist(mouseX, mouseY, 625, 390) < 50 && money >= 10 && !hookBought[0])
    {
      hookBought[0] = true;
      money -= 10;
      r.hookLevel += 1;
    }
    //                                                        if not bought     if bought previous
    if(dist(mouseX, mouseY, 625, 490) < 50 && money >= 50 && !hookBought[1] && hookBought[0])
    {
      hookBought[1] = true;
      money -= 50;
      r.hookLevel += 1;
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 590) < 50 && money >= 75 && !hookBought[2] && hookBought[1])
    {
      hookBought[2] = true;
      money -= 75;
      r.hookLevel += 1;
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 690) < 50 && money >= 100 && !hookBought[3] && hookBought[2])
    {
      hookBought[3] = true;
      money -= 100;
      r.hookLevel += 1;
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 790) < 50 && money >= 150 && !hookBought[4] && hookBought[3])
    {
      hookBought[4] = true;
      money -= 150;
      r.hookLevel += 1;
    }
  }
}
