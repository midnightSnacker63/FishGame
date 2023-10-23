class Shop
{
  boolean rodBought[] = {false,false,false,false,false};
  boolean hookBought[] = {false,false,false,false,false};
  
  int hookPrice[] = {10,50,75,100,150};
  int rodPrice[] = {100,500,750,1000,1500};
  
  public Shop()
  {
  
  }
  void buyRod()
  {
    if(dist(mouseX, mouseY, 210, 390) < 50 && money >= rodPrice[0] && !rodBought[0])
    {
      rodBought[0] = true;
      money -= rodPrice[0];
      r.rodLevel += 1;//adds level
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 490) < 50 && money >= rodPrice[1] && !rodBought[1] && rodBought[0])
    {
      rodBought[1] = true;
      money -= rodPrice[1];
      r.rodLevel += 1;//adds level
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 590) < 50 && money >= rodPrice[2] && !rodBought[2] && rodBought[1])
    {
      rodBought[2] = true;
      money -= rodPrice[2];
      r.rodLevel += 1;//adds level
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 690) < 50 && money >= rodPrice[3] && !rodBought[3] && rodBought[2])
    {
      rodBought[3] = true;
      money -= rodPrice[3];
      r.rodLevel += 1;//adds level
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 210, 790) < 50 && money >= rodPrice[4] && !rodBought[4] && rodBought[3])
    {
      rodBought[4] = true;
      money -= rodPrice[4];
      r.rodLevel += 1;//adds level
    }
  }
  void buyHook()
  {
    if(dist(mouseX, mouseY, 625, 390) < 50 && money >= hookPrice[0] && !hookBought[0])
    {
      hookBought[0] = true;
      money -= hookPrice[0];
      r.hookLevel += 1;//adds level
    }
    //                                                        if not bought     if bought previous
    if(dist(mouseX, mouseY, 625, 490) < 50 && money >= hookPrice[1] && !hookBought[1] && hookBought[0])
    {
      hookBought[1] = true;
      money -= hookPrice[1];
      r.hookLevel += 1;//adds level
    }
    //                                                        if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 590) < 50 && money >= hookPrice[2] && !hookBought[2] && hookBought[1])
    {
      hookBought[2] = true;
      money -= hookPrice[2];
      r.hookLevel += 1;//adds level
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 690) < 50 && money >= hookPrice[3] && !hookBought[3] && hookBought[2])
    {
      hookBought[3] = true;
      money -= hookPrice[3];
      r.hookLevel += 1;//adds level
    }
    //                                                         if not bought    if bought previous
    if(dist(mouseX, mouseY, 625, 790) < 50 && money >= hookPrice[4] && !hookBought[4] && hookBought[3])
    {
      hookBought[4] = true;
      money -= hookPrice[4];
      r.hookLevel += 1;//adds level
    }
  }
}
