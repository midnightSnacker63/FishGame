class Shop
{
  boolean rodBought[] = {false, false, false, false, false};
  boolean hookBought[] = {false, false, false, false, false};
  boolean boatBought[] = {false, false, false};


  int boatPrice[] = {10000, 100000, 15000};
  int hookPrice[] = {50, 150, 250, 500, 1000};
  int rodPrice[] = {100, 500, 750, 1000, 1500};

  int shopPage = 1;
  int phrase;
  
  String oldManPhrases[] = {
  "Buy something will yah",
  "I once saw a bass bigger than my own arm", "I don't do five finger dicounts",
  "Hurry up will yah i'm tired",
  "I remember when zay's boat costed \na nickel" ,
  "Sorry link i don't give credit come back \nwhen you're a little richer",
  "The bigger the bait the bigger the fish",
  "You know what they say about \nbig fishing rods" ,
  "I wish I could leave but my legs don't work",
  "just so you know, I can see the bag of \nchips you're hiding under the counter" ,
  "immortality is a curse, a curse \nI must suffer" ,
  "the name's Earl, Earl Pumpernickle"
  };

  public Shop()
  {
  }
  void buyRod()
  {
    if (dist(mouseX, mouseY, 200, 750) < 50 && money >= rodPrice[0] && !rodBought[0] && shopPage == 1)
    {
      rodBought[0] = true;
      money -= rodPrice[0];
      r.rodLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                        if not bought    if bought previous
    if (dist(mouseX, mouseY, 325, 750) < 50 && money >= rodPrice[1] && !rodBought[1] && rodBought[0] && shopPage == 1)
    {
      rodBought[1] = true;
      money -= rodPrice[1];
      r.rodLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                        if not bought    if bought previous
    if (dist(mouseX, mouseY, 450, 750) < 50 && money >= rodPrice[2] && !rodBought[2] && rodBought[1] && shopPage == 1)
    {
      rodBought[2] = true;
      money -= rodPrice[2];
      r.rodLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                         if not bought    if bought previous
    if (dist(mouseX, mouseY, 575, 750) < 50 && money >= rodPrice[3] && !rodBought[3] && rodBought[2] && shopPage == 1)
    {
      rodBought[3] = true;
      money -= rodPrice[3];
      r.rodLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                         if not bought    if bought previous
    if (dist(mouseX, mouseY, 700, 750) < 50 && money >= rodPrice[4] && !rodBought[4] && rodBought[3] && shopPage == 1)
    {
      rodBought[4] = true;
      money -= rodPrice[4];
      r.rodLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
  }
  void buyHook()
  {
    if (dist(mouseX, mouseY, 900, 750) < 50 && money >= hookPrice[0] && !hookBought[0] && shopPage == 1)
    {
      hookBought[0] = true;
      money -= hookPrice[0];
      r.hookLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                                 if not bought     if bought previous
    if (dist(mouseX, mouseY, 1025, 750) < 50 && money >= hookPrice[1] && !hookBought[1] && hookBought[0] && shopPage == 1)
    {
      hookBought[1] = true;
      money -= hookPrice[1];
      r.hookLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                                 if not bought    if bought previous
    if (dist(mouseX, mouseY, 1150, 750) < 50 && money >= hookPrice[2] && !hookBought[2] && hookBought[1] && shopPage == 1)
    {
      hookBought[2] = true;
      money -= hookPrice[2];
      r.hookLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                                 if not bought    if bought previous
    if (dist(mouseX, mouseY, 1275, 750) < 50 && money >= hookPrice[3] && !hookBought[3] && hookBought[2] && shopPage == 1)
    {
      hookBought[3] = true;
      money -= hookPrice[3];
      r.hookLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
    //                                                                 if not bought    if bought previous
    if (dist(mouseX, mouseY, 1400, 750) < 50 && money >= hookPrice[4] && !hookBought[4] && hookBought[3] && shopPage == 1)
    {
      hookBought[4] = true;
      money -= hookPrice[4];
      r.hookLevel += 1;//adds level
      file.play();
      file.amp(0.75);
    }
  }

  void buyBoat()
  {
    //Josh's Boat
    if (dist(mouseX, mouseY, 450, 750) < 50 && money >= boatPrice[0] && !boatBought[0] && shopPage == 2)
    {
      boatBought[0] = true;
      money -= boatPrice[0];
      file.play();
      file.amp(0.75);
    }


    //Zay's Boat
    if (dist(mouseX, mouseY, 800, 750) < 50 && money >= boatPrice[1] && !boatBought[1] && shopPage == 2)
    {
      boatBought[1] = true;
      money -= boatPrice[1];
      file.play();
      file.amp(0.75);
    }

    //Erick's Boat
    if (dist(mouseX, mouseY, 1100, 750) < 50 && money >= boatPrice[2] && !boatBought[2] && shopPage == 2)
    {
      boatBought[2] = true;
      money -= boatPrice[2];
      file.play();
      file.amp(0.75);
    }
  }
  void swapPage()
  {
    if (dist(mouseX, mouseY, width-50, height-50) < 25 && shopPage != 2)//next page
    {
      shopPage+=1;
      println(shopPage);
    }
    if (dist(mouseX, mouseY, width-150, height-50) < 25 && shopPage != 1)//previous page
    {
      shopPage-=1;
      println(shopPage);
    }
  }
  void oldManYapping()
  {
    push();
    fill(255);
    ellipse(1300,200,400,200);
    fill(0);
    textAlign(CENTER);
    textSize(25);
    text(oldManPhrases[phrase],1300,210);
    pop();
  }
}
