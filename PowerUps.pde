class PowerUps
{
  int powerCount[] = {0, 0, 0, 0, 0};
  int extraFishCap = 10;
  int frenzyFish;
  int rangelevel = 0;
  int rangeTimer;
  int speedTimer;
  int frenzyTimer;
  int moneyTimer;
  int fishCapTimer;

  boolean usingPower[] = {false, false, false, false, false};

  float moneyBonus;
  float speedBonus;

  public PowerUps()
  {
    rangeTimer = millis();
    speedTimer = millis();
    frenzyTimer = millis();
    moneyTimer = millis();
    fishCapTimer = millis();
  }

  void moneyPower()
  {
    if(usingPower[0])
    {
      
    }
  }

  void fishCapPower()
  {
    if(usingPower[1])
    {
      
    }
  }

  void speedPower()
  {
    if(usingPower[2])
    {
      
    }
  }

  void fishFrenzy()
  {
    if(usingPower[3])
    {
      push();
      fill(255);
      circle(100,50,50);
      fill(0);
      textSize(12);
      text("frenzy on", 100, 53);
      
      pop();
      if (millis() - frenzyTimer > 5000)//once its over
      {
        
        usingPower[3] = false;
        frenzyTimer = millis();
      }
    }
  }

  void rangePower()
  {
    if (usingPower[4])
    {
      push();
      println("powering");
      
      println(rangeTimer);
      r.hookRange = 500;
      fill(255);
      circle(50,50,50);
      fill(0);
      textSize(12);
      text("range on", 50, 53);
      pop();
      if (millis() - rangeTimer > 5000)//once its over
      {
        usingPower[4] = false;
        r.hookRange = 50;
        println("done");
        rangeTimer = millis();
      }
    }
  }
}
